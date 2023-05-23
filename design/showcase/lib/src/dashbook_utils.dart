import 'package:dashbook/dashbook.dart';

extension DashbookContextExtension on DashbookContext {
  int intProperty(String name, int defaultValue) =>
      numberProperty(name, defaultValue.toDouble()).toInt();

  T enumProperty<T extends Enum>(
    String name,
    List<T> values,
  ) =>
      optionsProperty<T>(
        name,
        values.first,
        values.map((x) => PropertyOption(x.name, x)).toList(growable: false),
      );
}
