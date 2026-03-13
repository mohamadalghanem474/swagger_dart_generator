import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/news_datasource.dart';
import 'package:test_output/models/news/responses/news_list__post_res.dart';
import 'package:test_output/models/news/responses/news_get_news_item__get_res.dart';
import 'package:test_output/models/news/requests/news_list__post_req.dart';
import 'package:test_output/models/news/requests/news_list_rss__get_req.dart';
import 'package:test_output/models/news/requests/news_get_news_item__get_req.dart';
import 'package:test_output/models/news/requests/news_news_comment_add__post_req.dart';

abstract class INewsRepository {
  Future<Either<FailureDetails, ListPostResponse>> listPost(
    ListPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> listRssGet(
    ListRssGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, GetNewsItemGetResponse>> getNewsItemGet(
    GetNewsItemGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> newsCommentAddPost(
    NewsCommentAddPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class NewsRepositoryImpl implements INewsRepository {
  NewsRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final INewsDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, ListPostResponse>> listPost(
    ListPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.listPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> listRssGet(
    ListRssGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.listRssGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, GetNewsItemGetResponse>> getNewsItemGet(
    GetNewsItemGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.getNewsItemGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> newsCommentAddPost(
    NewsCommentAddPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.newsCommentAddPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
