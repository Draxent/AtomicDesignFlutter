import 'package:dashbook/dashbook.dart';

extension DashbookContextExtension on DashbookContext {
  int intProperty(String name, int defaultValue) =>
      numberProperty(name, defaultValue.toDouble()).toInt();

  T enumProperty<T extends Enum>(
    String name,
    T defaultValue,
    List<T> values,
  ) =>
      optionsProperty<T>(
        name,
        defaultValue,
        values.map((x) => PropertyOption(x.name, x)).toList(growable: false),
      );
}
