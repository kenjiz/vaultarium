// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flashbar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FlashbarState {

 String get message; FlashbarType get type;
/// Create a copy of FlashbarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlashbarStateCopyWith<FlashbarState> get copyWith => _$FlashbarStateCopyWithImpl<FlashbarState>(this as FlashbarState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlashbarState&&(identical(other.message, message) || other.message == message)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,message,type);

@override
String toString() {
  return 'FlashbarState(message: $message, type: $type)';
}


}

/// @nodoc
abstract mixin class $FlashbarStateCopyWith<$Res>  {
  factory $FlashbarStateCopyWith(FlashbarState value, $Res Function(FlashbarState) _then) = _$FlashbarStateCopyWithImpl;
@useResult
$Res call({
 String message, FlashbarType type
});




}
/// @nodoc
class _$FlashbarStateCopyWithImpl<$Res>
    implements $FlashbarStateCopyWith<$Res> {
  _$FlashbarStateCopyWithImpl(this._self, this._then);

  final FlashbarState _self;
  final $Res Function(FlashbarState) _then;

/// Create a copy of FlashbarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? type = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FlashbarType,
  ));
}

}


/// @nodoc


class _FlashbarState implements FlashbarState {
  const _FlashbarState({this.message = '', this.type = FlashbarType.none});
  

@override@JsonKey() final  String message;
@override@JsonKey() final  FlashbarType type;

/// Create a copy of FlashbarState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlashbarStateCopyWith<_FlashbarState> get copyWith => __$FlashbarStateCopyWithImpl<_FlashbarState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FlashbarState&&(identical(other.message, message) || other.message == message)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,message,type);

@override
String toString() {
  return 'FlashbarState(message: $message, type: $type)';
}


}

/// @nodoc
abstract mixin class _$FlashbarStateCopyWith<$Res> implements $FlashbarStateCopyWith<$Res> {
  factory _$FlashbarStateCopyWith(_FlashbarState value, $Res Function(_FlashbarState) _then) = __$FlashbarStateCopyWithImpl;
@override @useResult
$Res call({
 String message, FlashbarType type
});




}
/// @nodoc
class __$FlashbarStateCopyWithImpl<$Res>
    implements _$FlashbarStateCopyWith<$Res> {
  __$FlashbarStateCopyWithImpl(this._self, this._then);

  final _FlashbarState _self;
  final $Res Function(_FlashbarState) _then;

/// Create a copy of FlashbarState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? type = null,}) {
  return _then(_FlashbarState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FlashbarType,
  ));
}


}

// dart format on
