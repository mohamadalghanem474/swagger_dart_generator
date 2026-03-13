import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/boards_repository.dart';
import 'package:test_output/models/boards/requests/boards_active_discussions__get_req.dart';
import 'package:test_output/models/boards/requests/boards_active_discussions_rss__get_req.dart';
import 'package:test_output/models/boards/requests/boards_forum_group__get_req.dart';
import 'package:test_output/models/boards/requests/boards_forum__get_req.dart';
import 'package:test_output/models/boards/requests/boards_forum_rss__get_req.dart';
import 'package:test_output/models/boards/requests/boards_forum_watch__get_req.dart';
import 'package:test_output/models/boards/requests/boards_topic__get_req.dart';
import 'package:test_output/models/boards/requests/boards_topic_watch__get_req.dart';
import 'package:test_output/models/boards/requests/boards_topic_move__get_req.dart';
import 'package:test_output/models/boards/requests/boards_topic_delete__delete_req.dart';
import 'package:test_output/models/boards/requests/boards_topic_create__get_req.dart';
import 'package:test_output/models/boards/requests/boards_topic_create__post_req.dart';
import 'package:test_output/models/boards/requests/boards_topic_edit__get_req.dart';
import 'package:test_output/models/boards/requests/boards_topic_edit__post_req.dart';
import 'package:test_output/models/boards/requests/boards_post_delete__delete_req.dart';
import 'package:test_output/models/boards/requests/boards_post_create__get_req.dart';
import 'package:test_output/models/boards/requests/boards_post_create__post_req.dart';
import 'package:test_output/models/boards/requests/boards_post_edit__get_req.dart';
import 'package:test_output/models/boards/requests/boards_post_edit__post_req.dart';
import 'package:test_output/models/boards/requests/boards_search__get_req.dart';
import 'package:test_output/models/boards/requests/boards_customer_forum_subscriptions__get_req.dart';
import 'package:test_output/models/boards/requests/boards_post_vote__get_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Boards Tests', () {
    test('indexGet should return Right', () async {
      final result = await api.boards.indexGet();
      expect(result.isRight(), isTrue);
    });

    test('activeDiscussionsGet should return Right', () async {
      final req = ActiveDiscussionsGetRequest();
      final result = await api.boards.activeDiscussionsGet(req);
      expect(result.isRight(), isTrue);
    });

    test('activeDiscussionsRssGet should return Right', () async {
      final req = ActiveDiscussionsRssGetRequest();
      final result = await api.boards.activeDiscussionsRssGet(req);
      expect(result.isRight(), isTrue);
    });

    test('forumGroupGet should return Right', () async {
      final req = ForumGroupGetRequest();
      final result = await api.boards.forumGroupGet(req);
      expect(result.isRight(), isTrue);
    });

    test('forumGet should return Right', () async {
      final req = ForumGetRequest();
      final result = await api.boards.forumGet(req);
      expect(result.isRight(), isTrue);
    });

    test('forumRssGet should return Right', () async {
      final req = ForumRssGetRequest();
      final result = await api.boards.forumRssGet(req);
      expect(result.isRight(), isTrue);
    });

    test('forumWatchGet should return Right', () async {
      final req = ForumWatchGetRequest();
      final result = await api.boards.forumWatchGet(req);
      expect(result.isRight(), isTrue);
    });

    test('topicGet should return Right', () async {
      final req = TopicGetRequest();
      final result = await api.boards.topicGet(req);
      expect(result.isRight(), isTrue);
    });

    test('topicWatchGet should return Right', () async {
      final req = TopicWatchGetRequest();
      final result = await api.boards.topicWatchGet(req);
      expect(result.isRight(), isTrue);
    });

    test('topicMoveGet should return Right', () async {
      final req = TopicMoveGetRequest();
      final result = await api.boards.topicMoveGet(req);
      expect(result.isRight(), isTrue);
    });

    test('topicDeleteDelete should return Right', () async {
      final req = TopicDeleteDeleteRequest();
      final result = await api.boards.topicDeleteDelete(req);
      expect(result.isRight(), isTrue);
    });

    test('topicCreateGet should return Right', () async {
      final req = TopicCreateGetRequest();
      final result = await api.boards.topicCreateGet(req);
      expect(result.isRight(), isTrue);
    });

    test('topicCreatePost should return Right', () async {
      final req = TopicCreatePostRequest();
      final result = await api.boards.topicCreatePost(req);
      expect(result.isRight(), isTrue);
    });

    test('topicEditGet should return Right', () async {
      final req = TopicEditGetRequest();
      final result = await api.boards.topicEditGet(req);
      expect(result.isRight(), isTrue);
    });

    test('topicEditPost should return Right', () async {
      final req = TopicEditPostRequest();
      final result = await api.boards.topicEditPost(req);
      expect(result.isRight(), isTrue);
    });

    test('postDeleteDelete should return Right', () async {
      final req = PostDeleteDeleteRequest();
      final result = await api.boards.postDeleteDelete(req);
      expect(result.isRight(), isTrue);
    });

    test('postCreateGet should return Right', () async {
      final req = PostCreateGetRequest();
      final result = await api.boards.postCreateGet(req);
      expect(result.isRight(), isTrue);
    });

    test('postCreatePost should return Right', () async {
      final req = PostCreatePostRequest();
      final result = await api.boards.postCreatePost(req);
      expect(result.isRight(), isTrue);
    });

    test('postEditGet should return Right', () async {
      final req = PostEditGetRequest();
      final result = await api.boards.postEditGet(req);
      expect(result.isRight(), isTrue);
    });

    test('postEditPost should return Right', () async {
      final req = PostEditPostRequest();
      final result = await api.boards.postEditPost(req);
      expect(result.isRight(), isTrue);
    });

    test('searchGet should return Right', () async {
      final req = SearchGetRequest();
      final result = await api.boards.searchGet(req);
      expect(result.isRight(), isTrue);
    });

    test('customerForumSubscriptionsGet should return Right', () async {
      final req = CustomerForumSubscriptionsGetRequest();
      final result = await api.boards.customerForumSubscriptionsGet(req);
      expect(result.isRight(), isTrue);
    });

    test('customerForumSubscriptionsPOSTPost should return Right', () async {
      final result = await api.boards.customerForumSubscriptionsPOSTPost();
      expect(result.isRight(), isTrue);
    });

    test('postVoteGet should return Right', () async {
      final req = PostVoteGetRequest();
      final result = await api.boards.postVoteGet(req);
      expect(result.isRight(), isTrue);
    });
  });
}
