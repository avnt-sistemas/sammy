// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RefinementStruct extends FFFirebaseStruct {
  RefinementStruct({
    String? name,
    bool? status,
    bool? isOptional,
    double? price,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _status = status,
        _isOptional = isOptional,
        _price = price,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _deletedAt = deletedAt,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? true;
  set status(bool? val) => _status = val;

  bool hasStatus() => _status != null;

  // "isOptional" field.
  bool? _isOptional;
  bool get isOptional => _isOptional ?? false;
  set isOptional(bool? val) => _isOptional = val;

  bool hasIsOptional() => _isOptional != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  set updatedAt(DateTime? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "deletedAt" field.
  DateTime? _deletedAt;
  DateTime? get deletedAt => _deletedAt;
  set deletedAt(DateTime? val) => _deletedAt = val;

  bool hasDeletedAt() => _deletedAt != null;

  static RefinementStruct fromMap(Map<String, dynamic> data) =>
      RefinementStruct(
        name: data['name'] as String?,
        status: data['status'] as bool?,
        isOptional: data['isOptional'] as bool?,
        price: castToType<double>(data['price']),
        createdAt: data['createdAt'] as DateTime?,
        updatedAt: data['updatedAt'] as DateTime?,
        deletedAt: data['deletedAt'] as DateTime?,
      );

  static RefinementStruct? maybeFromMap(dynamic data) => data is Map
      ? RefinementStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'status': _status,
        'isOptional': _isOptional,
        'price': _price,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'deletedAt': _deletedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.bool,
        ),
        'isOptional': serializeParam(
          _isOptional,
          ParamType.bool,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'updatedAt': serializeParam(
          _updatedAt,
          ParamType.DateTime,
        ),
        'deletedAt': serializeParam(
          _deletedAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static RefinementStruct fromSerializableMap(Map<String, dynamic> data) =>
      RefinementStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.bool,
          false,
        ),
        isOptional: deserializeParam(
          data['isOptional'],
          ParamType.bool,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.DateTime,
          false,
        ),
        updatedAt: deserializeParam(
          data['updatedAt'],
          ParamType.DateTime,
          false,
        ),
        deletedAt: deserializeParam(
          data['deletedAt'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'RefinementStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RefinementStruct &&
        name == other.name &&
        status == other.status &&
        isOptional == other.isOptional &&
        price == other.price &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        deletedAt == other.deletedAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, status, isOptional, price, createdAt, updatedAt, deletedAt]);
}

RefinementStruct createRefinementStruct({
  String? name,
  bool? status,
  bool? isOptional,
  double? price,
  DateTime? createdAt,
  DateTime? updatedAt,
  DateTime? deletedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RefinementStruct(
      name: name,
      status: status,
      isOptional: isOptional,
      price: price,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RefinementStruct? updateRefinementStruct(
  RefinementStruct? refinement, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    refinement
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRefinementStructData(
  Map<String, dynamic> firestoreData,
  RefinementStruct? refinement,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (refinement == null) {
    return;
  }
  if (refinement.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && refinement.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final refinementData = getRefinementFirestoreData(refinement, forFieldValue);
  final nestedData = refinementData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = refinement.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRefinementFirestoreData(
  RefinementStruct? refinement, [
  bool forFieldValue = false,
]) {
  if (refinement == null) {
    return {};
  }
  final firestoreData = mapToFirestore(refinement.toMap());

  // Add any Firestore field values
  refinement.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRefinementListFirestoreData(
  List<RefinementStruct>? refinements,
) =>
    refinements?.map((e) => getRefinementFirestoreData(e, true)).toList() ?? [];
