import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/boards/responses/boards_index__get_res.dart';
import 'package:test_output/models/boards/requests/boards_active_discussions__get_req.dart';
import 'package:test_output/models/boards/responses/boards_active_discussions__get_res.dart';
import 'package:test_output/models/boards/requests/boards_active_discussions_rss__get_req.dart';
import 'package:test_output/models/boards/requests/boards_forum_group__get_req.dart';
import 'package:test_output/models/boards/responses/boards_forum_group__get_res.dart';
import 'package:test_output/models/boards/requests/boards_forum__get_req.dart';
import 'package:test_output/models/boards/responses/boards_forum__get_res.dart';
import 'package:test_output/models/boards/requests/boards_forum_rss__get_req.dart';
import 'package:test_output/models/boards/requests/boards_forum_watch__get_req.dart';
import 'package:test_output/models/boards/responses/boards_forum_watch__get_res.dart';
import 'package:test_output/models/boards/requests/boards_topic__get_req.dart';
import 'package:test_output/models/boards/responses/boards_topic__get_res.dart';
import 'package:test_output/models/boards/requests/boards_topic_watch__get_req.dart';
import 'package:test_output/models/boards/responses/boards_topic_watch__get_res.dart';
import 'package:test_output/models/boards/requests/boards_topic_move__get_req.dart';
import 'package:test_output/models/boards/responses/boards_topic_move__get_res.dart';
import 'package:test_output/models/boards/requests/boards_topic_delete__delete_req.dart';
import 'package:test_output/models/boards/requests/boards_topic_create__get_req.dart';
import 'package:test_output/models/boards/responses/boards_topic_create__get_res.dart';
import 'package:test_output/models/boards/requests/boards_topic_create__post_req.dart';
import 'package:test_output/models/boards/responses/boards_topic_create__post_res.dart';
import 'package:test_output/models/boards/requests/boards_topic_edit__get_req.dart';
import 'package:test_output/models/boards/responses/boards_topic_edit__get_res.dart';
import 'package:test_output/models/boards/requests/boards_topic_edit__post_req.dart';
import 'package:test_output/models/boards/responses/boards_topic_edit__post_res.dart';
import 'package:test_output/models/boards/requests/boards_post_delete__delete_req.dart';
import 'package:test_output/models/boards/responses/boards_post_delete__delete_res.dart';
import 'package:test_output/models/boards/requests/boards_post_create__get_req.dart';
import 'package:test_output/models/boards/responses/boards_post_create__get_res.dart';
import 'package:test_output/models/boards/requests/boards_post_create__post_req.dart';
import 'package:test_output/models/boards/responses/boards_post_create__post_res.dart';
import 'package:test_output/models/boards/requests/boards_post_edit__get_req.dart';
import 'package:test_output/models/boards/responses/boards_post_edit__get_res.dart';
import 'package:test_output/models/boards/requests/boards_post_edit__post_req.dart';
import 'package:test_output/models/boards/responses/boards_post_edit__post_res.dart';
import 'package:test_output/models/boards/requests/boards_search__get_req.dart';
import 'package:test_output/models/boards/responses/boards_search__get_res.dart';
import 'package:test_output/models/boards/requests/boards_customer_forum_subscriptions__get_req.dart';
import 'package:test_output/models/boards/responses/boards_customer_forum_subscriptions__get_res.dart';
import 'package:test_output/models/boards/responses/boards_customer_forum_subscriptions_p_o_s_t__post_res.dart';
import 'package:test_output/models/boards/requests/boards_post_vote__get_req.dart';
import 'package:test_output/models/boards/responses/boards_post_vote__get_res.dart';

abstract class IBoardsDataSource {
  Future<IndexGetResponse> indexGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ActiveDiscussionsGetResponse> activeDiscussionsGet(
    ActiveDiscussionsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> activeDiscussionsRssGet(
    ActiveDiscussionsRssGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ForumGroupGetResponse> forumGroupGet(
    ForumGroupGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ForumGetResponse> forumGet(
    ForumGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> forumRssGet(
    ForumRssGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ForumWatchGetResponse> forumWatchGet(
    ForumWatchGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<TopicGetResponse> topicGet(
    TopicGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<TopicWatchGetResponse> topicWatchGet(
    TopicWatchGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<TopicMoveGetResponse> topicMoveGet(
    TopicMoveGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> topicDeleteDelete(
    TopicDeleteDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<TopicCreateGetResponse> topicCreateGet(
    TopicCreateGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<TopicCreatePostResponse> topicCreatePost(
    TopicCreatePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<TopicEditGetResponse> topicEditGet(
    TopicEditGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<TopicEditPostResponse> topicEditPost(
    TopicEditPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<PostDeleteDeleteResponse> postDeleteDelete(
    PostDeleteDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<PostCreateGetResponse> postCreateGet(
    PostCreateGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<PostCreatePostResponse> postCreatePost(
    PostCreatePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<PostEditGetResponse> postEditGet(
    PostEditGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<PostEditPostResponse> postEditPost(
    PostEditPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<SearchGetResponse> searchGet(
    SearchGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CustomerForumSubscriptionsGetResponse> customerForumSubscriptionsGet(
    CustomerForumSubscriptionsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CustomerForumSubscriptionsPOSTPostResponse>
      customerForumSubscriptionsPOSTPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<PostVoteGetResponse> postVoteGet(
    PostVoteGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class BoardsDataSourceImpl implements IBoardsDataSource {
  BoardsDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<IndexGetResponse> indexGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.boards.indexGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return IndexGetResponse.fromJson(result.data);
  }

  @override
  Future<ActiveDiscussionsGetResponse> activeDiscussionsGet(
    ActiveDiscussionsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.boards.activeDiscussionsGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return ActiveDiscussionsGetResponse.fromJson(result.data);
  }

  @override
  Future<void> activeDiscussionsRssGet(
    ActiveDiscussionsRssGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.boards.activeDiscussionsRssGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<ForumGroupGetResponse> forumGroupGet(
    ForumGroupGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.boards.forumGroupGet;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return ForumGroupGetResponse.fromJson(result.data);
  }

  @override
  Future<ForumGetResponse> forumGet(
    ForumGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.boards.forumGet;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return ForumGetResponse.fromJson(result.data);
  }

  @override
  Future<void> forumRssGet(
    ForumRssGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.boards.forumRssGet;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<ForumWatchGetResponse> forumWatchGet(
    ForumWatchGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.boards.forumWatchGet;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return ForumWatchGetResponse.fromJson(result.data);
  }

  @override
  Future<TopicGetResponse> topicGet(
    TopicGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.boards.topicGet;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return TopicGetResponse.fromJson(result.data);
  }

  @override
  Future<TopicWatchGetResponse> topicWatchGet(
    TopicWatchGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.boards.topicWatchGet;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return TopicWatchGetResponse.fromJson(result.data);
  }

  @override
  Future<TopicMoveGetResponse> topicMoveGet(
    TopicMoveGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.boards.topicMoveGet;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return TopicMoveGetResponse.fromJson(result.data);
  }

  @override
  Future<void> topicDeleteDelete(
    TopicDeleteDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.boards.topicDeleteDelete;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    await _dio.delete(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<TopicCreateGetResponse> topicCreateGet(
    TopicCreateGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.boards.topicCreateGet;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return TopicCreateGetResponse.fromJson(result.data);
  }

  @override
  Future<TopicCreatePostResponse> topicCreatePost(
    TopicCreatePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.boards.topicCreatePost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return TopicCreatePostResponse.fromJson(result.data);
  }

  @override
  Future<TopicEditGetResponse> topicEditGet(
    TopicEditGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.boards.topicEditGet;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return TopicEditGetResponse.fromJson(result.data);
  }

  @override
  Future<TopicEditPostResponse> topicEditPost(
    TopicEditPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.boards.topicEditPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return TopicEditPostResponse.fromJson(result.data);
  }

  @override
  Future<PostDeleteDeleteResponse> postDeleteDelete(
    PostDeleteDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.boards.postDeleteDelete;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    final result = await _dio.delete(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return PostDeleteDeleteResponse.fromJson(result.data);
  }

  @override
  Future<PostCreateGetResponse> postCreateGet(
    PostCreateGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.boards.postCreateGet;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    url = url.replaceAll(
      '{quote}',
      req.quote?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return PostCreateGetResponse.fromJson(result.data);
  }

  @override
  Future<PostCreatePostResponse> postCreatePost(
    PostCreatePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.boards.postCreatePost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return PostCreatePostResponse.fromJson(result.data);
  }

  @override
  Future<PostEditGetResponse> postEditGet(
    PostEditGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.boards.postEditGet;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return PostEditGetResponse.fromJson(result.data);
  }

  @override
  Future<PostEditPostResponse> postEditPost(
    PostEditPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.boards.postEditPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return PostEditPostResponse.fromJson(result.data);
  }

  @override
  Future<SearchGetResponse> searchGet(
    SearchGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.boards.searchGet;
    url = url.replaceAll(
      '{forumId}',
      req.forumid?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return SearchGetResponse.fromJson(result.data);
  }

  @override
  Future<CustomerForumSubscriptionsGetResponse> customerForumSubscriptionsGet(
    CustomerForumSubscriptionsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.boards.customerForumSubscriptionsGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return CustomerForumSubscriptionsGetResponse.fromJson(result.data);
  }

  @override
  Future<CustomerForumSubscriptionsPOSTPostResponse>
      customerForumSubscriptionsPOSTPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.boards.customerForumSubscriptionsPOSTPost;
    final result = await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return CustomerForumSubscriptionsPOSTPostResponse.fromJson(result.data);
  }

  @override
  Future<PostVoteGetResponse> postVoteGet(
    PostVoteGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.boards.postVoteGet;
    url = url.replaceAll(
      '{postId}',
      req.postid?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return PostVoteGetResponse.fromJson(result.data);
  }
}
