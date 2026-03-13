import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class RunTaskGetRequest extends Equatable {
  const RunTaskGetRequest({this.tasktype});

  final String? tasktype;

  static RunTaskGetRequest fromJson(Map<String, dynamic> json) {
    return RunTaskGetRequest(
        tasktype:
            json['tasktype'] == null ? null : (json['tasktype'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'tasktype': tasktype};
  }

  RunTaskGetRequest copyWith({String? tasktype}) {
    return RunTaskGetRequest(tasktype: tasktype ?? this.tasktype);
  }

  @override
  List<Object?> get props {
    return [tasktype];
  }

  @override
  bool get stringify {
    return true;
  }
}
