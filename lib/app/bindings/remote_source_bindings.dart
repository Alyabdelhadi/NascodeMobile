import 'package:get/get.dart';

import '/app/data/remote/nascode_remote_data_source.dart';
import '/app/data/remote/nascode_remote_data_source_impl.dart';

class RemoteSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NascodeRemoteDataSource>(
      () =>NascodeRemoteDataSourceImpl(),
      tag: (NascodeRemoteDataSource).toString(),
    );
  }
}
