// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kcontent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KContent _$KContentFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'text':
      return _KContentKrapiText.fromJson(json);
    case 'image':
      return _KContentKrapiImage.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'KContent', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$KContent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String imageLink) image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? text,
    TResult? Function(String imageLink)? image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String imageLink)? image,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_KContentKrapiText value) text,
    required TResult Function(_KContentKrapiImage value) image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_KContentKrapiText value)? text,
    TResult? Function(_KContentKrapiImage value)? image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_KContentKrapiText value)? text,
    TResult Function(_KContentKrapiImage value)? image,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KContentCopyWith<$Res> {
  factory $KContentCopyWith(KContent value, $Res Function(KContent) then) =
      _$KContentCopyWithImpl<$Res, KContent>;
}

/// @nodoc
class _$KContentCopyWithImpl<$Res, $Val extends KContent>
    implements $KContentCopyWith<$Res> {
  _$KContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_KContentKrapiTextCopyWith<$Res> {
  factory _$$_KContentKrapiTextCopyWith(_$_KContentKrapiText value,
          $Res Function(_$_KContentKrapiText) then) =
      __$$_KContentKrapiTextCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_KContentKrapiTextCopyWithImpl<$Res>
    extends _$KContentCopyWithImpl<$Res, _$_KContentKrapiText>
    implements _$$_KContentKrapiTextCopyWith<$Res> {
  __$$_KContentKrapiTextCopyWithImpl(
      _$_KContentKrapiText _value, $Res Function(_$_KContentKrapiText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_KContentKrapiText(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KContentKrapiText implements _KContentKrapiText {
  const _$_KContentKrapiText({required this.text, final String? $type})
      : $type = $type ?? 'text';

  factory _$_KContentKrapiText.fromJson(Map<String, dynamic> json) =>
      _$$_KContentKrapiTextFromJson(json);

  @override
  final String text;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'KContent.text(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KContentKrapiText &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KContentKrapiTextCopyWith<_$_KContentKrapiText> get copyWith =>
      __$$_KContentKrapiTextCopyWithImpl<_$_KContentKrapiText>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String imageLink) image,
  }) {
    return text(this.text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? text,
    TResult? Function(String imageLink)? image,
  }) {
    return text?.call(this.text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String imageLink)? image,
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
    required TResult Function(_KContentKrapiText value) text,
    required TResult Function(_KContentKrapiImage value) image,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_KContentKrapiText value)? text,
    TResult? Function(_KContentKrapiImage value)? image,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_KContentKrapiText value)? text,
    TResult Function(_KContentKrapiImage value)? image,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_KContentKrapiTextToJson(
      this,
    );
  }
}

abstract class _KContentKrapiText implements KContent {
  const factory _KContentKrapiText({required final String text}) =
      _$_KContentKrapiText;

  factory _KContentKrapiText.fromJson(Map<String, dynamic> json) =
      _$_KContentKrapiText.fromJson;

  String get text;
  @JsonKey(ignore: true)
  _$$_KContentKrapiTextCopyWith<_$_KContentKrapiText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_KContentKrapiImageCopyWith<$Res> {
  factory _$$_KContentKrapiImageCopyWith(_$_KContentKrapiImage value,
          $Res Function(_$_KContentKrapiImage) then) =
      __$$_KContentKrapiImageCopyWithImpl<$Res>;
  @useResult
  $Res call({String imageLink});
}

/// @nodoc
class __$$_KContentKrapiImageCopyWithImpl<$Res>
    extends _$KContentCopyWithImpl<$Res, _$_KContentKrapiImage>
    implements _$$_KContentKrapiImageCopyWith<$Res> {
  __$$_KContentKrapiImageCopyWithImpl(
      _$_KContentKrapiImage _value, $Res Function(_$_KContentKrapiImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageLink = null,
  }) {
    return _then(_$_KContentKrapiImage(
      imageLink: null == imageLink
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KContentKrapiImage implements _KContentKrapiImage {
  const _$_KContentKrapiImage({required this.imageLink, final String? $type})
      : $type = $type ?? 'image';

  factory _$_KContentKrapiImage.fromJson(Map<String, dynamic> json) =>
      _$$_KContentKrapiImageFromJson(json);

  @override
  final String imageLink;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'KContent.image(imageLink: $imageLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KContentKrapiImage &&
            (identical(other.imageLink, imageLink) ||
                other.imageLink == imageLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KContentKrapiImageCopyWith<_$_KContentKrapiImage> get copyWith =>
      __$$_KContentKrapiImageCopyWithImpl<_$_KContentKrapiImage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) text,
    required TResult Function(String imageLink) image,
  }) {
    return image(imageLink);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? text,
    TResult? Function(String imageLink)? image,
  }) {
    return image?.call(imageLink);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? text,
    TResult Function(String imageLink)? image,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(imageLink);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_KContentKrapiText value) text,
    required TResult Function(_KContentKrapiImage value) image,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_KContentKrapiText value)? text,
    TResult? Function(_KContentKrapiImage value)? image,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_KContentKrapiText value)? text,
    TResult Function(_KContentKrapiImage value)? image,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_KContentKrapiImageToJson(
      this,
    );
  }
}

abstract class _KContentKrapiImage implements KContent {
  const factory _KContentKrapiImage({required final String imageLink}) =
      _$_KContentKrapiImage;

  factory _KContentKrapiImage.fromJson(Map<String, dynamic> json) =
      _$_KContentKrapiImage.fromJson;

  String get imageLink;
  @JsonKey(ignore: true)
  _$$_KContentKrapiImageCopyWith<_$_KContentKrapiImage> get copyWith =>
      throw _privateConstructorUsedError;
}
