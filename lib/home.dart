import 'package:flatter_tutorial/counter_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // 変更箇所 Providerを使うためのimport
import 'counter_store.dart';
import 'counter_num.dart';
import 'counter_button.dart';

class MyHomePage extends StatelessWidget {
  // 変更箇所
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    // 変更箇所
    return ChangeNotifierProvider(
        create: (context) => CounterStore(),
        child: Builder(builder: (BuildContext context) {
          // final store = Provider.of<CounterStore>(context);
          // final _counter = store.counter;
          return Scaffold(
            appBar: AppBar(
              title: Text(title), // 変更箇所 widget.title → title
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  CounterNum(),
                  CounterButton(),
                  // Text(
                  //   "$_counter",
                  // ),
                  // ElevatedButton(
                  //     onPressed: store.incrementCounter,
                  //     child: Text("Increment")),
                ],
              ),
            ),
            // floatingActionButton: FloatingActionButton(
            //   onPressed: store.incrementCounter, // 変更箇所
            //   tooltip: 'Increment',
            //   child: Icon(Icons.add),
            // ),
          );
        }));
  }
}
