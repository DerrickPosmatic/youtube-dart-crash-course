void main(List<String> args) {
  print(getFullName(null, 'Lee'));
  print(getFullName('Derrick', 'Lee'));
}

String getFullName(
  String? firstName,
  String? lastName,
) =>
    withAll([firstName, lastName], (names) => names.join(' ')) ?? 'Empty';

T? withAll<T>(
  List<T?> optionals,
  T Function(List<T>) callback,
) =>
    optionals.any((element) => element == null)
        ? null
        : callback(optionals.cast<T>());
