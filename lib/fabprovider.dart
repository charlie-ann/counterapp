// // import 'package:flutter/material.dart';

// // class Fabprovider with ChangeNotifier {
// //   final bool _isEnabled = true;
// //   bool isEnabled => _isEnabled;
// // }
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class CounterProvider extends ChangeNotifier {
//   int _counter = 0;
//   int _limit = 10;

//   int get counter => _counter;
//   bool get isIncrementDisabled => _counter >= _limit;
//   bool get isDecrementDisabled => _counter <= 0;

//     // void increment() {
//     //   if (_counter < _limit) {
//     //     _counter++;
//     //     notifyListeners();
//     //   }
//     // }

//     // void decrement() {
//     //   if (_counter > 0) {
//     //     _counter--;
//     //     notifyListeners();
//     //   }
//     // }
// }

// class CounterApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => CounterProvider(),
//       child: MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text('Counter App'),
//           ),
//           body: Center(
//             child: Consumer<CounterProvider>(
//               builder: (context, counterProvider, child) {
//                 return Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       '${counterProvider.counter}',
//                       style: TextStyle(fontSize: 24),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         ElevatedButton(
//                           onPressed: counterProvider.isDecrementDisabled
//                               ? null
//                               : counterProvider.decrement,
//                           child: Text('-'),
//                         ),
//                         SizedBox(width: 20),
//                         ElevatedButton(
//                           onPressed: counterProvider.isIncrementDisabled
//                               ? null
//                               : counterProvider.increment,
//                           child: Text('+'),
//                         ),
//                       ],
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }