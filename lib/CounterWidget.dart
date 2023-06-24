import 'package:flutter_incre/Application/Counter/CounterState.dart';
import 'package:flutter_incre/Core/Counter/CounterEvent.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_incre/Core/Counter/CounterStateValue.dart';
import 'package:flutter/services.dart';
import 'package:flutter_incre/Core/Counter/CounterEvent.dart';
import 'package:flutter_incre/Application/Counter/CounterState.dart';



final counterProvider=StateNotifierProvider<CounterState,CounterStateValue>((ref) => CounterState());

class CounterWidget extends ConsumerWidget {
  const CounterWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final counterState=ref.watch(counterProvider);
    final counterEvent=ref.watch(counterProvider.notifier);
    final textEditingController = TextEditingController();

    void initializeCounter() {
      final initialValue = int.tryParse(textEditingController.text) ?? 0;
      counterEvent.mapEventsToState(CounterEvent.initial(initialValue));
      textEditingController.clear();
      FocusScope.of(context).requestFocus(FocusNode());
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Scaffold(
            appBar: AppBar(
              systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.blue),
              title: const Text('DDD'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: Text(
                            counterState.counter.toString(),
                            style: TextStyle(
                                fontSize: 60
                            ),
                          ),
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(label: Text('Initialize a Number')),
                          controller: textEditingController,
                        ),
                        ElevatedButton(
                          onPressed: initializeCounter,
                          child: const Text('Initialize'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: IconButton(
                            onPressed: () {
                              counterEvent.mapEventsToState(CounterEvent.increment());
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(Colors.white),
                            ),
                            icon: const Icon(Icons.plus_one),
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            onPressed: () {
                              counterEvent.mapEventsToState(CounterEvent.decrement());
                            },
                            icon: const Icon(Icons.exposure_minus_1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}