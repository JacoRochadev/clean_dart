import 'package:clean_dart/modules/search/domain/entities/result_search.dart';
import 'package:clean_dart/modules/search/domain/errors/errors.dart';
import 'package:clean_dart/modules/search/domain/repositories/search_repository.dart';
import 'package:dartz/dartz.dart';

abstract class SearchByText {
  Future<Either<FailureSearch, List<ResultSearch>?>> call(String searchText);
}

class SearchByTextImpl implements SearchByText {
  final SearchRepository repository;

  SearchByTextImpl(this.repository);
  @override
  Future<Either<FailureSearch, List<ResultSearch>?>> call(
      String searchText) async {
    return repository.search(searchText);
  }
}
