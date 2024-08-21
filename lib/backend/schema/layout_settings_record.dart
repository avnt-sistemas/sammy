import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LayoutSettingsRecord extends FirestoreRecord {
  LayoutSettingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "backgroundColor" field.
  Color? _backgroundColor;
  Color? get backgroundColor => _backgroundColor;
  bool hasBackgroundColor() => _backgroundColor != null;

  // "padding" field.
  List<int>? _padding;
  List<int> get padding => _padding ?? const [];
  bool hasPadding() => _padding != null;

  // "margin" field.
  List<int>? _margin;
  List<int> get margin => _margin ?? const [];
  bool hasMargin() => _margin != null;

  // "favicon" field.
  String? _favicon;
  String get favicon => _favicon ?? '';
  bool hasFavicon() => _favicon != null;

  // "iosAppIcon" field.
  String? _iosAppIcon;
  String get iosAppIcon => _iosAppIcon ?? '';
  bool hasIosAppIcon() => _iosAppIcon != null;

  // "iosAppLogo" field.
  String? _iosAppLogo;
  String get iosAppLogo => _iosAppLogo ?? '';
  bool hasIosAppLogo() => _iosAppLogo != null;

  // "androidAppIcon" field.
  String? _androidAppIcon;
  String get androidAppIcon => _androidAppIcon ?? '';
  bool hasAndroidAppIcon() => _androidAppIcon != null;

  // "androidAppLogo" field.
  String? _androidAppLogo;
  String get androidAppLogo => _androidAppLogo ?? '';
  bool hasAndroidAppLogo() => _androidAppLogo != null;

  // "appTitle" field.
  String? _appTitle;
  String get appTitle => _appTitle ?? '';
  bool hasAppTitle() => _appTitle != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "keywords" field.
  List<String>? _keywords;
  List<String> get keywords => _keywords ?? const [];
  bool hasKeywords() => _keywords != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _backgroundColor = getSchemaColor(snapshotData['backgroundColor']);
    _padding = getDataList(snapshotData['padding']);
    _margin = getDataList(snapshotData['margin']);
    _favicon = snapshotData['favicon'] as String?;
    _iosAppIcon = snapshotData['iosAppIcon'] as String?;
    _iosAppLogo = snapshotData['iosAppLogo'] as String?;
    _androidAppIcon = snapshotData['androidAppIcon'] as String?;
    _androidAppLogo = snapshotData['androidAppLogo'] as String?;
    _appTitle = snapshotData['appTitle'] as String?;
    _description = snapshotData['description'] as String?;
    _keywords = getDataList(snapshotData['keywords']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('layoutSettings')
          : FirebaseFirestore.instance.collectionGroup('layoutSettings');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('layoutSettings').doc(id);

  static Stream<LayoutSettingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LayoutSettingsRecord.fromSnapshot(s));

  static Future<LayoutSettingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LayoutSettingsRecord.fromSnapshot(s));

  static LayoutSettingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LayoutSettingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LayoutSettingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LayoutSettingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LayoutSettingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LayoutSettingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLayoutSettingsRecordData({
  Color? backgroundColor,
  String? favicon,
  String? iosAppIcon,
  String? iosAppLogo,
  String? androidAppIcon,
  String? androidAppLogo,
  String? appTitle,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'backgroundColor': backgroundColor,
      'favicon': favicon,
      'iosAppIcon': iosAppIcon,
      'iosAppLogo': iosAppLogo,
      'androidAppIcon': androidAppIcon,
      'androidAppLogo': androidAppLogo,
      'appTitle': appTitle,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class LayoutSettingsRecordDocumentEquality
    implements Equality<LayoutSettingsRecord> {
  const LayoutSettingsRecordDocumentEquality();

  @override
  bool equals(LayoutSettingsRecord? e1, LayoutSettingsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.backgroundColor == e2?.backgroundColor &&
        listEquality.equals(e1?.padding, e2?.padding) &&
        listEquality.equals(e1?.margin, e2?.margin) &&
        e1?.favicon == e2?.favicon &&
        e1?.iosAppIcon == e2?.iosAppIcon &&
        e1?.iosAppLogo == e2?.iosAppLogo &&
        e1?.androidAppIcon == e2?.androidAppIcon &&
        e1?.androidAppLogo == e2?.androidAppLogo &&
        e1?.appTitle == e2?.appTitle &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.keywords, e2?.keywords);
  }

  @override
  int hash(LayoutSettingsRecord? e) => const ListEquality().hash([
        e?.backgroundColor,
        e?.padding,
        e?.margin,
        e?.favicon,
        e?.iosAppIcon,
        e?.iosAppLogo,
        e?.androidAppIcon,
        e?.androidAppLogo,
        e?.appTitle,
        e?.description,
        e?.keywords
      ]);

  @override
  bool isValidKey(Object? o) => o is LayoutSettingsRecord;
}
