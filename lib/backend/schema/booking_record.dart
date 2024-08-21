import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingRecord extends FirestoreRecord {
  BookingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "checkinTime" field.
  DateTime? _checkinTime;
  DateTime? get checkinTime => _checkinTime;
  bool hasCheckinTime() => _checkinTime != null;

  // "checkoutTime" field.
  DateTime? _checkoutTime;
  DateTime? get checkoutTime => _checkoutTime;
  bool hasCheckoutTime() => _checkoutTime != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "userInfo" field.
  DocumentReference? _userInfo;
  DocumentReference? get userInfo => _userInfo;
  bool hasUserInfo() => _userInfo != null;

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

  // "appartment" field.
  String? _appartment;
  String get appartment => _appartment ?? '';
  bool hasAppartment() => _appartment != null;

  // "appartmentData" field.
  DocumentReference? _appartmentData;
  DocumentReference? get appartmentData => _appartmentData;
  bool hasAppartmentData() => _appartmentData != null;

  // "occupant" field.
  String? _occupant;
  String get occupant => _occupant ?? '';
  bool hasOccupant() => _occupant != null;

  // "occupantPhone" field.
  String? _occupantPhone;
  String get occupantPhone => _occupantPhone ?? '';
  bool hasOccupantPhone() => _occupantPhone != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _checkinTime = snapshotData['checkinTime'] as DateTime?;
    _checkoutTime = snapshotData['checkoutTime'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _userInfo = snapshotData['userInfo'] as DocumentReference?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _deletedAt = snapshotData['deletedAt'] as DateTime?;
    _appartment = snapshotData['appartment'] as String?;
    _appartmentData = snapshotData['appartmentData'] as DocumentReference?;
    _occupant = snapshotData['occupant'] as String?;
    _occupantPhone = snapshotData['occupantPhone'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('booking')
          : FirebaseFirestore.instance.collectionGroup('booking');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('booking').doc(id);

  static Stream<BookingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingRecord.fromSnapshot(s));

  static Future<BookingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingRecord.fromSnapshot(s));

  static BookingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingRecordData({
  DateTime? checkinTime,
  DateTime? checkoutTime,
  String? status,
  DocumentReference? userInfo,
  DateTime? createdAt,
  DateTime? updatedAt,
  DateTime? deletedAt,
  String? appartment,
  DocumentReference? appartmentData,
  String? occupant,
  String? occupantPhone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'checkinTime': checkinTime,
      'checkoutTime': checkoutTime,
      'status': status,
      'userInfo': userInfo,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'deletedAt': deletedAt,
      'appartment': appartment,
      'appartmentData': appartmentData,
      'occupant': occupant,
      'occupantPhone': occupantPhone,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingRecordDocumentEquality implements Equality<BookingRecord> {
  const BookingRecordDocumentEquality();

  @override
  bool equals(BookingRecord? e1, BookingRecord? e2) {
    return e1?.checkinTime == e2?.checkinTime &&
        e1?.checkoutTime == e2?.checkoutTime &&
        e1?.status == e2?.status &&
        e1?.userInfo == e2?.userInfo &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.deletedAt == e2?.deletedAt &&
        e1?.appartment == e2?.appartment &&
        e1?.appartmentData == e2?.appartmentData &&
        e1?.occupant == e2?.occupant &&
        e1?.occupantPhone == e2?.occupantPhone;
  }

  @override
  int hash(BookingRecord? e) => const ListEquality().hash([
        e?.checkinTime,
        e?.checkoutTime,
        e?.status,
        e?.userInfo,
        e?.createdAt,
        e?.updatedAt,
        e?.deletedAt,
        e?.appartment,
        e?.appartmentData,
        e?.occupant,
        e?.occupantPhone
      ]);

  @override
  bool isValidKey(Object? o) => o is BookingRecord;
}
