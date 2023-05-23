import 'package:dashbook/dashbook.dart';

extension DashbookContextExtension on DashbookContext {
  T enumProperty<T extends Enum>(
    String label,
    T defaultValue,
    List<T> values,
  ) =>
      optionsProperty<T>(
        label,
        defaultValue,
        values.map((x) => PropertyOption(x.name, x)).toList(growable: false),
      );
}
