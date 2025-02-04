import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/dialogs/confirm_appointment_delete_dialog/confirm_appointment_delete_dialog_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'dart:math';
import 'update_appointment_widget.dart' show UpdateAppointmentWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdateAppointmentModel extends FlutterFlowModel<UpdateAppointmentWidget> {
  ///  Local state fields for this page.

  DateTime? checkIn;

  ///  State fields for stateful widgets in this page.

  // State field(s) for appartment widget.
  String? appartmentValue;
  FormFieldController<String>? appartmentValueController;
  // State field(s) for occupant widget.
  FocusNode? occupantFocusNode;
  TextEditingController? occupantTextController;
  String? Function(BuildContext, String?)? occupantTextControllerValidator;
  // State field(s) for occupantPhone widget.
  FocusNode? occupantPhoneFocusNode;
  TextEditingController? occupantPhoneTextController;
  String? Function(BuildContext, String?)? occupantPhoneTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    occupantFocusNode?.dispose();
    occupantTextController?.dispose();

    occupantPhoneFocusNode?.dispose();
    occupantPhoneTextController?.dispose();
  }
}
