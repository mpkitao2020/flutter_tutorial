import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_store.dart';

class CounterNum extends StatelessWidget {
  const CounterNum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<CounterStore>(context);
    final _counter = store.counter;
    return Text(
      "$_counter",
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
