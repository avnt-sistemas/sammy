// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DictionaryValueStruct extends FFFirebaseStruct {
  DictionaryValueStruct({
    String? key,
    String? value,
    Color? bgColor,
    Color? textColor,
    String? hint,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _key = key,
        _value = value,
        _bgColor = bgColor,
        _textColor = textColor,
        _hint = hint,
        super(firestoreUtilData);

  // "key" field.
  String? _key;
  String get key => _key ?? '';
  set key(String? val) => _key = val;

  bool hasKey() => _key != null;

  // "value" field.
  String? _value;
  String get value => _value ?? '';
  set value(String? val) => _value = val;

  bool hasValue() => _value != null;

  // "bgColor" field.
  Color? _bgColor;
  Color? get bgColor => _bgColor;
  set bgColor(Color? val) => _bgColor = val;

  bool hasBgColor() => _bgColor != null;

  // "textColor" field.
  Color? _textColor;
  Color? get textColor => _textColor;
  set textColor(Color? val) => _textColor = val;

  bool hasTextColor() => _textColor != null;

  // "hint" field.
  String? _hint;
  String get hint => _hint ?? '';
  set hint(String? val) => _hint = val;

  bool hasHint() => _hint != null;

  static DictionaryValueStruct fromMap(Map<String, dynamic> data) =>
      DictionaryValueStruct(
        key: data['key'] as String?,
        value: data['value'] as String?,
        bgColor: getSchemaColor(data['bgColor']),
        textColor: getSchemaColor(data['textColor']),
        hint: data['hint'] as String?,
      );

  static DictionaryValueStruct? maybeFromMap(dynamic data) => data is Map
      ? DictionaryValueStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'key': _key,
        'value': _value,
        'bgColor': _bgColor,
        'textColor': _textColor,
        'hint': _hint,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'key': serializeParam(
          _key,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.String,
        ),
        'bgColor': serializeParam(
          _bgColor,
          ParamType.Color,
        ),
        'textColor': serializeParam(
          _textColor,
          ParamType.Color,
        ),
        'hint': serializeParam(
          _hint,
          ParamType.String,
        ),
      }.withoutNulls;

  static DictionaryValueStruct fromSerializableMap(Map<String, dynamic> data) =>
      DictionaryValueStruct(
        key: deserializeParam(
          data['key'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.String,
          false,
        ),
        bgColor: deserializeParam(
          data['bgColor'],
          ParamType.Color,
          false,
        ),
        textColor: deserializeParam(
          data['textColor'],
          ParamType.Color,
          false,
        ),
        hint: deserializeParam(
          data['hint'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DictionaryValueStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DictionaryValueStruct &&
        key == other.key &&
        value == other.value &&
        bgColor == other.bgColor &&
        textColor == other.textColor &&
        hint == other.hint;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([key, value, bgColor, textColor, hint]);
}

DictionaryValueStruct createDictionaryValueStruct({
  String? key,
  String? value,
  Color? bgColor,
  Color? textColor,
  String? hint,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DictionaryValueStruct(
      key: key,
      value: value,
      bgColor: bgColor,
      textColor: textColor,
      hint: hint,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DictionaryValueStruct? updateDictionaryValueStruct(
  DictionaryValueStruct? dictionaryValue, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dictionaryValue
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDictionaryValueStructData(
  Map<String, dynamic> firestoreData,
  DictionaryValueStruct? dictionaryValue,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dictionaryValue == null) {
    return;
  }
  if (dictionaryValue.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dictionaryValue.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dictionaryValueData =
      getDictionaryValueFirestoreData(dictionaryValue, forFieldValue);
  final nestedData =
      dictionaryValueData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dictionaryValue.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDictionaryValueFirestoreData(
  DictionaryValueStruct? dictionaryValue, [
  bool forFieldValue = false,
]) {
  if (dictionaryValue == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dictionaryValue.toMap());

  // Add any Firestore field values
  dictionaryValue.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDictionaryValueListFirestoreData(
  List<DictionaryValueStruct>? dictionaryValues,
) =>
    dictionaryValues
        ?.map((e) => getDictionaryValueFirestoreData(e, true))
        .toList() ??
    [];
