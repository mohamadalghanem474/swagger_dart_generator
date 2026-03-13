import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/blog_repository.dart';
import 'package:test_output/models/blog/requests/blog_list__post_req.dart';
import 'package:test_output/models/blog/requests/blog_blog_by_tag__post_req.dart';
import 'package:test_output/models/blog/requests/blog_blog_by_month__post_req.dart';
import 'package:test_output/models/blog/requests/blog_list_rss__get_req.dart';
import 'package:test_output/models/blog/requests/blog_get_blog_post__get_req.dart';
import 'package:test_output/models/blog/requests/blog_blog_comment_add__post_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Blog Tests', () {
    test('listPost should return Right', () async {
      final req = ListPostRequest();
      final result = await api.blog.listPost(req);
      expect(result.isRight(), isTrue);
    });

    test('blogByTagPost should return Right', () async {
      final req = BlogByTagPostRequest();
      final result = await api.blog.blogByTagPost(req);
      expect(result.isRight(), isTrue);
    });

    test('blogByMonthPost should return Right', () async {
      final req = BlogByMonthPostRequest();
      final result = await api.blog.blogByMonthPost(req);
      expect(result.isRight(), isTrue);
    });

    test('listRssGet should return Right', () async {
      final req = ListRssGetRequest();
      final result = await api.blog.listRssGet(req);
      expect(result.isRight(), isTrue);
    });

    test('getBlogPostGet should return Right', () async {
      final req = GetBlogPostGetRequest();
      final result = await api.blog.getBlogPostGet(req);
      expect(result.isRight(), isTrue);
    });

    test('blogCommentAddPost should return Right', () async {
      final req = BlogCommentAddPostRequest();
      final result = await api.blog.blogCommentAddPost(req);
      expect(result.isRight(), isTrue);
    });
  });
}
