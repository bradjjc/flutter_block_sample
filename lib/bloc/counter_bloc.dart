import 'package:rxdart/rxdart.dart';


class CounterBloc {
  int _counter = 0;

  final _countSubject = BehaviorSubject.seeded(0);

  void addCounter(){
    _counter++;
    _countSubject.add(_counter);
  }

  Stream<int> get counter$ => _countSubject.stream;
}
