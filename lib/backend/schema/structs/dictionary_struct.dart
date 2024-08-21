// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DictionaryStruct extends FFFirebaseStruct {
  DictionaryStruct({
    String? typeName,
    List<DocumentReference>? values,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _typeName = typeName,
        _values = values,
        super(firestoreUtilData);

  // "typeName" field.
  String? _typeName;
  String get typeName => _typeName ?? '';
  set typeName(String? val) => _typeName = val;

  bool hasTypeName() => _typeName != null;

  // "values" field.
  List<DocumentReference>? _values;
  List<DocumentReference> get values => _values ?? const [];
  set values(List<DocumentReference>? val) => _values = val;

  void updateValues(Function(List<DocumentReference>) updateFn) {
    updateFn(_values ??= []);
  }

  bool hasValues() => _values != null;

  static DictionaryStruct fromMap(Map<String, dynamic> data) =>
      DictionaryStruct(
        typeName: data['typeName'] as String?,
        values: getDataList(data['values']),
      );

  static DictionaryStruct? maybeFromMap(dynamic data) => data is Map
      ? DictionaryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'typeName': _typeName,
        'values': _values,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'typeName': serializeParam(
          _typeName,
          ParamType.String,
        ),
        'values': serializeParam(
          _values,
          ParamType.DocumentReference,
          isList: true,
        ),
      }.withoutNulls;

  static DictionaryStruct fromSerializableMap(Map<String, dynamic> data) =>
      DictionaryStruct(
        typeName: deserializeParam(
          data['typeName'],
          ParamType.String,
          false,
        ),
        values: deserializeParam<DocumentReference>(
          data['values'],
          ParamType.DocumentReference,
          true,
          collectionNamePath: ['dictionaryValues'],
        ),
      );

  @override
  String toString() => 'DictionaryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DictionaryStruct &&
        typeName == other.typeName &&
        listEquality.equals(values, other.values);
  }

  @override
  int get hashCode => const ListEquality().hash([typeName, values]);
}

DictionaryStruct createDictionaryStruct({
  String? typeName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DictionaryStruct(
      typeName: typeName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DictionaryStruct? updateDictionaryStruct(
  DictionaryStruct? dictionary, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dictionary
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDictionaryStructData(
  Map<String, dynamic> firestoreData,
  DictionaryStruct? dictionary,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dictionary == null) {
    return;
  }
  if (dictionary.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dictionary.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dictionaryData = getDictionaryFirestoreData(dictionary, forFieldValue);
  final nestedData = dictionaryData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dictionary.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDictionaryFirestoreData(
  DictionaryStruct? dictionary, [
  bool forFieldValue = false,
]) {
  if (dictionary == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dictionary.toMap());

  // Add any Firestore field values
  dictionary.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDictionaryListFirestoreData(
  List<DictionaryStruct>? dictionarys,
) =>
    dictionarys?.map((e) => getDictionaryFirestoreData(e, true)).toList() ?? [];
