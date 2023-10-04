// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleDetailsModelImpl _$$ArticleDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ArticleDetailsModelImpl(
      json['title'] as String,
      json['picture'] as String,
      json['content'] as String,
      json['id'] as int,
    );

Map<String, dynamic> _$$ArticleDetailsModelImplToJson(
        _$ArticleDetailsModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'picture': instance.picture,
      'content': instance.content,
      'id': instance.id,
    };
