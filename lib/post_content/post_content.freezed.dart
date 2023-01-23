// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostContent _$PostContentFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'text':
      return _PostContentKrapiText.fromJson(json);
    case 'image':
      return _PostContentKrapiImage.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'PostContent', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$PostContent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String link) image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? text,
    TResult? Function(String link)? image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String link)? image,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostContentKrapiText value) text,
    required TResult Function(_PostContentKrapiImage value) image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostContentKrapiText value)? text,
    TResult? Function(_PostContentKrapiImage value)? image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostContentKrapiText value)? text,
    TResult Function(_PostContentKrapiImage value)? image,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostContentCopyWith<$Res> {
  factory $PostContentCopyWith(
          PostContent value, $Res Function(PostContent) then) =
      _$PostContentCopyWithImpl<$Res, PostContent>;
}

/// @nodoc
class _$PostContentCopyWithImpl<$Res, $Val extends PostContent>
    implements $PostContentCopyWith<$Res> {
  _$PostContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PostContentKrapiTextCopyWith<$Res> {
  factory _$$_PostContentKrapiTextCopyWith(_$_PostContentKrapiText value,
          $Res Function(_$_PostContentKrapiText) then) =
      __$$_PostContentKrapiTextCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_PostContentKrapiTextCopyWithImpl<$Res>
    extends _$PostContentCopyWithImpl<$Res, _$_PostContentKrapiText>
    implements _$$_PostContentKrapiTextCopyWith<$Res> {
  __$$_PostContentKrapiTextCopyWithImpl(_$_PostContentKrapiText _value,
      $Res Function(_$_PostContentKrapiText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_PostContentKrapiText(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostContentKrapiText implements _PostContentKrapiText {
  const _$_PostContentKrapiText(this.text, {final String? $type})
      : $type = $type ?? 'text';

  factory _$_PostContentKrapiText.fromJson(Map<String, dynamic> json) =>
      _$$_PostContentKrapiTextFromJson(json);

  @override
  final String text;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'PostContent.text(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostContentKrapiText &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostContentKrapiTextCopyWith<_$_PostContentKrapiText> get copyWith =>
      __$$_PostContentKrapiTextCopyWithImpl<_$_PostContentKrapiText>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String link) image,
  }) {
    return text(this.text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? text,
    TResult? Function(String link)? image,
  }) {
    return text?.call(this.text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String link)? image,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this.text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostContentKrapiText value) text,
    required TResult Function(_PostContentKrapiImage value) image,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostContentKrapiText value)? text,
    TResult? Function(_PostContentKrapiImage value)? image,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostContentKrapiText value)? text,
    TResult Function(_PostContentKrapiImage value)? image,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostContentKrapiTextToJson(
      this,
    );
  }
}

abstract class _PostContentKrapiText implements PostContent {
  const factory _PostContentKrapiText(final String text) =
      _$_PostContentKrapiText;

  factory _PostContentKrapiText.fromJson(Map<String, dynamic> json) =
      _$_PostContentKrapiText.fromJson;

  String get text;
  @JsonKey(ignore: true)
  _$$_PostContentKrapiTextCopyWith<_$_PostContentKrapiText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PostContentKrapiImageCopyWith<$Res> {
  factory _$$_PostContentKrapiImageCopyWith(_$_PostContentKrapiImage value,
          $Res Function(_$_PostContentKrapiImage) then) =
      __$$_PostContentKrapiImageCopyWithImpl<$Res>;
  @useResult
  $Res call({String link});
}

/// @nodoc
class __$$_PostContentKrapiImageCopyWithImpl<$Res>
    extends _$PostContentCopyWithImpl<$Res, _$_PostContentKrapiImage>
    implements _$$_PostContentKrapiImageCopyWith<$Res> {
  __$$_PostContentKrapiImageCopyWithImpl(_$_PostContentKrapiImage _value,
      $Res Function(_$_PostContentKrapiImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_$_PostContentKrapiImage(
      null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostContentKrapiImage implements _PostContentKrapiImage {
  const _$_PostContentKrapiImage(this.link, {final String? $type})
      : $type = $type ?? 'image';

  factory _$_PostContentKrapiImage.fromJson(Map<String, dynamic> json) =>
      _$$_PostContentKrapiImageFromJson(json);

  @override
  final String link;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'PostContent.image(link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostContentKrapiImage &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostContentKrapiImageCopyWith<_$_PostContentKrapiImage> get copyWith =>
      __$$_PostContentKrapiImageCopyWithImpl<_$_PostContentKrapiImage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String link) image,
  }) {
    return image(link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? text,
    TResult? Function(String link)? image,
  }) {
    return image?.call(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String link)? image,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostContentKrapiText value) text,
    required TResult Function(_PostContentKrapiImage value) image,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostContentKrapiText value)? text,
    TResult? Function(_PostContentKrapiImage value)? image,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostContentKrapiText value)? text,
    TResult Function(_PostContentKrapiImage value)? image,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostContentKrapiImageToJson(
      this,
    );
  }
}

abstract class _PostContentKrapiImage implements PostContent {
  const factory _PostContentKrapiImage(final String link) =
      _$_PostContentKrapiImage;

  factory _PostContentKrapiImage.fromJson(Map<String, dynamic> json) =
      _$_PostContentKrapiImage.fromJson;

  String get link;
  @JsonKey(ignore: true)
  _$$_PostContentKrapiImageCopyWith<_$_PostContentKrapiImage> get copyWith =>
      throw _privateConstructorUsedError;
}
