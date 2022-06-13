abstract class EnumUtils {
  static T? fromString<T extends Enum>(
    List<T> enumValues,
    String value, {
    bool camelCase = false,
  }) {
    try {
      return enumValues.firstWhere(
        (enumItem) => enumItem.name.toLowerCase() == value.toLowerCase(),
      );
    } on StateError catch (_) {
      return null;
    }
  }
}
