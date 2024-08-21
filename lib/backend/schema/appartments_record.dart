import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppartmentsRecord extends FirestoreRecord {
  AppartmentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "doubleBed" field.
  bool? _doubleBed;
  bool get doubleBed => _doubleBed ?? false;
  bool hasDoubleBed() => _doubleBed != null;

  // "airConditioner" field.
  bool? _airConditioner;
  bool get airConditioner => _airConditioner ?? false;
  bool hasAirConditioner() => _airConditioner != null;

  // "minibar" field.
  bool? _minibar;
  bool get minibar => _minibar ?? false;
  bool hasMinibar() => _minibar != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "deletedAt" field.
  DateTime? _deletedAt;
  DateTime? get deletedAt => _deletedAt;
  bool hasDeletedAt() => _deletedAt != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
    _status = snapshotData['status'] as String?;
    _image = snapshotData['image'] as String?;
    _doubleBed = snapshotData['doubleBed'] as bool?;
    _airConditioner = snapshotData['airConditioner'] as bool?;
    _minibar = snapshotData['minibar'] as bool?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _deletedAt = snapshotData['deletedAt'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('appartments')
          : FirebaseFirestore.instance.collectionGroup('appartments');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('appartments').doc(id);

  static Stream<AppartmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AppartmentsRecord.fromSnapshot(s));

  static Future<AppartmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AppartmentsRecord.fromSnapshot(s));

  static AppartmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AppartmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AppartmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AppartmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AppartmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AppartmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppartmentsRecordData({
  String? description,
  String? status,
  String? image,
  bool? doubleBed,
  bool? airConditioner,
  bool? minibar,
  DateTime? createdAt,
  DateTime? updatedAt,
  DateTime? deletedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
      'status': status,
      'image': image,
      'doubleBed': doubleBed,
      'airConditioner': airConditioner,
      'minibar': minibar,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'deletedAt': deletedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class AppartmentsRecordDocumentEquality implements Equality<AppartmentsRecord> {
  const AppartmentsRecordDocumentEquality();

  @override
  bool equals(AppartmentsRecord? e1, AppartmentsRecord? e2) {
    return e1?.description == e2?.description &&
        e1?.status == e2?.status &&
        e1?.image == e2?.image &&
        e1?.doubleBed == e2?.doubleBed &&
        e1?.airConditioner == e2?.airConditioner &&
        e1?.minibar == e2?.minibar &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.deletedAt == e2?.deletedAt;
  }

  @override
  int hash(AppartmentsRecord? e) => const ListEquality().hash([
        e?.description,
        e?.status,
        e?.image,
        e?.doubleBed,
        e?.airConditioner,
        e?.minibar,
        e?.createdAt,
        e?.updatedAt,
        e?.deletedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is AppartmentsRecord;
}
