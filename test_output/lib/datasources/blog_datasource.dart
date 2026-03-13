import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/blog/requests/blog_list__post_req.dart';
import 'package:test_output/models/blog/responses/blog_list__post_res.dart';
import 'package:test_output/models/blog/requests/blog_blog_by_tag__post_req.dart';
import 'package:test_output/models/blog/responses/blog_blog_by_tag__post_res.dart';
import 'package:test_output/models/blog/requests/blog_blog_by_month__post_req.dart';
import 'package:test_output/models/blog/responses/blog_blog_by_month__post_res.dart';
import 'package:test_output/models/blog/requests/blog_list_rss__get_req.dart';
import 'package:test_output/models/blog/requests/blog_get_blog_post__get_req.dart';
import 'package:test_output/models/blog/responses/blog_get_blog_post__get_res.dart';
import 'package:test_output/models/blog/requests/blog_blog_comment_add__post_req.dart';

abstract class IBlogDataSource {
  Future<ListPostResponse> listPost(
    ListPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<BlogByTagPostResponse> blogByTagPost(
    BlogByTagPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<BlogByMonthPostResponse> blogByMonthPost(
    BlogByMonthPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> listRssGet(
    ListRssGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<GetBlogPostGetResponse> getBlogPostGet(
    GetBlogPostGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> blogCommentAddPost(
    BlogCommentAddPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class BlogDataSourceImpl implements IBlogDataSource {
  BlogDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<ListPostResponse> listPost(
    ListPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.blog.listPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return ListPostResponse.fromJson(result.data);
  }

  @override
  Future<BlogByTagPostResponse> blogByTagPost(
    BlogByTagPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.blog.blogByTagPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return BlogByTagPostResponse.fromJson(result.data);
  }

  @override
  Future<BlogByMonthPostResponse> blogByMonthPost(
    BlogByMonthPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.blog.blogByMonthPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return BlogByMonthPostResponse.fromJson(result.data);
  }

  @override
  Future<void> listRssGet(
    ListRssGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.blog.listRssGet;
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
  Future<GetBlogPostGetResponse> getBlogPostGet(
    GetBlogPostGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.blog.getBlogPostGet;
    url = url.replaceAll(
      '{blogPostId}',
      req.blogpostid?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return GetBlogPostGetResponse.fromJson(result.data);
  }

  @override
  Future<void> blogCommentAddPost(
    BlogCommentAddPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.blog.blogCommentAddPost;
    url = url.replaceAll(
      '{blogPostId}',
      req.blogpostid?.toString() ?? '',
    );
    await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }
}
