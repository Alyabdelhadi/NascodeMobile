import 'package:get/get.dart';

import '/app/core/model/github_search_query_param.dart';
import '/app/data/model/github_project_search_response.dart';
import '/app/data/remote/nascode_remote_data_source.dart';
import '/app/data/repository/nacode_repository.dart';

class NascodeRepositoryImpl implements NascodeRepository {
  final  NascodeRemoteDataSource _remoteSource =
      Get.find(tag: ( NascodeRemoteDataSource).toString());

  @override
  Future<GithubProjectSearchResponse> searchProject(
      GithubSearchQueryParam queryParam) {
    return _remoteSource.searchGithubProject(queryParam);
  }

  @override
  Future<Item> getProject(String userName, String repositoryName) {
    return _remoteSource.getGithubProjectDetails(userName, repositoryName);
  }
}
