// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApartmentStruct extends FFFirebaseStruct {
  ApartmentStruct({
    String? description,
    ApartmentStatus? status,
    String? image,
    bool? doubleBed,
    bool? minibar,
    bool? airConditioner,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _description = description,
        _status = status,
        _image = image,
        _doubleBed = doubleBed,
        _minibar = minibar,
        _airConditioner = airConditioner,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _deletedAt = deletedAt,
        super(firestoreUtilData);

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "status" field.
  ApartmentStatus? _status;
  ApartmentStatus get status => _status ?? ApartmentStatus.vago;
  set status(ApartmentStatus? val) => _status = val;

  bool hasStatus() => _status != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "doubleBed" field.
  bool? _doubleBed;
  bool get doubleBed => _doubleBed ?? false;
  set doubleBed(bool? val) => _doubleBed = val;

  bool hasDoubleBed() => _doubleBed != null;

  // "minibar" field.
  bool? _minibar;
  bool get minibar => _minibar ?? true;
  set minibar(bool? val) => _minibar = val;

  bool hasMinibar() => _minibar != null;

  // "airConditioner" field.
  bool? _airConditioner;
  bool get airConditioner => _airConditioner ?? true;
  set airConditioner(bool? val) => _airConditioner = val;

  bool hasAirConditioner() => _airConditioner != null;

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

  static ApartmentStruct fromMap(Map<String, dynamic> data) => ApartmentStruct(
        description: data['description'] as String?,
        status: deserializeEnum<ApartmentStatus>(data['status']),
        image: data['image'] as String?,
        doubleBed: data['doubleBed'] as bool?,
        minibar: data['minibar'] as bool?,
        airConditioner: data['airConditioner'] as bool?,
        createdAt: data['createdAt'] as DateTime?,
        updatedAt: data['updatedAt'] as DateTime?,
        deletedAt: data['deletedAt'] as DateTime?,
      );

  static ApartmentStruct? maybeFromMap(dynamic data) => data is Map
      ? ApartmentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'description': _description,
        'status': _status?.serialize(),
        'image': _image,
        'doubleBed': _doubleBed,
        'minibar': _minibar,
        'airConditioner': _airConditioner,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'deletedAt': _deletedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.Enum,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'doubleBed': serializeParam(
          _doubleBed,
          ParamType.bool,
        ),
        'minibar': serializeParam(
          _minibar,
          ParamType.bool,
        ),
        'airConditioner': serializeParam(
          _airConditioner,
          ParamType.bool,
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

  static ApartmentStruct fromSerializableMap(Map<String, dynamic> data) =>
      ApartmentStruct(
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        status: deserializeParam<ApartmentStatus>(
          data['status'],
          ParamType.Enum,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        doubleBed: deserializeParam(
          data['doubleBed'],
          ParamType.bool,
          false,
        ),
        minibar: deserializeParam(
          data['minibar'],
          ParamType.bool,
          false,
        ),
        airConditioner: deserializeParam(
          data['airConditioner'],
          ParamType.bool,
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
  String toString() => 'ApartmentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ApartmentStruct &&
        description == other.description &&
        status == other.status &&
        image == other.image &&
        doubleBed == other.doubleBed &&
        minibar == other.minibar &&
        airConditioner == other.airConditioner &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        deletedAt == other.deletedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        description,
        status,
        image,
        doubleBed,
        minibar,
        airConditioner,
        createdAt,
        updatedAt,
        deletedAt
      ]);
}

ApartmentStruct createApartmentStruct({
  String? description,
  ApartmentStatus? status,
  String? image,
  bool? doubleBed,
  bool? minibar,
  bool? airConditioner,
  DateTime? createdAt,
  DateTime? updatedAt,
  DateTime? deletedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ApartmentStruct(
      description: description,
      status: status,
      image: image,
      doubleBed: doubleBed,
      minibar: minibar,
      airConditioner: airConditioner,
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

ApartmentStruct? updateApartmentStruct(
  ApartmentStruct? apartment, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    apartment
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addApartmentStructData(
  Map<String, dynamic> firestoreData,
  ApartmentStruct? apartment,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (apartment == null) {
    return;
  }
  if (apartment.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && apartment.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final apartmentData = getApartmentFirestoreData(apartment, forFieldValue);
  final nestedData = apartmentData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = apartment.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getApartmentFirestoreData(
  ApartmentStruct? apartment, [
  bool forFieldValue = false,
]) {
  if (apartment == null) {
    return {};
  }
  final firestoreData = mapToFirestore(apartment.toMap());

  // Add any Firestore field values
  apartment.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getApartmentListFirestoreData(
  List<ApartmentStruct>? apartments,
) =>
    apartments?.map((e) => getApartmentFirestoreData(e, true)).toList() ?? [];
