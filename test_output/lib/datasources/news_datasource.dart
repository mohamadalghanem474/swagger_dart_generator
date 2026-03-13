import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/news/requests/news_list__post_req.dart';
import 'package:test_output/models/news/responses/news_list__post_res.dart';
import 'package:test_output/models/news/requests/news_list_rss__get_req.dart';
import 'package:test_output/models/news/requests/news_get_news_item__get_req.dart';
import 'package:test_output/models/news/responses/news_get_news_item__get_res.dart';
import 'package:test_output/models/news/requests/news_news_comment_add__post_req.dart';

abstract class INewsDataSource {
  Future<ListPostResponse> listPost(
    ListPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> listRssGet(
    ListRssGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<GetNewsItemGetResponse> getNewsItemGet(
    GetNewsItemGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> newsCommentAddPost(
    NewsCommentAddPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class NewsDataSourceImpl implements INewsDataSource {
  NewsDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<ListPostResponse> listPost(
    ListPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.news.listPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return ListPostResponse.fromJson(result.data);
  }

  @override
  Future<void> listRssGet(
    ListRssGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.news.listRssGet;
    url = url.replaceAll(
      '{languageId}',
      req.languageid?.toString() ?? '',
    );
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<GetNewsItemGetResponse> getNewsItemGet(
    GetNewsItemGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.news.getNewsItemGet;
    url = url.replaceAll(
      '{newsItemId}',
      req.newsitemid?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return GetNewsItemGetResponse.fromJson(result.data);
  }

  @override
  Future<void> newsCommentAddPost(
    NewsCommentAddPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.news.newsCommentAddPost;
    url = url.replaceAll(
      '{newsItemId}',
      req.newsitemid?.toString() ?? '',
    );
    await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }
}
