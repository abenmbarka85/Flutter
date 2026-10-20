import 'dart:math';

class NameEngine {
  static final names = ['Nova', 'Pixel', 'Luna', 'Spark', 'Shadow'];
  static final surnames = ['Garcia', 'Martinez', 'Lopez', 'Perez', 'Sanchez'];
  static final _random = Random();
  static final _used = <String>{};

  static String generate() {
    if (_used.length >= names.length * surnames.length) _used.clear();
    String name;
    do {
      final first = names[_random.nextInt(names.length)];
      final last = surnames[_random.nextInt(surnames.length)];
      name = '$first $last';
    } while (_used.contains(name));
    _used.add(name);
    return name;
  }
}
