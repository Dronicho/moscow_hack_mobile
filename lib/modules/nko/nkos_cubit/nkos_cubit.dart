import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moscow_hack/domain/repositories/base_repository.dart';
import 'package:moscow_hack/domain/services/event_bus.dart';
import 'package:moscow_hack/modules/filter/domain/models/filter_description.dart';
import 'package:moscow_hack/modules/filter/domain/models/filter_payload.dart';
import 'package:moscow_hack/modules/nko/domain/models/nko_model.dart';
import 'package:moscow_hack/modules/nko/domain/nko_api.dart';
import 'package:rxdart/transformers.dart';

part 'nkos_state.dart';
part 'nkos_cubit.freezed.dart';

class NkosCubit extends Cubit<NkosState> {
  final NkoApi _api;
  final BaseRepository<NkoModel> _repository;
  final EventBus _eventBus;

  late StreamSubscription _sub;

  List<FilterDescription> _filters = [];
  String? _name;

  NkosCubit(this._api, this._repository, this._eventBus) : super(const NkosState.initial()) {
    load();
    _sub = _eventBus.on<NkoFilters>().debounceTime(const Duration(milliseconds: 500)).listen((data) {
      _filters = data.filter ?? _filters;
      _name = data.search ?? _name;
      load();
    });
  }


  Future<void> load() async {
    emit(const NkosState.loading());
    try {
      final query = <String, dynamic>{};
      for (var filter in _filters) {
        if (!filter.isEmply) {
          if (filter.name == 'time') {
            query[filter.name] = (filter.value as DateTime).toUtc().toIso8601String();
          } else {
            query[filter.name] = filter.value;
          }
        }
      }
      if (_name != null && _name!.isNotEmpty) {
        query['search_query'] = _name;
      }
      String queryString = Uri.https('example.org', '/path', query).query;

      final response = await _api.getAll(queryString);
      if (response.isSuccess) {
        for (var e in response.data) {
          _repository.addModel(e.id, e);
        }
        emit(NkosState.loaded(projects: response.data));
      }
    } catch (_) {
      emit(const NkosState.error());
    }
  }

}
