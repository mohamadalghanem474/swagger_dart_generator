import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/blog_datasource.dart';
import 'package:test_output/models/blog/responses/blog_list__post_res.dart';
import 'package:test_output/models/blog/responses/blog_blog_by_tag__post_res.dart';
import 'package:test_output/models/blog/responses/blog_blog_by_month__post_res.dart';
import 'package:test_output/models/blog/responses/blog_get_blog_post__get_res.dart';
import 'package:test_output/models/blog/requests/blog_list__post_req.dart';
import 'package:test_output/models/blog/requests/blog_blog_by_tag__post_req.dart';
import 'package:test_output/models/blog/requests/blog_blog_by_month__post_req.dart';
import 'package:test_output/models/blog/requests/blog_list_rss__get_req.dart';
import 'package:test_output/models/blog/requests/blog_get_blog_post__get_req.dart';
import 'package:test_output/models/blog/requests/blog_blog_comment_add__post_req.dart';

abstract class IBlogRepository {
  Future<Either<FailureDetails, ListPostResponse>> listPost(
    ListPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, BlogByTagPostResponse>> blogByTagPost(
    BlogByTagPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, BlogByMonthPostResponse>> blogByMonthPost(
    BlogByMonthPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> listRssGet(
    ListRssGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, GetBlogPostGetResponse>> getBlogPostGet(
    GetBlogPostGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> blogCommentAddPost(
    BlogCommentAddPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class BlogRepositoryImpl implements IBlogRepository {
  BlogRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IBlogDataSource _dataSource;

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
  Future<Either<FailureDetails, BlogByTagPostResponse>> blogByTagPost(
    BlogByTagPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.blogByTagPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, BlogByMonthPostResponse>> blogByMonthPost(
    BlogByMonthPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.blogByMonthPost(req,
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
  Future<Either<FailureDetails, GetBlogPostGetResponse>> getBlogPostGet(
    GetBlogPostGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.getBlogPostGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> blogCommentAddPost(
    BlogCommentAddPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.blogCommentAddPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
