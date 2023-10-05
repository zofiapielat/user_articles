// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleModelImpl _$$ArticleModelImplFromJson(Map<String, dynamic> json) =>
    _$ArticleModelImpl(
      json['author_id'] as int,
      json['content'] as String,
      json['picture'] as String,
      json['title'] as String,
      json['id'] as int,
    );

Map<String, dynamic> _$$ArticleModelImplToJson(_$ArticleModelImpl instance) =>
    <String, dynamic>{
      'author_id': instance.authorId,
      'content': instance.content,
      'picture': instance.picture,
      'title': instance.title,
      'id': instance.id,
    };
