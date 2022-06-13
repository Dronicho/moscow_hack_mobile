import 'package:flutter/material.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/domain/repositories/base_remote_repository.dart';

class BaseRepository<T> {
  final BaseRemoteRepository<T> _api = get();

  @protected
  final _data = <String, T>{};

  void addModel(String key, T data) {
    _data[key] = data;
  }

  Future<T?> getModel(String id) async {
    if (_data.containsKey(id)) {
      return _data[id] as T;
    }
    try {
      final data = await _api.getModel(id);
      if (data != null) {
        _data[id] = data;
      }
      return data;
    } catch (_) {
      return null;
    }
  }
}
