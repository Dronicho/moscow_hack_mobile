import 'package:get_it/get_it.dart';

abstract class BaseModule {
  // initialization for repositories and blocs for module
  Future<void> initializeDepencies(GetIt instance );
}
