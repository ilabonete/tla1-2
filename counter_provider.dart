import 'package:flutter/foundation.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners(); // Notify UI to rebuild
  }

  void decrementCounter() {
    if (_counter > 0) {
      _counter--;
      notifyListeners(); // Notify UI to rebuild
    }
  }
}
