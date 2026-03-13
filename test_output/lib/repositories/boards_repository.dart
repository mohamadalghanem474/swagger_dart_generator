import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/boards_datasource.dart';
import 'package:test_output/models/boards/responses/boards_index__get_res.dart';
import 'package:test_output/models/boards/responses/boards_active_discussions__get_res.dart';
import 'package:test_output/models/boards/responses/boards_forum_group__get_res.dart';
import 'package:test_output/models/boards/responses/boards_forum__get_res.dart';
import 'package:test_output/models/boards/responses/boards_forum_watch__get_res.dart';
import 'package:test_output/models/boards/responses/boards_topic__get_res.dart';
import 'package:test_output/models/boards/responses/boards_topic_watch__get_res.dart';
import 'package:test_output/models/boards/responses/boards_topic_move__get_res.dart';
import 'package:test_output/models/boards/responses/boards_topic_create__get_res.dart';
import 'package:test_output/models/boards/responses/boards_topic_create__post_res.dart';
import 'package:test_output/models/boards/responses/boards_topic_edit__get_res.dart';
import 'package:test_output/models/boards/responses/boards_topic_edit__post_res.dart';
import 'package:test_output/models/boards/responses/boards_post_delete__delete_res.dart';
import 'package:test_output/models/boards/responses/boards_post_create__get_res.dart';
import 'package:test_output/models/boards/responses/boards_post_create__post_res.dart';
import 'package:test_output/models/boards/responses/boards_post_edit__get_res.dart';
import 'package:test_output/models/boards/responses/boards_post_edit__post_res.dart';
import 'package:test_output/models/boards/responses/boards_search__get_res.dart';
import 'package:test_output/models/boards/responses/boards_customer_forum_subscriptions__get_res.dart';
import 'package:test_output/models/boards/responses/boards_customer_forum_subscriptions_p_o_s_t__post_res.dart';
import 'package:test_output/models/boards/responses/boards_post_vote__get_res.dart';
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

abstract class IBoardsRepository {
  Future<Either<FailureDetails, IndexGetResponse>> indexGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ActiveDiscussionsGetResponse>>
      activeDiscussionsGet(
    ActiveDiscussionsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> activeDiscussionsRssGet(
    ActiveDiscussionsRssGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ForumGroupGetResponse>> forumGroupGet(
    ForumGroupGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ForumGetResponse>> forumGet(
    ForumGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> forumRssGet(
    ForumRssGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ForumWatchGetResponse>> forumWatchGet(
    ForumWatchGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, TopicGetResponse>> topicGet(
    TopicGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, TopicWatchGetResponse>> topicWatchGet(
    TopicWatchGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, TopicMoveGetResponse>> topicMoveGet(
    TopicMoveGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> topicDeleteDelete(
    TopicDeleteDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, TopicCreateGetResponse>> topicCreateGet(
    TopicCreateGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, TopicCreatePostResponse>> topicCreatePost(
    TopicCreatePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, TopicEditGetResponse>> topicEditGet(
    TopicEditGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, TopicEditPostResponse>> topicEditPost(
    TopicEditPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, PostDeleteDeleteResponse>> postDeleteDelete(
    PostDeleteDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, PostCreateGetResponse>> postCreateGet(
    PostCreateGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, PostCreatePostResponse>> postCreatePost(
    PostCreatePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, PostEditGetResponse>> postEditGet(
    PostEditGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, PostEditPostResponse>> postEditPost(
    PostEditPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, SearchGetResponse>> searchGet(
    SearchGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CustomerForumSubscriptionsGetResponse>>
      customerForumSubscriptionsGet(
    CustomerForumSubscriptionsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CustomerForumSubscriptionsPOSTPostResponse>>
      customerForumSubscriptionsPOSTPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, PostVoteGetResponse>> postVoteGet(
    PostVoteGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class BoardsRepositoryImpl implements IBoardsRepository {
  BoardsRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IBoardsDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, IndexGetResponse>> indexGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.indexGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ActiveDiscussionsGetResponse>>
      activeDiscussionsGet(
    ActiveDiscussionsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.activeDiscussionsGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> activeDiscussionsRssGet(
    ActiveDiscussionsRssGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.activeDiscussionsRssGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ForumGroupGetResponse>> forumGroupGet(
    ForumGroupGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.forumGroupGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ForumGetResponse>> forumGet(
    ForumGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.forumGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> forumRssGet(
    ForumRssGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.forumRssGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ForumWatchGetResponse>> forumWatchGet(
    ForumWatchGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.forumWatchGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, TopicGetResponse>> topicGet(
    TopicGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.topicGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, TopicWatchGetResponse>> topicWatchGet(
    TopicWatchGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.topicWatchGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, TopicMoveGetResponse>> topicMoveGet(
    TopicMoveGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.topicMoveGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> topicDeleteDelete(
    TopicDeleteDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.topicDeleteDelete(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, TopicCreateGetResponse>> topicCreateGet(
    TopicCreateGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.topicCreateGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, TopicCreatePostResponse>> topicCreatePost(
    TopicCreatePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.topicCreatePost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, TopicEditGetResponse>> topicEditGet(
    TopicEditGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.topicEditGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, TopicEditPostResponse>> topicEditPost(
    TopicEditPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.topicEditPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, PostDeleteDeleteResponse>> postDeleteDelete(
    PostDeleteDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.postDeleteDelete(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, PostCreateGetResponse>> postCreateGet(
    PostCreateGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.postCreateGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, PostCreatePostResponse>> postCreatePost(
    PostCreatePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.postCreatePost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, PostEditGetResponse>> postEditGet(
    PostEditGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.postEditGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, PostEditPostResponse>> postEditPost(
    PostEditPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.postEditPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, SearchGetResponse>> searchGet(
    SearchGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.searchGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CustomerForumSubscriptionsGetResponse>>
      customerForumSubscriptionsGet(
    CustomerForumSubscriptionsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.customerForumSubscriptionsGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CustomerForumSubscriptionsPOSTPostResponse>>
      customerForumSubscriptionsPOSTPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.customerForumSubscriptionsPOSTPost(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, PostVoteGetResponse>> postVoteGet(
    PostVoteGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.postVoteGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
