import 'package:freezed_annotation/freezed_annotation.dart';
part 'CounterStateValue.freezed.dart';

@freezed
class CounterStateValue with _$CounterStateValue{
  const factory CounterStateValue(
  {
    required int counter,
  }
  )= _CounterStateValue;
  factory CounterStateValue.initial()=> CounterStateValue(counter: 0,);
}