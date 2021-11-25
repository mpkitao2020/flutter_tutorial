import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_store.dart';

class CounterButton extends StatelessWidget {
  const CounterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<CounterStore>(context);
    return ElevatedButton(
      onPressed: store.incrementCounter,
      child: const Text("Increment"),
    );
  }
}
