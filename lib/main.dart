import 'package:counterapp/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const CounterPage(),
      ),
    );
  }
}

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    var counterNotifier = Provider.of<Counter>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("My Counter App"),
      ),
      body: Consumer<Counter>(builder: (context, notifier, child) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${notifier.counter}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        );
      }),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              counterNotifier.isIncrementDisabled
                  ? null
                  : counterNotifier.increment();
              //counterNotifier.increment();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: counterNotifier.isIncrementDisabled
                  ? Colors.grey
                  : Colors.blue,
            ),
            child: const Icon(Icons.add),
          ),
          ElevatedButton(
            onPressed: () {
              counterNotifier.isDecrementDisabled
                  ? null
                  : counterNotifier.decrement();
              //counterNotifier.decrement();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: counterNotifier.isDecrementDisabled
                  ? Colors.grey
                  : Colors.blue,
            ),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
