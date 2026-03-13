import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/privatemessages_datasource.dart';
import 'package:test_output/models/privatemessages/responses/privatemessages_index__get_res.dart';
import 'package:test_output/models/privatemessages/responses/privatemessages_send_p_m__get_res.dart';
import 'package:test_output/models/privatemessages/responses/privatemessages_send_p_m__post_res.dart';
import 'package:test_output/models/privatemessages/responses/privatemessages_view_p_m__get_res.dart';
import 'package:test_output/models/privatemessages/requests/privatemessages_index__get_req.dart';
import 'package:test_output/models/privatemessages/requests/privatemessages_send_p_m__get_req.dart';
import 'package:test_output/models/privatemessages/requests/privatemessages_send_p_m__post_req.dart';
import 'package:test_output/models/privatemessages/requests/privatemessages_view_p_m__get_req.dart';
import 'package:test_output/models/privatemessages/requests/privatemessages_delete_p_m__delete_req.dart';

abstract class IPrivatemessagesRepository {
  Future<Either<FailureDetails, IndexGetResponse>> indexGet(
    IndexGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> deleteInboxPMPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> markUnreadPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> deleteSentPMPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, SendPMGetResponse>> sendPMGet(
    SendPMGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, SendPMPostResponse>> sendPMPost(
    SendPMPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ViewPMGetResponse>> viewPMGet(
    ViewPMGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> deletePMDelete(
    DeletePMDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class PrivatemessagesRepositoryImpl implements IPrivatemessagesRepository {
  PrivatemessagesRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IPrivatemessagesDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, IndexGetResponse>> indexGet(
    IndexGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.indexGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> deleteInboxPMPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.deleteInboxPMPost(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> markUnreadPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.markUnreadPost(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> deleteSentPMPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.deleteSentPMPost(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, SendPMGetResponse>> sendPMGet(
    SendPMGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.sendPMGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, SendPMPostResponse>> sendPMPost(
    SendPMPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.sendPMPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ViewPMGetResponse>> viewPMGet(
    ViewPMGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.viewPMGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> deletePMDelete(
    DeletePMDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.deletePMDelete(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
