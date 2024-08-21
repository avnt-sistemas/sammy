import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DictionariesRecord extends FirestoreRecord {
  DictionariesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "typeName" field.
  String? _typeName;
  String get typeName => _typeName ?? '';
  bool hasTypeName() => _typeName != null;

  // "values" field.
  List<DocumentReference>? _values;
  List<DocumentReference> get values => _values ?? const [];
  bool hasValues() => _values != null;

  void _initializeFields() {
    _typeName = snapshotData['typeName'] as String?;
    _values = getDataList(snapshotData['values']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dictionaries');

  static Stream<DictionariesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DictionariesRecord.fromSnapshot(s));

  static Future<DictionariesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DictionariesRecord.fromSnapshot(s));

  static DictionariesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DictionariesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DictionariesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DictionariesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DictionariesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DictionariesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDictionariesRecordData({
  String? typeName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'typeName': typeName,
    }.withoutNulls,
  );

  return firestoreData;
}

class DictionariesRecordDocumentEquality
    implements Equality<DictionariesRecord> {
  const DictionariesRecordDocumentEquality();

  @override
  bool equals(DictionariesRecord? e1, DictionariesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.typeName == e2?.typeName &&
        listEquality.equals(e1?.values, e2?.values);
  }

  @override
  int hash(DictionariesRecord? e) =>
      const ListEquality().hash([e?.typeName, e?.values]);

  @override
  bool isValidKey(Object? o) => o is DictionariesRecord;
}
