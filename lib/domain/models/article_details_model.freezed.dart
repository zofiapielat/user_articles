// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleDetailsModel _$ArticleDetailsModelFromJson(Map<String, dynamic> json) {
  return _ArticleDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ArticleDetailsModel {
  String get title => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleDetailsModelCopyWith<ArticleDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleDetailsModelCopyWith<$Res> {
  factory $ArticleDetailsModelCopyWith(
          ArticleDetailsModel value, $Res Function(ArticleDetailsModel) then) =
      _$ArticleDetailsModelCopyWithImpl<$Res, ArticleDetailsModel>;
  @useResult
  $Res call({String title, String picture, String content, int id});
}

/// @nodoc
class _$ArticleDetailsModelCopyWithImpl<$Res, $Val extends ArticleDetailsModel>
    implements $ArticleDetailsModelCopyWith<$Res> {
  _$ArticleDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? picture = null,
    Object? content = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleDetailsModelImplCopyWith<$Res>
    implements $ArticleDetailsModelCopyWith<$Res> {
  factory _$$ArticleDetailsModelImplCopyWith(_$ArticleDetailsModelImpl value,
          $Res Function(_$ArticleDetailsModelImpl) then) =
      __$$ArticleDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String picture, String content, int id});
}

/// @nodoc
class __$$ArticleDetailsModelImplCopyWithImpl<$Res>
    extends _$ArticleDetailsModelCopyWithImpl<$Res, _$ArticleDetailsModelImpl>
    implements _$$ArticleDetailsModelImplCopyWith<$Res> {
  __$$ArticleDetailsModelImplCopyWithImpl(_$ArticleDetailsModelImpl _value,
      $Res Function(_$ArticleDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? picture = null,
    Object? content = null,
    Object? id = null,
  }) {
    return _then(_$ArticleDetailsModelImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleDetailsModelImpl implements _ArticleDetailsModel {
  _$ArticleDetailsModelImpl(this.title, this.picture, this.content, this.id);

  factory _$ArticleDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleDetailsModelImplFromJson(json);

  @override
  final String title;
  @override
  final String picture;
  @override
  final String content;
  @override
  final int id;

  @override
  String toString() {
    return 'ArticleDetailsModel(title: $title, picture: $picture, content: $content, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleDetailsModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, picture, content, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleDetailsModelImplCopyWith<_$ArticleDetailsModelImpl> get copyWith =>
      __$$ArticleDetailsModelImplCopyWithImpl<_$ArticleDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _ArticleDetailsModel implements ArticleDetailsModel {
  factory _ArticleDetailsModel(final String title, final String picture,
      final String content, final int id) = _$ArticleDetailsModelImpl;

  factory _ArticleDetailsModel.fromJson(Map<String, dynamic> json) =
      _$ArticleDetailsModelImpl.fromJson;

  @override
  String get title;
  @override
  String get picture;
  @override
  String get content;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$ArticleDetailsModelImplCopyWith<_$ArticleDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
