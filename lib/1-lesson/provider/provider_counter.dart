import 'package:flutter/material.dart';
import 'package:maxsudjon/1-lesson/provider/counter_view_model.dart';

import 'package:provider/provider.dart';

class ProviderCounter extends StatelessWidget {
  const ProviderCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sen bosding"),
            Text(
              "${context.watch<CounterViewModel>().count}",
              style: TextStyle(fontSize: 20),
            ),
            IconButton(
                onPressed: () {
                  context.read<CounterViewModel>().derement();
                },
                icon: Icon(Icons.minimize))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterViewModel>().increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
