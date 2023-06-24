import 'package:freezed_annotation/freezed_annotation.dart';
part 'CounterEvent.freezed.dart';
@freezed
class CounterEvent with _$CounterEvent{
  const factory CounterEvent.increment()=Increment;
  const factory CounterEvent.decrement()=Decrement;
  const factory CounterEvent.initial(int Value)=Initial;
}