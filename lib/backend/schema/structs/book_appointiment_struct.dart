// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookAppointimentStruct extends FFFirebaseStruct {
  BookAppointimentStruct({
    DocumentReference? apartment,
    DocumentReference? user,
    DateTime? checkIn,
    DateTime? checkOut,
    DateTime? estimatedCheckOut,
    DateTime? createdAt,
    DateTime? updatedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _apartment = apartment,
        _user = user,
        _checkIn = checkIn,
        _checkOut = checkOut,
        _estimatedCheckOut = estimatedCheckOut,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        super(firestoreUtilData);

  // "apartment" field.
  DocumentReference? _apartment;
  DocumentReference? get apartment => _apartment;
  set apartment(DocumentReference? val) => _apartment = val;

  bool hasApartment() => _apartment != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  set user(DocumentReference? val) => _user = val;

  bool hasUser() => _user != null;

  // "checkIn" field.
  DateTime? _checkIn;
  DateTime? get checkIn => _checkIn;
  set checkIn(DateTime? val) => _checkIn = val;

  bool hasCheckIn() => _checkIn != null;

  // "checkOut" field.
  DateTime? _checkOut;
  DateTime? get checkOut => _checkOut;
  set checkOut(DateTime? val) => _checkOut = val;

  bool hasCheckOut() => _checkOut != null;

  // "estimatedCheckOut" field.
  DateTime? _estimatedCheckOut;
  DateTime? get estimatedCheckOut => _estimatedCheckOut;
  set estimatedCheckOut(DateTime? val) => _estimatedCheckOut = val;

  bool hasEstimatedCheckOut() => _estimatedCheckOut != null;

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

  static BookAppointimentStruct fromMap(Map<String, dynamic> data) =>
      BookAppointimentStruct(
        apartment: data['apartment'] as DocumentReference?,
        user: data['user'] as DocumentReference?,
        checkIn: data['checkIn'] as DateTime?,
        checkOut: data['checkOut'] as DateTime?,
        estimatedCheckOut: data['estimatedCheckOut'] as DateTime?,
        createdAt: data['createdAt'] as DateTime?,
        updatedAt: data['updatedAt'] as DateTime?,
      );

  static BookAppointimentStruct? maybeFromMap(dynamic data) => data is Map
      ? BookAppointimentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'apartment': _apartment,
        'user': _user,
        'checkIn': _checkIn,
        'checkOut': _checkOut,
        'estimatedCheckOut': _estimatedCheckOut,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'apartment': serializeParam(
          _apartment,
          ParamType.DocumentReference,
        ),
        'user': serializeParam(
          _user,
          ParamType.DocumentReference,
        ),
        'checkIn': serializeParam(
          _checkIn,
          ParamType.DateTime,
        ),
        'checkOut': serializeParam(
          _checkOut,
          ParamType.DateTime,
        ),
        'estimatedCheckOut': serializeParam(
          _estimatedCheckOut,
          ParamType.DateTime,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'updatedAt': serializeParam(
          _updatedAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static BookAppointimentStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      BookAppointimentStruct(
        apartment: deserializeParam(
          data['apartment'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['companies', 'appartments'],
        ),
        user: deserializeParam(
          data['user'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        checkIn: deserializeParam(
          data['checkIn'],
          ParamType.DateTime,
          false,
        ),
        checkOut: deserializeParam(
          data['checkOut'],
          ParamType.DateTime,
          false,
        ),
        estimatedCheckOut: deserializeParam(
          data['estimatedCheckOut'],
          ParamType.DateTime,
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
      );

  @override
  String toString() => 'BookAppointimentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BookAppointimentStruct &&
        apartment == other.apartment &&
        user == other.user &&
        checkIn == other.checkIn &&
        checkOut == other.checkOut &&
        estimatedCheckOut == other.estimatedCheckOut &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        apartment,
        user,
        checkIn,
        checkOut,
        estimatedCheckOut,
        createdAt,
        updatedAt
      ]);
}

BookAppointimentStruct createBookAppointimentStruct({
  DocumentReference? apartment,
  DocumentReference? user,
  DateTime? checkIn,
  DateTime? checkOut,
  DateTime? estimatedCheckOut,
  DateTime? createdAt,
  DateTime? updatedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BookAppointimentStruct(
      apartment: apartment,
      user: user,
      checkIn: checkIn,
      checkOut: checkOut,
      estimatedCheckOut: estimatedCheckOut,
      createdAt: createdAt,
      updatedAt: updatedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BookAppointimentStruct? updateBookAppointimentStruct(
  BookAppointimentStruct? bookAppointiment, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    bookAppointiment
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBookAppointimentStructData(
  Map<String, dynamic> firestoreData,
  BookAppointimentStruct? bookAppointiment,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (bookAppointiment == null) {
    return;
  }
  if (bookAppointiment.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && bookAppointiment.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final bookAppointimentData =
      getBookAppointimentFirestoreData(bookAppointiment, forFieldValue);
  final nestedData =
      bookAppointimentData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = bookAppointiment.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBookAppointimentFirestoreData(
  BookAppointimentStruct? bookAppointiment, [
  bool forFieldValue = false,
]) {
  if (bookAppointiment == null) {
    return {};
  }
  final firestoreData = mapToFirestore(bookAppointiment.toMap());

  // Add any Firestore field values
  bookAppointiment.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBookAppointimentListFirestoreData(
  List<BookAppointimentStruct>? bookAppointiments,
) =>
    bookAppointiments
        ?.map((e) => getBookAppointimentFirestoreData(e, true))
        .toList() ??
    [];
