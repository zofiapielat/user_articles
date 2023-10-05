// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticleDetailsState {
  List<ArticleDetailsModel> get results => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleDetailsStateCopyWith<ArticleDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleDetailsStateCopyWith<$Res> {
  factory $ArticleDetailsStateCopyWith(
          ArticleDetailsState value, $Res Function(ArticleDetailsState) then) =
      _$ArticleDetailsStateCopyWithImpl<$Res, ArticleDetailsState>;
  @useResult
  $Res call(
      {List<ArticleDetailsModel> results, Status status, String? errorMessage});
}

/// @nodoc
class _$ArticleDetailsStateCopyWithImpl<$Res, $Val extends ArticleDetailsState>
    implements $ArticleDetailsStateCopyWith<$Res> {
  _$ArticleDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ArticleDetailsModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleDetailsStateImplCopyWith<$Res>
    implements $ArticleDetailsStateCopyWith<$Res> {
  factory _$$ArticleDetailsStateImplCopyWith(_$ArticleDetailsStateImpl value,
          $Res Function(_$ArticleDetailsStateImpl) then) =
      __$$ArticleDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ArticleDetailsModel> results, Status status, String? errorMessage});
}

/// @nodoc
class __$$ArticleDetailsStateImplCopyWithImpl<$Res>
    extends _$ArticleDetailsStateCopyWithImpl<$Res, _$ArticleDetailsStateImpl>
    implements _$$ArticleDetailsStateImplCopyWith<$Res> {
  __$$ArticleDetailsStateImplCopyWithImpl(_$ArticleDetailsStateImpl _value,
      $Res Function(_$ArticleDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ArticleDetailsStateImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ArticleDetailsModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ArticleDetailsStateImpl implements _ArticleDetailsState {
  const _$ArticleDetailsStateImpl(
      {final List<ArticleDetailsModel> results = const [],
      this.status = Status.initial,
      this.errorMessage})
      : _results = results;

  final List<ArticleDetailsModel> _results;
  @override
  @JsonKey()
  List<ArticleDetailsModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ArticleDetailsState(results: $results, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleDetailsStateImpl &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_results), status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleDetailsStateImplCopyWith<_$ArticleDetailsStateImpl> get copyWith =>
      __$$ArticleDetailsStateImplCopyWithImpl<_$ArticleDetailsStateImpl>(
          this, _$identity);
}

abstract class _ArticleDetailsState implements ArticleDetailsState {
  const factory _ArticleDetailsState(
      {final List<ArticleDetailsModel> results,
      final Status status,
      final String? errorMessage}) = _$ArticleDetailsStateImpl;

  @override
  List<ArticleDetailsModel> get results;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ArticleDetailsStateImplCopyWith<_$ArticleDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
