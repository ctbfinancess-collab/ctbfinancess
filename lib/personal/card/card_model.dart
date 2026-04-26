import '/auth/firebase_auth/auth_util.dart';
import '/components/requestcardenter/requestcardenter_widget.dart';
import '/components/requestcardenter_computer/requestcardenter_computer_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'card_widget.dart' show CardWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_auth/local_auth.dart';
import 'package:provider/provider.dart';

class CardModel extends FlutterFlowModel<CardWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  bool biometricVerification = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
