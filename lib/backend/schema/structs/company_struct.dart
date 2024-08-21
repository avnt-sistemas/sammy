// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyStruct extends FFFirebaseStruct {
  CompanyStruct({
    String? name,
    String? status,
    List<DocumentReference>? employees,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _status = status,
        _employees = employees,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "employees" field.
  List<DocumentReference>? _employees;
  List<DocumentReference> get employees => _employees ?? const [];
  set employees(List<DocumentReference>? val) => _employees = val;

  void updateEmployees(Function(List<DocumentReference>) updateFn) {
    updateFn(_employees ??= []);
  }

  bool hasEmployees() => _employees != null;

  static CompanyStruct fromMap(Map<String, dynamic> data) => CompanyStruct(
        name: data['name'] as String?,
        status: data['status'] as String?,
        employees: getDataList(data['employees']),
      );

  static CompanyStruct? maybeFromMap(dynamic data) =>
      data is Map ? CompanyStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'status': _status,
        'employees': _employees,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'employees': serializeParam(
          _employees,
          ParamType.DocumentReference,
          isList: true,
        ),
      }.withoutNulls;

  static CompanyStruct fromSerializableMap(Map<String, dynamic> data) =>
      CompanyStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        employees: deserializeParam<DocumentReference>(
          data['employees'],
          ParamType.DocumentReference,
          true,
          collectionNamePath: ['users'],
        ),
      );

  @override
  String toString() => 'CompanyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CompanyStruct &&
        name == other.name &&
        status == other.status &&
        listEquality.equals(employees, other.employees);
  }

  @override
  int get hashCode => const ListEquality().hash([name, status, employees]);
}

CompanyStruct createCompanyStruct({
  String? name,
  String? status,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CompanyStruct(
      name: name,
      status: status,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CompanyStruct? updateCompanyStruct(
  CompanyStruct? company, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    company
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCompanyStructData(
  Map<String, dynamic> firestoreData,
  CompanyStruct? company,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (company == null) {
    return;
  }
  if (company.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && company.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final companyData = getCompanyFirestoreData(company, forFieldValue);
  final nestedData = companyData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = company.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCompanyFirestoreData(
  CompanyStruct? company, [
  bool forFieldValue = false,
]) {
  if (company == null) {
    return {};
  }
  final firestoreData = mapToFirestore(company.toMap());

  // Add any Firestore field values
  company.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCompanyListFirestoreData(
  List<CompanyStruct>? companys,
) =>
    companys?.map((e) => getCompanyFirestoreData(e, true)).toList() ?? [];
