import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DictionaryValuesRecord extends FirestoreRecord {
  DictionaryValuesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "key" field.
  String? _key;
  String get key => _key ?? '';
  bool hasKey() => _key != null;

  // "value" field.
  String? _value;
  String get value => _value ?? '';
  bool hasValue() => _value != null;

  // "bgColor" field.
  Color? _bgColor;
  Color? get bgColor => _bgColor;
  bool hasBgColor() => _bgColor != null;

  // "textColor" field.
  Color? _textColor;
  Color? get textColor => _textColor;
  bool hasTextColor() => _textColor != null;

  // "hint" field.
  String? _hint;
  String get hint => _hint ?? '';
  bool hasHint() => _hint != null;

  void _initializeFields() {
    _key = snapshotData['key'] as String?;
    _value = snapshotData['value'] as String?;
    _bgColor = getSchemaColor(snapshotData['bgColor']);
    _textColor = getSchemaColor(snapshotData['textColor']);
    _hint = snapshotData['hint'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dictionaryValues');

  static Stream<DictionaryValuesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DictionaryValuesRecord.fromSnapshot(s));

  static Future<DictionaryValuesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DictionaryValuesRecord.fromSnapshot(s));

  static DictionaryValuesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DictionaryValuesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DictionaryValuesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DictionaryValuesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DictionaryValuesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DictionaryValuesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDictionaryValuesRecordData({
  String? key,
  String? value,
  Color? bgColor,
  Color? textColor,
  String? hint,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'key': key,
      'value': value,
      'bgColor': bgColor,
      'textColor': textColor,
      'hint': hint,
    }.withoutNulls,
  );

  return firestoreData;
}

class DictionaryValuesRecordDocumentEquality
    implements Equality<DictionaryValuesRecord> {
  const DictionaryValuesRecordDocumentEquality();

  @override
  bool equals(DictionaryValuesRecord? e1, DictionaryValuesRecord? e2) {
    return e1?.key == e2?.key &&
        e1?.value == e2?.value &&
        e1?.bgColor == e2?.bgColor &&
        e1?.textColor == e2?.textColor &&
        e1?.hint == e2?.hint;
  }

  @override
  int hash(DictionaryValuesRecord? e) => const ListEquality()
      .hash([e?.key, e?.value, e?.bgColor, e?.textColor, e?.hint]);

  @override
  bool isValidKey(Object? o) => o is DictionaryValuesRecord;
}
