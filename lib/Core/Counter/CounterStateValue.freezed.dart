// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CounterStateValue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CounterStateValue {
  int get counter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CounterStateValueCopyWith<CounterStateValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterStateValueCopyWith<$Res> {
  factory $CounterStateValueCopyWith(
          CounterStateValue value, $Res Function(CounterStateValue) then) =
      _$CounterStateValueCopyWithImpl<$Res, CounterStateValue>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$CounterStateValueCopyWithImpl<$Res, $Val extends CounterStateValue>
    implements $CounterStateValueCopyWith<$Res> {
  _$CounterStateValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CounterStateValueCopyWith<$Res>
    implements $CounterStateValueCopyWith<$Res> {
  factory _$$_CounterStateValueCopyWith(_$_CounterStateValue value,
          $Res Function(_$_CounterStateValue) then) =
      __$$_CounterStateValueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$_CounterStateValueCopyWithImpl<$Res>
    extends _$CounterStateValueCopyWithImpl<$Res, _$_CounterStateValue>
    implements _$$_CounterStateValueCopyWith<$Res> {
  __$$_CounterStateValueCopyWithImpl(
      _$_CounterStateValue _value, $Res Function(_$_CounterStateValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$_CounterStateValue(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CounterStateValue implements _CounterStateValue {
  const _$_CounterStateValue({required this.counter});

  @override
  final int counter;

  @override
  String toString() {
    return 'CounterStateValue(counter: $counter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CounterStateValue &&
            (identical(other.counter, counter) || other.counter == counter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, counter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CounterStateValueCopyWith<_$_CounterStateValue> get copyWith =>
      __$$_CounterStateValueCopyWithImpl<_$_CounterStateValue>(
          this, _$identity);
}

abstract class _CounterStateValue implements CounterStateValue {
  const factory _CounterStateValue({required final int counter}) =
      _$_CounterStateValue;

  @override
  int get counter;
  @override
  @JsonKey(ignore: true)
  _$$_CounterStateValueCopyWith<_$_CounterStateValue> get copyWith =>
      throw _privateConstructorUsedError;
}
