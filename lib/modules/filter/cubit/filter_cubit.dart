import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moscow_hack/domain/services/event_bus.dart';
import 'package:moscow_hack/modules/filter/domain/api/filter_api.dart';
import 'package:moscow_hack/modules/filter/domain/models/filter_description.dart';
import 'package:moscow_hack/modules/filter/domain/models/filter_payload.dart';

part 'filter_state.dart';
part 'filter_cubit.freezed.dart';

abstract class FilterCubit extends Cubit<FilterState> {
  final FilterApi _api;
  final EventBus _eventBus;

  void emitFilters(EventBus bus, List<FilterDescription> filters);

  FilterCubit(this._api, this._eventBus) : super(const FilterState.initial()) {
    load();
  }

  Future<void> load() async {
    emit(const _Loading());
    try {
      final response = await _api.getFilterData();
      final data = response.data;
      final filters = [
        FilterDescription.date(displayName: 'Дата', name: 'time', value: DateTime.now()),
        const FilterDescription.switchSlider(
            displayName: 'Тип участия', name: 'participation', items: ['Онлайн', 'Оффлайн']),
        FilterDescription.multiSelect(displayName: 'Теги', name: 'tags', items: data.tags),
        FilterDescription.multiSelect(displayName: 'Роли', name: 'roles', items: data.roles),
        FilterDescription.multiSelect(displayName: 'Навыки', name: 'skills', items: data.skills),
        const FilterDescription.slider(displayName: 'Возраст', name: 'age'),
      ];
      emit(_Loaded(filters: filters));
    } catch (e) {
      emit(const _Loaded());
    }
  }

  void updateFilter(FilterDescription description) {
    final s = state as _Loaded;
    final newFilters = [...s.filters].map((e) {
      if (e.name == description.name) {
        return description;
      }
      return e;
    });
    emitFilters(_eventBus, newFilters.toList());
    emit(_Loaded(filters: newFilters.toList()));
  }
}

class ProjectFilterCubit extends FilterCubit {
  ProjectFilterCubit(super.api, super.eventBus);

  @override
  void emitFilters(EventBus bus, List<FilterDescription> filters) {
    bus.fire(ProjectFilters(filters, null));
  }
}

class NkoFilterCubit extends FilterCubit {
  NkoFilterCubit(super.api, super.eventBus);

  @override
  void emitFilters(EventBus bus, List<FilterDescription> filters) {
    bus.fire(NkoFilters(filters, null));
  }
}
