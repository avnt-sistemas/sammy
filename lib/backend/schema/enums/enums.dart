import 'package:collection/collection.dart';

enum RefinementStatus {
  ativo,
  inativo,
}

enum ApartmentStatus {
  vago,
  ocupado,
  manut,
  inativo,
}

enum UserType {
  guest,
  customer,
  employee,
  owner,
  administrator,
}

enum ApartmentType {
  kitnet,
  studio,
  room,
  appartment,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (RefinementStatus):
      return RefinementStatus.values.deserialize(value) as T?;
    case (ApartmentStatus):
      return ApartmentStatus.values.deserialize(value) as T?;
    case (UserType):
      return UserType.values.deserialize(value) as T?;
    case (ApartmentType):
      return ApartmentType.values.deserialize(value) as T?;
    default:
      return null;
  }
}
