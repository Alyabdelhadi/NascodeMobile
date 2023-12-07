import 'package:get/get.dart';

import '/app/data/repository/nacode_repository.dart';
import '/app/data/repository/nascode_repository_impl.dart';

class RepositoryBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NascodeRepository>(
      () => NascodeRepositoryImpl(),
      tag: (NascodeRepository).toString(),
    );
  }
}
