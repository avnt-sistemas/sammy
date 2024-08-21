import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future afterSignInUp(BuildContext context) async {
  if (valueOrDefault(currentUserDocument?.role, '') == null ||
      valueOrDefault(currentUserDocument?.role, '') == '') {
    context.pushNamed('FirstAccess');
  } else {
    context.pushNamed('ListBookAppointment');
  }
}
