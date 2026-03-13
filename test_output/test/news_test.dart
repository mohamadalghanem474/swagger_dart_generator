import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/news_repository.dart';
import 'package:test_output/models/news/requests/news_list__post_req.dart';
import 'package:test_output/models/news/requests/news_list_rss__get_req.dart';
import 'package:test_output/models/news/requests/news_get_news_item__get_req.dart';
import 'package:test_output/models/news/requests/news_news_comment_add__post_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('News Tests', () {
    test('listPost should return Right', () async {
      final req = ListPostRequest();
      final result = await api.news.listPost(req);
      expect(result.isRight(), isTrue);
    });

    test('listRssGet should return Right', () async {
      final req = ListRssGetRequest();
      final result = await api.news.listRssGet(req);
      expect(result.isRight(), isTrue);
    });

    test('getNewsItemGet should return Right', () async {
      final req = GetNewsItemGetRequest();
      final result = await api.news.getNewsItemGet(req);
      expect(result.isRight(), isTrue);
    });

    test('newsCommentAddPost should return Right', () async {
      final req = NewsCommentAddPostRequest();
      final result = await api.news.newsCommentAddPost(req);
      expect(result.isRight(), isTrue);
    });
  });
}
