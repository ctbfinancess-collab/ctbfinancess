import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'complete_profile_model.dart';
export 'complete_profile_model.dart';

class CompleteProfileWidget extends StatefulWidget {
  const CompleteProfileWidget({
    super.key,
    required this.email,
    required this.password,
    required this.code,
  });

  final String? email;
  final String? password;
  final String? code;

  static String routeName = 'completeProfile';
  static String routePath = '/completeProfile';

  @override
  State<CompleteProfileWidget> createState() => _CompleteProfileWidgetState();
}

class _CompleteProfileWidgetState extends State<CompleteProfileWidget>
    with TickerProviderStateMixin {
  late CompleteProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompleteProfileModel());

    _model.yourNameTextController1 ??= TextEditingController();
    _model.yourNameFocusNode1 ??= FocusNode();

    _model.dateofbirthTextController1 ??= TextEditingController();
    _model.dateofbirthFocusNode1 ??= FocusNode();

    _model.dateofbirthMask1 = MaskTextInputFormatter(mask: '##/##/####');
    _model.cellphoneTextController1 ??= TextEditingController();
    _model.cellphoneFocusNode1 ??= FocusNode();

    _model.passportTextController1 ??= TextEditingController();
    _model.passportFocusNode1 ??= FocusNode();

    _model.passportExpirationDateTextController1 ??= TextEditingController();
    _model.passportExpirationDateFocusNode1 ??= FocusNode();

    _model.passportExpirationDateMask1 =
        MaskTextInputFormatter(mask: '##/##/####');
    _model.addressTextController1 ??= TextEditingController();
    _model.addressFocusNode1 ??= FocusNode();

    _model.residencenumberTextController1 ??= TextEditingController();
    _model.residencenumberFocusNode1 ??= FocusNode();

    _model.cityTextController1 ??= TextEditingController();
    _model.cityFocusNode1 ??= FocusNode();

    _model.zIPCodeTextController1 ??= TextEditingController();
    _model.zIPCodeFocusNode1 ??= FocusNode();

    _model.yourNameTextController2 ??= TextEditingController();
    _model.yourNameFocusNode2 ??= FocusNode();

    _model.dateofbirthTextController2 ??= TextEditingController();
    _model.dateofbirthFocusNode2 ??= FocusNode();

    _model.dateofbirthMask2 = MaskTextInputFormatter(mask: '##/##/####');
    _model.cellphoneTextController2 ??= TextEditingController();
    _model.cellphoneFocusNode2 ??= FocusNode();

    _model.passportTextController2 ??= TextEditingController();
    _model.passportFocusNode2 ??= FocusNode();

    _model.passportExpirationDateTextController2 ??= TextEditingController();
    _model.passportExpirationDateFocusNode2 ??= FocusNode();

    _model.passportExpirationDateMask2 =
        MaskTextInputFormatter(mask: '##/##/####');
    _model.addressTextController2 ??= TextEditingController();
    _model.addressFocusNode2 ??= FocusNode();

    _model.residencenumberTextController2 ??= TextEditingController();
    _model.residencenumberFocusNode2 ??= FocusNode();

    _model.cityTextController2 ??= TextEditingController();
    _model.cityFocusNode2 ??= FocusNode();

    _model.zIPCodeTextController2 ??= TextEditingController();
    _model.zIPCodeFocusNode2 ??= FocusNode();

    animationsMap.addAll({
      'circleImageOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 19.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'dropDownOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'dropDownOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation9': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.bounceOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.bounceOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'circleImageOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 19.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation10': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation11': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation12': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'dropDownOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation13': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation14': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation15': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation16': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation17': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'dropDownOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation18': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.bounceOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.bounceOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SingleChildScrollView(
        primary: false,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/WhatsApp_Image_2024-07-09_at_23.29.54_(1).jpeg',
                          ).image,
                        ),
                      ),
                      child: SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              decoration: BoxDecoration(),
                            ),
                            DragTarget<String>(
                              builder: (context, _, __) {
                                return Container(
                                  decoration: BoxDecoration(),
                                );
                              },
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 4.0, 4.0, 4.0),
                              child: SingleChildScrollView(
                                primary: false,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 16.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 30.0,
                                                                0.0, 10.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'zdskrw0p' /* Complete Profile */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineSmall
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .fontStyle,
                                                                ),
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFF262D34),
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                          color:
                                                              Color(0xFFA74DC9),
                                                        ),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  2.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              final selectedMedia =
                                                                  await selectMedia(
                                                                maxWidth:
                                                                    500.00,
                                                                maxHeight:
                                                                    500.00,
                                                                multiImage:
                                                                    false,
                                                              );
                                                              if (selectedMedia !=
                                                                      null &&
                                                                  selectedMedia.every((m) =>
                                                                      validateFileFormat(
                                                                          m.storagePath,
                                                                          context))) {
                                                                safeSetState(() =>
                                                                    _model.isDataUploading_uploadData6uu =
                                                                        true);
                                                                var selectedUploadedFiles =
                                                                    <FFUploadedFile>[];

                                                                var downloadUrls =
                                                                    <String>[];
                                                                try {
                                                                  selectedUploadedFiles =
                                                                      selectedMedia
                                                                          .map((m) =>
                                                                              FFUploadedFile(
                                                                                name: m.storagePath.split('/').last,
                                                                                bytes: m.bytes,
                                                                                height: m.dimensions?.height,
                                                                                width: m.dimensions?.width,
                                                                                blurHash: m.blurHash,
                                                                                originalFilename: m.originalFilename,
                                                                              ))
                                                                          .toList();

                                                                  downloadUrls = (await Future
                                                                          .wait(
                                                                    selectedMedia
                                                                        .map(
                                                                      (m) async => await uploadData(
                                                                          m.storagePath,
                                                                          m.bytes),
                                                                    ),
                                                                  ))
                                                                      .where((u) =>
                                                                          u !=
                                                                          null)
                                                                      .map((u) =>
                                                                          u!)
                                                                      .toList();
                                                                } finally {
                                                                  _model.isDataUploading_uploadData6uu =
                                                                      false;
                                                                }
                                                                if (selectedUploadedFiles
                                                                            .length ==
                                                                        selectedMedia
                                                                            .length &&
                                                                    downloadUrls
                                                                            .length ==
                                                                        selectedMedia
                                                                            .length) {
                                                                  safeSetState(
                                                                      () {
                                                                    _model.uploadedLocalFile_uploadData6uu =
                                                                        selectedUploadedFiles
                                                                            .first;
                                                                    _model.uploadedFileUrl_uploadData6uu =
                                                                        downloadUrls
                                                                            .first;
                                                                  });
                                                                } else {
                                                                  safeSetState(
                                                                      () {});
                                                                  return;
                                                                }
                                                              }
                                                            },
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 100.0,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                valueOrDefault<
                                                                    String>(
                                                                  _model
                                                                      .uploadedFileUrl_uploadData6uu,
                                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amethyst-i05act/assets/1wywv4yl7r1i/Sem_nome_%5BTamanho_original%5D_(1).png',
                                                                ),
                                                              ),
                                                            ),
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'circleImageOnPageLoadAnimation1']!),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dt2vt40u' /* Upload a photo for us to easil... */,
                                                    ),
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'textOnPageLoadAnimation1']!),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .yourNameTextController1,
                                                      focusNode: _model
                                                          .yourNameFocusNode1,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'hn0pvwg9' /*  Name */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle:
                                                                        FontStyle
                                                                            .italic,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                ),
                                                        alignLabelWithHint:
                                                            false,
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          '3fuvhczm' /* Your Name */,
                                                        ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors.white,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: Colors.white,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    24.0,
                                                                    20.0,
                                                                    24.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      validator: _model
                                                          .yourNameTextController1Validator
                                                          .asValidator(context),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation1']!),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  20.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        child: TextFormField(
                                                          controller: _model
                                                              .dateofbirthTextController1,
                                                          focusNode: _model
                                                              .dateofbirthFocusNode1,
                                                          textCapitalization:
                                                              TextCapitalization
                                                                  .none,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                              'rtf01rb5' /* Date of Birth */,
                                                            ),
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .lexend(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Color(
                                                                          0xFF8B97A2),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall
                                                                          .fontStyle,
                                                                    ),
                                                            hintText:
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                              '27f6b5qd' /* Date of Your Birth */,
                                                            ),
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .lexend(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Color(
                                                                          0xFF8B97A2),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            filled: true,
                                                            fillColor:
                                                                Colors.white,
                                                            contentPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        24.0,
                                                                        20.0,
                                                                        24.0),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                          validator: _model
                                                              .dateofbirthTextController1Validator
                                                              .asValidator(
                                                                  context),
                                                          inputFormatters: [
                                                            _model
                                                                .dateofbirthMask1
                                                          ],
                                                        ),
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'textFieldOnPageLoadAnimation2']!),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .cellphoneTextController1,
                                                      focusNode: _model
                                                          .cellphoneFocusNode1,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'i4txfd3v' /* Cell Phone */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'cu8pg2iw' /* Your Cell Phone */,
                                                        ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: Colors.white,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    24.0,
                                                                    20.0,
                                                                    24.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      validator: _model
                                                          .cellphoneTextController1Validator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        if (!isAndroid &&
                                                            !isiOS)
                                                          TextInputFormatter
                                                              .withFunction(
                                                                  (oldValue,
                                                                      newValue) {
                                                            return TextEditingValue(
                                                              selection: newValue
                                                                  .selection,
                                                              text: newValue
                                                                  .text
                                                                  .toCapitalization(
                                                                      TextCapitalization
                                                                          .none),
                                                            );
                                                          }),
                                                      ],
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation3']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                0.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .nationalitValueController1 ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      options: [
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'v94q9obe' /* Afghanistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'yb8ofgwz' /* Albania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sw95weqb' /* Algeria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '24htstk5' /* Andorra */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lgt2toqh' /* Angola */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'h0240tky' /* Antigua and Barbuda */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'pfpm6awz' /* Argentina */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'soljkkj6' /* Armenia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1g0k3am6' /* Australia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'gn9uadw7' /* Austria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rvyf8sez' /* Azerbaijan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xn2yze1g' /* Bahamas */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3hsk6234' /* Bahrain */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hx3oysv0' /* Bangladesh */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'i550x7zv' /* Barbados */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'kf7ixh8q' /* Belarus */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ghqbdr9p' /* Belgium */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jc0sdc78' /* Belize */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'abdt8txm' /* Benin */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cz42g6oz' /* Bhutan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'eaie0sq2' /* Bolivia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u5dbonh7' /* Bosnia and Herzegovina */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xp2r05ha' /* Botswana */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'uz29m8sa' /* Brazil */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '162b3l4l' /* Brunei */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sgkl039k' /* Bulgaria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'kgnfi5ep' /* Burkina Faso */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rbxxhsf1' /* Burundi */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rkibp34s' /* Cabo Verde */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7j3fumnd' /* Cambodia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cg08s0re' /* Cameroon */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8qvl69wx' /* Canada */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'flpmx26k' /* Central African Republic */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wv93ze3t' /* Chad */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'c13yhkts' /* Chile */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3uirts7d' /* China */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'm5of0f1l' /* Colombia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9i9tfms8' /* Comoros */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ky9sd0qv' /* Congo */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'iw6f2dy5' /* Costa Rica */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'war8lxqb' /* Croatia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'px7h7oxq' /* Cuba */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2cmz4a0g' /* Cyprus */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ruyh8t65' /* Czech Republic */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'gsyp29vs' /* Denmark */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7ffui63v' /* Djibouti */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8bg8i7md' /* Dominica */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          't5vbfs3c' /* Dominican Republic */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'f0fz3lmb' /* East Timor (Timor-Leste) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vgt0ghy6' /* Ecuador */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9st1xyh5' /* Egypt */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'h8dzkkqx' /* El Salvador */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tg4rmdpk' /* Equatorial Guinea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '18mo2vaz' /* Eritrea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'v0to7xjy' /* Estonia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'myrsvy4e' /* Eswatini */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ouwymylb' /* Ethiopia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'emmi91pc' /* Fiji */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'shet1jpq' /* Finland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2djhqjib' /* France */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '06pafe2d' /* Gabon */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'i1evi047' /* Gambia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ztoaan54' /* Georgia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qm6jqtq6' /* Germany */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '13a647ik' /* Ghana */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u6y2c1yl' /* Greece */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9q0aasa2' /* Grenada */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dn09s7xx' /* Guatemala */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'azisr2t5' /* Guinea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '01x5yklu' /* Guinea-Bissau */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mff2tex7' /* Guyana */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'gwu1nb1l' /* Haiti */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7eflhx05' /* Honduras */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0w5pnx17' /* Hungary */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1o148fz7' /* Iceland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4lb5svzi' /* India */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nht0rqyi' /* Indonesia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9mpzwv8k' /* Iran */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'p1oi60pq' /* Iraq */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ppg1fom2' /* Ireland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'g04ed8ay' /* Israel */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mlafsssd' /* Italy */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'n806c9pa' /* Ivory Coast */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'efo5hdad' /* Jamaica */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'el7sbjv5' /* Japan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'd5sipb5c' /* Jordan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'pn37uilm' /* Kazakhstan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'knels6ty' /* Kenya */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4og06gw0' /* Kiribati */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ooo8ou2a' /* Korea, North */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bz7765ec' /* Korea, South */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'q9avdph0' /* Kosovo */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'whfyqjnx' /* Kuwait */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3yudh9rx' /* Kyrgyzstan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nydhtcbq' /* Laos */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sijyxwur' /* Latvia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fp9x1veh' /* Lebanon */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'duvsuzxy' /* Lesotho */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mmfxh49h' /* Liberia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9ldlfhpg' /* Libya */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wi4nkc62' /* Liechtenstein */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wmsnhdoo' /* Lithuania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'l12k7cas' /* Luxembourg */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9j568asc' /* Madagascar */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'td9qv02s' /* Malawi */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9cokc01l' /* Malaysia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '88k8bc0m' /* Maldives */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'e2khtmd2' /* Mali */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0059m0a1' /* Malta */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dsl2d8og' /* Marshall Islands */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fr689ngp' /* Mauritania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zigk9nzw' /* Mauritius */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cuvj1yu0' /* Mexico */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nu7ctx3u' /* Micronesia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dw0rkmir' /* Moldova */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xqcz4feo' /* Monaco */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zuui7qss' /* Mongolia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ebluvzvk' /* Montenegro */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'h166qrcj' /* Morocco */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mg0xwq20' /* Mozambique */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5idufgf7' /* Myanmar (Burma) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'c31uzb08' /* Namibia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0cg6559f' /* Nauru */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ipusiyl6' /* Nepal */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vv3con5g' /* Netherlands */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '75tay3ck' /* New Zealand */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'korcpjpk' /* Nicaragua */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'n5zx9z0x' /* Niger */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '316k5i6m' /* Nigeria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nzdmigol' /* North Macedonia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7d5x29gf' /* Norway */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8b72x81o' /* Oman */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'c44b6f1o' /* Pakistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hh8l3svg' /* Palau */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wdrbn74o' /* Panama */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          're3dvf01' /* Papua New Guinea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6u6vyjbh' /* Paraguay */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wk1rs55d' /* Peru */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7myz2od0' /* Philippines */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0virr66x' /* Poland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9bvyhug5' /* Portugal */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vgtgizgi' /* Qatar */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rzo2azjv' /* Romania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'n6hf0f2c' /* Russia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ipnb7v4f' /* Rwanda */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7f6yj21c' /* Saint Kitts and Nevis */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '91b8kgf9' /* Saint Lucia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dmt3stah' /* Saint Vincent and the Grenadin... */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2nfxd772' /* Samoa */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4jpp3972' /* San Marino */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'usemxeoe' /* Sao Tome and Principe */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '411pje04' /* Saudi Arabia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1ep63iw8' /* Senegal */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'gt9wpdrn' /* Serbia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '29gdi6dr' /* Seychelles */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ur1jnx20' /* Sierra Leone */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ktabbd49' /* Singapore */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1s2vnbj0' /* Slovakia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'c3hjylgm' /* Slovenia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0s86lvjr' /* Solomon Islands */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jgk71x2v' /* Somalia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xpbh0slf' /* South Africa */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tbxf8ily' /* South Sudan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ze7rlirh' /* Spain */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ttssa8fe' /* Sri Lanka */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'a56c7ahd' /* Sudan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1i70vzhi' /* Suriname */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4nyeyns1' /* Sweden */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6a1vigol' /* Switzerland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'phbcr50u' /* Syria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ggfa2713' /* Taiwan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'g0aks3xy' /* Tajikistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'krrhgiwq' /* Tanzania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0tmojx69' /* Thailand */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qfxiao0x' /* Togo */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'row9yod1' /* Tonga */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fha2so4m' /* Trinidad and Tobago */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2lhqtral' /* Tunisia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'r2b8zxm8' /* Turkey */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '06degc3e' /* Turkmenistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mzrls54a' /* Tuvalu */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'y297q36r' /* Uganda */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'njr8mjiv' /* Ukraine */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '642j3top' /* United Arab Emirates */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6mr9irgm' /* United Kingdom */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fqc2l7t1' /* United States */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7ga50iri' /* Uruguay */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '21c0lx4d' /* Uzbekistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ym3g0hxr' /* Vanuatu */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7wd2mpx9' /* Vatican City */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'g6qpfft5' /* Venezuela */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qgjln4wp' /* Vietnam */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8txk1bed' /* Yemen */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zplrl7ta' /* Zambia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mv2vo74d' /* Zimbabwe */,
                                                        )
                                                      ],
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.nationalitValue1 =
                                                                  val),
                                                      height: 56.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '3m8o9whq' /* Nationality */,
                                                      ),
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        size: 24.0,
                                                      ),
                                                      fillColor: Colors.white,
                                                      elevation: 2.0,
                                                      borderColor: Colors.white,
                                                      borderWidth: 2.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                      hidesUnderline: true,
                                                      isOverButton: true,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                      labelText: '',
                                                      labelTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'dropDownOnPageLoadAnimation1']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .passportTextController1,
                                                      focusNode: _model
                                                          .passportFocusNode1,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'yq7wrk8g' /* Passport */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'xixsplq9' /* Your Passport */,
                                                        ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: Colors.white,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    24.0,
                                                                    20.0,
                                                                    24.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      validator: _model
                                                          .passportTextController1Validator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        if (!isAndroid &&
                                                            !isiOS)
                                                          TextInputFormatter
                                                              .withFunction(
                                                                  (oldValue,
                                                                      newValue) {
                                                            return TextEditingValue(
                                                              selection: newValue
                                                                  .selection,
                                                              text: newValue
                                                                  .text
                                                                  .toCapitalization(
                                                                      TextCapitalization
                                                                          .none),
                                                            );
                                                          }),
                                                      ],
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation4']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .passportExpirationDateTextController1,
                                                      focusNode: _model
                                                          .passportExpirationDateFocusNode1,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'wgd7pm6w' /* Passport Expiration Date */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          '90qlv2dj' /* Expiration Date of Your Passpo... */,
                                                        ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: Colors.white,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    24.0,
                                                                    20.0,
                                                                    24.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      keyboardType:
                                                          TextInputType.number,
                                                      validator: _model
                                                          .passportExpirationDateTextController1Validator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        _model
                                                            .passportExpirationDateMask1
                                                      ],
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation5']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                0.0),
                                                    child: AuthUserStreamWidget(
                                                      builder: (context) =>
                                                          InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          final selectedMedia =
                                                              await selectMedia(
                                                            maxWidth: 500.00,
                                                            maxHeight: 500.00,
                                                            multiImage: false,
                                                          );
                                                          if (selectedMedia !=
                                                                  null &&
                                                              selectedMedia.every((m) =>
                                                                  validateFileFormat(
                                                                      m.storagePath,
                                                                      context))) {
                                                            safeSetState(() =>
                                                                _model.isDataUploading_uploadData2xg =
                                                                    true);
                                                            var selectedUploadedFiles =
                                                                <FFUploadedFile>[];

                                                            var downloadUrls =
                                                                <String>[];
                                                            try {
                                                              selectedUploadedFiles =
                                                                  selectedMedia
                                                                      .map((m) =>
                                                                          FFUploadedFile(
                                                                            name:
                                                                                m.storagePath.split('/').last,
                                                                            bytes:
                                                                                m.bytes,
                                                                            height:
                                                                                m.dimensions?.height,
                                                                            width:
                                                                                m.dimensions?.width,
                                                                            blurHash:
                                                                                m.blurHash,
                                                                            originalFilename:
                                                                                m.originalFilename,
                                                                          ))
                                                                      .toList();

                                                              downloadUrls =
                                                                  (await Future
                                                                          .wait(
                                                                selectedMedia
                                                                    .map(
                                                                  (m) async =>
                                                                      await uploadData(
                                                                          m.storagePath,
                                                                          m.bytes),
                                                                ),
                                                              ))
                                                                      .where((u) =>
                                                                          u !=
                                                                          null)
                                                                      .map((u) =>
                                                                          u!)
                                                                      .toList();
                                                            } finally {
                                                              _model.isDataUploading_uploadData2xg =
                                                                  false;
                                                            }
                                                            if (selectedUploadedFiles
                                                                        .length ==
                                                                    selectedMedia
                                                                        .length &&
                                                                downloadUrls
                                                                        .length ==
                                                                    selectedMedia
                                                                        .length) {
                                                              safeSetState(() {
                                                                _model.uploadedLocalFile_uploadData2xg =
                                                                    selectedUploadedFiles
                                                                        .first;
                                                                _model.uploadedFileUrl_uploadData2xg =
                                                                    downloadUrls
                                                                        .first;
                                                              });
                                                            } else {
                                                              safeSetState(
                                                                  () {});
                                                              return;
                                                            }
                                                          }
                                                        },
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.network(
                                                            valueOrDefault<
                                                                String>(
                                                              valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.copyofpassport,
                                                                  ''),
                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amethyst-i05act/assets/j6f640vjw6sj/Inserir_um_t%C3%ADtulo_(2).png',
                                                            ),
                                                            width: 397.0,
                                                            height: 60.0,
                                                            fit:
                                                                BoxFit.fitWidth,
                                                          ),
                                                        ),
                                                      ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'imageOnPageLoadAnimation1']!),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .addressTextController1,
                                                      focusNode: _model
                                                          .addressFocusNode1,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'pdjpnu02' /* Address */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'hiyhajar' /* Your Adress */,
                                                        ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: Colors.white,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    24.0,
                                                                    20.0,
                                                                    24.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      validator: _model
                                                          .addressTextController1Validator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        if (!isAndroid &&
                                                            !isiOS)
                                                          TextInputFormatter
                                                              .withFunction(
                                                                  (oldValue,
                                                                      newValue) {
                                                            return TextEditingValue(
                                                              selection: newValue
                                                                  .selection,
                                                              text: newValue
                                                                  .text
                                                                  .toCapitalization(
                                                                      TextCapitalization
                                                                          .none),
                                                            );
                                                          }),
                                                      ],
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation6']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .residencenumberTextController1,
                                                      focusNode: _model
                                                          .residencenumberFocusNode1,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'mrxg5ub4' /* Residence Number */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'dgja907a' /* Your Residence Number */,
                                                        ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: Colors.white,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    24.0,
                                                                    20.0,
                                                                    24.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      validator: _model
                                                          .residencenumberTextController1Validator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        if (!isAndroid &&
                                                            !isiOS)
                                                          TextInputFormatter
                                                              .withFunction(
                                                                  (oldValue,
                                                                      newValue) {
                                                            return TextEditingValue(
                                                              selection: newValue
                                                                  .selection,
                                                              text: newValue
                                                                  .text
                                                                  .toCapitalization(
                                                                      TextCapitalization
                                                                          .none),
                                                            );
                                                          }),
                                                      ],
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation7']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .cityTextController1,
                                                      focusNode:
                                                          _model.cityFocusNode1,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'b2ii83zh' /* City */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'm9k08fg1' /* Your City */,
                                                        ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: Colors.white,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    24.0,
                                                                    20.0,
                                                                    24.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      validator: _model
                                                          .cityTextController1Validator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        if (!isAndroid &&
                                                            !isiOS)
                                                          TextInputFormatter
                                                              .withFunction(
                                                                  (oldValue,
                                                                      newValue) {
                                                            return TextEditingValue(
                                                              selection: newValue
                                                                  .selection,
                                                              text: newValue
                                                                  .text
                                                                  .toCapitalization(
                                                                      TextCapitalization
                                                                          .none),
                                                            );
                                                          }),
                                                      ],
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation8']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                0.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .countryValueController1 ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      options: [
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'z3nus0m3' /* Afghanistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'r7n1v8xk' /* Albania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nq4kxp34' /* Algeria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'urpbtwdw' /* Andorra */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bv3veprj' /* Angola */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2iq09u0c' /* Antigua and Barbuda */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2gltlc4s' /* Argentina */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bd9714u9' /* Armenia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7ev2xowd' /* Australia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'n8k2fzaa' /* Austria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xa8ybnti' /* Azerbaijan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'yhn793sh' /* Bahamas */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'seawqyl6' /* Bahrain */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0kyiws44' /* Bangladesh */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'txrynyhh' /* Barbados */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'leobpp5w' /* Belarus */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fjmapezw' /* Belgium */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'k4l9zfoz' /* Belize */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ljhwzw7s' /* Benin */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'uq3a4hpu' /* Bhutan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'k3zgl066' /* Bolivia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'beu2bg7y' /* Bosnia and Herzegovina */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'elyeg2qq' /* Botswana */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'waptgbsm' /* Brazil */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sf8curl3' /* Brunei */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bd76wk3c' /* Bulgaria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5rv5mpy6' /* Burkina Faso */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mhn8hq8s' /* Burundi */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'y8t81jl7' /* Cabo Verde */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'j48wcrti' /* Cambodia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'znaa7b40' /* Cameroon */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '46izo86t' /* Canada */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mkx0vwrl' /* Central African Republic */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9x0l3qua' /* Chad */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6syq730a' /* Chile */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qsdtnyhg' /* China */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'su5ledml' /* Colombia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'f4tftyfn' /* Comoros */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tg1asnd1' /* Congo */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '14b7a1ao' /* Costa Rica */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6z7wo5tw' /* Croatia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'gbhinw05' /* Cuba */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fbfypw23' /* Cyprus */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '96izxbka' /* Czech Republic */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4283qmj4' /* Denmark */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9wbvorbk' /* Djibouti */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'd0ujypzj' /* Dominica */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cib64cjc' /* Dominican Republic */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'd9z0hava' /* East Timor (Timor-Leste) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ujgh41ce' /* Ecuador */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          's687tcoa' /* Egypt */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2qr0akzq' /* El Salvador */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'p96db29t' /* Equatorial Guinea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ulujouw5' /* Eritrea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'obh2istb' /* Estonia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4nr5ezol' /* Eswatini */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '63z4v21l' /* Ethiopia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jywk7ton' /* Fiji */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6rwl4vb9' /* Finland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'yum1bap6' /* France */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '02xgqor4' /* Gabon */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'h7t5hnqq' /* Gambia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ji1x5fit' /* Georgia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2a7wombq' /* Germany */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          's8rafg4w' /* Ghana */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3cdyb2vy' /* Greece */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          't66st3ib' /* Grenada */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'eqhu9cpi' /* Guatemala */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ubb0igr5' /* Guinea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wjs5txhk' /* Guinea-Bissau */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6x3n7ebm' /* Guyana */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rbsxnmvg' /* Haiti */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0b25ss4a' /* Honduras */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tmgwejsp' /* Hungary */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tyjfjjn6' /* Iceland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9oh4gysk' /* India */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3nvfoy4e' /* Indonesia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'm8y8bby9' /* Iran */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'iurkbypd' /* Iraq */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8a4lbwas' /* Ireland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8kyso8oq' /* Israel */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5r5q630z' /* Italy */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5myrr1xg' /* Ivory Coast */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rqyd330g' /* Jamaica */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'f33xf0o0' /* Japan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'p1luf7t2' /* Jordan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'd4pmibl9' /* Kazakhstan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qah3cbot' /* Kenya */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lxd9xb54' /* Kiribati */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6g6mqcs0' /* Korea, North */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'v1rbsln7' /* Korea, South */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'eil6sg62' /* Kosovo */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hhj6yky2' /* Kuwait */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lywxiduh' /* Kyrgyzstan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mxj8qk7u' /* Laos */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u6i3mefu' /* Latvia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '492e5wm7' /* Lebanon */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lz0ny859' /* Lesotho */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4pjx0ryk' /* Liberia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'h0tnci6d' /* Libya */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1dwzz0ke' /* Liechtenstein */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dfelw5m4' /* Lithuania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'v7nd55kt' /* Luxembourg */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'es2gm7by' /* Madagascar */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'iwakhrxl' /* Malawi */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2wlzttub' /* Malaysia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tcr5zibk' /* Maldives */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xnzvlwxu' /* Mali */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'm3qw44i8' /* Malta */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'te41cfpg' /* Marshall Islands */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fk2yt9sp' /* Mauritania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ev01g1op' /* Mauritius */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u16ru805' /* Mexico */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'poq3c96t' /* Micronesia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'm1bazrn4' /* Moldova */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'l1d8ien2' /* Monaco */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '399esfth' /* Mongolia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tu7ypl2e' /* Montenegro */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '30jjxthh' /* Morocco */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '11xlpr1g' /* Mozambique */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cjn5j39z' /* Myanmar (Burma) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'liyb9pz9' /* Namibia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rcjsjhx3' /* Nauru */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6e4581af' /* Nepal */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ryea02ks' /* Netherlands */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          't8q450vv' /* New Zealand */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '04p73yfm' /* Nicaragua */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vqgjcdzp' /* Niger */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'j8n7rdbe' /* Nigeria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u3a28p5x' /* North Macedonia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mt35vxjd' /* Norway */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'i2n1srfj' /* Oman */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '654uxa9b' /* Pakistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4iia425q' /* Palau */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'aoatw3sp' /* Panama */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '51angpcu' /* Papua New Guinea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'swf8c4kz' /* Paraguay */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ni0l701f' /* Peru */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vpb33uvg' /* Philippines */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xmf0p4ju' /* Poland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1l0pnokx' /* Portugal */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'p3nwg18g' /* Qatar */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dosarbom' /* Romania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          's1dq3o8n' /* Russia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ygtz8tnk' /* Rwanda */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'aj21rj33' /* Saint Kitts and Nevis */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1basmos3' /* Saint Lucia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'r0kywi18' /* Saint Vincent and the Grenadin... */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'inmnoyy7' /* Samoa */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '39c371tc' /* San Marino */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'giy8zndi' /* Sao Tome and Principe */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'eiuyjxeq' /* Saudi Arabia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qxx2qp21' /* Senegal */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0tajul1g' /* Serbia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zu21mgf0' /* Seychelles */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'owa7nfsu' /* Sierra Leone */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '11w7m9f5' /* Singapore */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6xmgo365' /* Slovakia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'x2zsjo40' /* Slovenia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3q8pwg9r' /* Solomon Islands */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vm0qeag2' /* Somalia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'us2fyp0o' /* South Africa */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fgggptv0' /* South Sudan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u1n8232c' /* Spain */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'llqn3qqt' /* Sri Lanka */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'k2411yid' /* Sudan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '07ec7g0c' /* Suriname */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ttdxkdda' /* Sweden */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'uczu96is' /* Switzerland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '334claih' /* Syria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9turqv5h' /* Taiwan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'b1jlpwjo' /* Tajikistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rbjt950k' /* Tanzania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1sdiw6gx' /* Thailand */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'r7ojq0qj' /* Togo */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'j6qxsvcz' /* Tonga */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'uimarx3r' /* Trinidad and Tobago */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'heftanqq' /* Tunisia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'v8dfdc3m' /* Turkey */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'c7idvqwm' /* Turkmenistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dskmeepk' /* Tuvalu */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wlaktkkf' /* Uganda */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '27ywpntq' /* Ukraine */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'o53cm4o4' /* United Arab Emirates */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sx2xide9' /* United Kingdom */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hpz15fg6' /* United States */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ybf3o2k3' /* Uruguay */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nf2k1ug1' /* Uzbekistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'e1ixkvpc' /* Vanuatu */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '43d413pl' /* Vatican City */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'b0notyc4' /* Venezuela */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cfcs67nn' /* Vietnam */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'axmzp3t3' /* Yemen */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vu2v4cbv' /* Zambia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'pltird3b' /* Zimbabwe */,
                                                        )
                                                      ],
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.countryValue1 =
                                                                  val),
                                                      height: 56.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'e40a8yhs' /* Country */,
                                                      ),
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        size: 24.0,
                                                      ),
                                                      fillColor: Colors.white,
                                                      elevation: 2.0,
                                                      borderColor: Colors.white,
                                                      borderWidth: 2.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                      hidesUnderline: true,
                                                      isOverButton: true,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                      labelText: '',
                                                      labelTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'dropDownOnPageLoadAnimation2']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .zIPCodeTextController1,
                                                      focusNode: _model
                                                          .zIPCodeFocusNode1,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          '2fcqryyl' /* Zip Code */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'fml5rj17' /* Your Zip Code */,
                                                        ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: Colors.white,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    24.0,
                                                                    20.0,
                                                                    24.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      validator: _model
                                                          .zIPCodeTextController1Validator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        if (!isAndroid &&
                                                            !isiOS)
                                                          TextInputFormatter
                                                              .withFunction(
                                                                  (oldValue,
                                                                      newValue) {
                                                            return TextEditingValue(
                                                              selection: newValue
                                                                  .selection,
                                                              text: newValue
                                                                  .text
                                                                  .toCapitalization(
                                                                      TextCapitalization
                                                                          .none),
                                                            );
                                                          }),
                                                      ],
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation9']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 20.0,
                                                                0.0, 0.0),
                                                    child: StreamBuilder<
                                                        UsersRecord>(
                                                      stream: UsersRecord
                                                          .getDocument(
                                                              currentUserReference!),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 40.0,
                                                              height: 40.0,
                                                              child:
                                                                  SpinKitCubeGrid(
                                                                color: Color(
                                                                    0xFFA74DC9),
                                                                size: 40.0,
                                                              ),
                                                            ),
                                                          );
                                                        }

                                                        final buttonLoginUsersRecord =
                                                            snapshot.data!;

                                                        return FFButtonWidget(
                                                          onPressed: () async {
                                                            if (_model.formKey
                                                                        .currentState ==
                                                                    null ||
                                                                !_model.formKey
                                                                    .currentState!
                                                                    .validate()) {
                                                              return;
                                                            }
                                                            if (_model.uploadedFileUrl_uploadData6uu ==
                                                                    null ||
                                                                _model
                                                                    .uploadedFileUrl_uploadData6uu
                                                                    .isEmpty) {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Add Profile Photo',
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                  ),
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          4000),
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF8A31B1),
                                                                ),
                                                              );
                                                              return;
                                                            }
                                                            if (_model
                                                                    .nationalitValue1 ==
                                                                null) {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Select Your Nationality',
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                  ),
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          4000),
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF8A31B1),
                                                                ),
                                                              );
                                                              return;
                                                            }
                                                            if (_model.uploadedFileUrl_uploadData2xg ==
                                                                    null ||
                                                                _model
                                                                    .uploadedFileUrl_uploadData2xg
                                                                    .isEmpty) {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Upload Your Passport Photo',
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                  ),
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          4000),
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF8A31B1),
                                                                ),
                                                              );
                                                              return;
                                                            }
                                                            if (_model
                                                                    .countryValue1 ==
                                                                null) {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Select Your Country',
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                  ),
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          4000),
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF8A31B1),
                                                                ),
                                                              );
                                                              return;
                                                            }

                                                            await buttonLoginUsersRecord
                                                                .reference
                                                                .update(
                                                                    createUsersRecordData(
                                                              photoUrl: _model
                                                                  .uploadedFileUrl_uploadData6uu,
                                                              displayName: _model
                                                                  .yourNameTextController1
                                                                  .text,
                                                              dateofbirth: _model
                                                                  .dateofbirthTextController1
                                                                  .text,
                                                              phoneNumber: _model
                                                                  .cellphoneTextController1
                                                                  .text,
                                                              nationality: _model
                                                                  .nationalitValue1,
                                                              passportnumber: _model
                                                                  .passportTextController1
                                                                  .text,
                                                              passportexpirationdate:
                                                                  _model
                                                                      .passportExpirationDateTextController1
                                                                      .text,
                                                              copyofpassport: _model
                                                                  .uploadedFileUrl_uploadData2xg,
                                                              address: _model
                                                                  .addressTextController1
                                                                  .text,
                                                              residencenumber:
                                                                  _model
                                                                      .residencenumberTextController1
                                                                      .text,
                                                              city: _model
                                                                  .cityTextController1
                                                                  .text,
                                                              country: _model
                                                                  .countryValue1,
                                                              zipcode: _model
                                                                  .zIPCodeTextController1
                                                                  .text,
                                                              accountNumberZloty:
                                                                  valueOrDefault<
                                                                      String>(
                                                                functions
                                                                    .newCustomFunction(),
                                                                '000000-1',
                                                              ),
                                                              accountNumberEuro:
                                                                  valueOrDefault<
                                                                      String>(
                                                                functions
                                                                    .newCustomFunctionEuro(),
                                                                '000000-2',
                                                              ),
                                                              accountNumberDollar:
                                                                  valueOrDefault<
                                                                      String>(
                                                                functions
                                                                    .newCustomFunctionDollar(),
                                                                '000000-3',
                                                              ),
                                                            ));

                                                            context.pushNamed(
                                                                TermsandconditionsWidget
                                                                    .routeName);
                                                          },
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            '8716r3co' /* Complete Profile */,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            width: 230.0,
                                                            height: 50.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: Color(
                                                                0xFFA74DC9),
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .lexend(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .textColor,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontStyle,
                                                                    ),
                                                            elevation: 3.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
                                                          ),
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'buttonOnPageLoadAnimation1']!);
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                ),
                                child: Image.network(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amethyst-i05act/assets/qil9gkqbkt5l/WhatsApp_Image_2024-07-10_at_18.33.12.jpeg',
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                  ))
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/WhatsApp_Image_2024-07-09_at_23.29.54_(1).jpeg',
                          ).image,
                        ),
                      ),
                      child: SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              decoration: BoxDecoration(),
                            ),
                            DragTarget<String>(
                              builder: (context, _, __) {
                                return Container(
                                  decoration: BoxDecoration(),
                                );
                              },
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 4.0, 4.0, 4.0),
                              child: SingleChildScrollView(
                                primary: false,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 16.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 30.0,
                                                                0.0, 10.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'uokmr3lf' /* Complete Profile */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineSmall
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .fontStyle,
                                                                ),
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFF262D34),
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                          color:
                                                              Color(0xFFA74DC9),
                                                        ),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  2.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              final selectedMedia =
                                                                  await selectMediaWithSourceBottomSheet(
                                                                context:
                                                                    context,
                                                                maxWidth:
                                                                    500.00,
                                                                maxHeight:
                                                                    500.00,
                                                                allowPhoto:
                                                                    true,
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .darkBackground,
                                                                textColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .textColor,
                                                                pickerFontFamily:
                                                                    'Lexend Deca',
                                                              );
                                                              if (selectedMedia !=
                                                                      null &&
                                                                  selectedMedia.every((m) =>
                                                                      validateFileFormat(
                                                                          m.storagePath,
                                                                          context))) {
                                                                safeSetState(() =>
                                                                    _model.isDataUploading_uploadDataAfu =
                                                                        true);
                                                                var selectedUploadedFiles =
                                                                    <FFUploadedFile>[];

                                                                var downloadUrls =
                                                                    <String>[];
                                                                try {
                                                                  showUploadMessage(
                                                                    context,
                                                                    'Uploading file...',
                                                                    showLoading:
                                                                        true,
                                                                  );
                                                                  selectedUploadedFiles =
                                                                      selectedMedia
                                                                          .map((m) =>
                                                                              FFUploadedFile(
                                                                                name: m.storagePath.split('/').last,
                                                                                bytes: m.bytes,
                                                                                height: m.dimensions?.height,
                                                                                width: m.dimensions?.width,
                                                                                blurHash: m.blurHash,
                                                                                originalFilename: m.originalFilename,
                                                                              ))
                                                                          .toList();

                                                                  downloadUrls = (await Future
                                                                          .wait(
                                                                    selectedMedia
                                                                        .map(
                                                                      (m) async => await uploadData(
                                                                          m.storagePath,
                                                                          m.bytes),
                                                                    ),
                                                                  ))
                                                                      .where((u) =>
                                                                          u !=
                                                                          null)
                                                                      .map((u) =>
                                                                          u!)
                                                                      .toList();
                                                                } finally {
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .hideCurrentSnackBar();
                                                                  _model.isDataUploading_uploadDataAfu =
                                                                      false;
                                                                }
                                                                if (selectedUploadedFiles
                                                                            .length ==
                                                                        selectedMedia
                                                                            .length &&
                                                                    downloadUrls
                                                                            .length ==
                                                                        selectedMedia
                                                                            .length) {
                                                                  safeSetState(
                                                                      () {
                                                                    _model.uploadedLocalFile_uploadDataAfu =
                                                                        selectedUploadedFiles
                                                                            .first;
                                                                    _model.uploadedFileUrl_uploadDataAfu =
                                                                        downloadUrls
                                                                            .first;
                                                                  });
                                                                  showUploadMessage(
                                                                      context,
                                                                      'Success!');
                                                                } else {
                                                                  safeSetState(
                                                                      () {});
                                                                  showUploadMessage(
                                                                      context,
                                                                      'Failed to upload data');
                                                                  return;
                                                                }
                                                              }
                                                            },
                                                            child: Container(
                                                              width: 120.0,
                                                              height: 120.0,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                valueOrDefault<
                                                                    String>(
                                                                  _model
                                                                      .uploadedFileUrl_uploadDataAfu,
                                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amethyst-i05act/assets/1wywv4yl7r1i/Sem_nome_%5BTamanho_original%5D_(1).png',
                                                                ),
                                                              ),
                                                            ),
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'circleImageOnPageLoadAnimation2']!),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'p4hc62rv' /* Upload a photo for us to easil... */,
                                                    ),
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'textOnPageLoadAnimation2']!),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                350.0,
                                                                20.0,
                                                                350.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .yourNameTextController2,
                                                      focusNode: _model
                                                          .yourNameFocusNode2,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'inbpc2ef' /*  Name */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle:
                                                                        FontStyle
                                                                            .italic,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                ),
                                                        alignLabelWithHint:
                                                            false,
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          '3dm0n0ar' /* Your Name */,
                                                        ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors.white,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: Colors.white,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    24.0,
                                                                    20.0,
                                                                    24.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 20.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      validator: _model
                                                          .yourNameTextController2Validator
                                                          .asValidator(context),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation10']!),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  350.0,
                                                                  20.0,
                                                                  350.0,
                                                                  0.0),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        child: TextFormField(
                                                          controller: _model
                                                              .dateofbirthTextController2,
                                                          focusNode: _model
                                                              .dateofbirthFocusNode2,
                                                          textCapitalization:
                                                              TextCapitalization
                                                                  .none,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                              'i92ktkgd' /* Date of Birth */,
                                                            ),
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .lexend(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Color(
                                                                          0xFF8B97A2),
                                                                      fontSize:
                                                                          20.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall
                                                                          .fontStyle,
                                                                    ),
                                                            hintText:
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                              'w10hy3fq' /* Date of Your Birth */,
                                                            ),
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .lexend(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Color(
                                                                          0xFF8B97A2),
                                                                      fontSize:
                                                                          20.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            filled: true,
                                                            fillColor:
                                                                Colors.white,
                                                            contentPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        24.0,
                                                                        20.0,
                                                                        24.0),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                fontSize: 20.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                          validator: _model
                                                              .dateofbirthTextController2Validator
                                                              .asValidator(
                                                                  context),
                                                          inputFormatters: [
                                                            _model
                                                                .dateofbirthMask2
                                                          ],
                                                        ),
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'textFieldOnPageLoadAnimation11']!),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                350.0,
                                                                20.0,
                                                                350.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .cellphoneTextController2,
                                                      focusNode: _model
                                                          .cellphoneFocusNode2,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'yxautr9e' /* Cell Phone */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'h3ovskkm' /* Your Cell Phone */,
                                                        ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: Colors.white,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    24.0,
                                                                    20.0,
                                                                    24.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                fontSize: 20.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      validator: _model
                                                          .cellphoneTextController2Validator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        if (!isAndroid &&
                                                            !isiOS)
                                                          TextInputFormatter
                                                              .withFunction(
                                                                  (oldValue,
                                                                      newValue) {
                                                            return TextEditingValue(
                                                              selection: newValue
                                                                  .selection,
                                                              text: newValue
                                                                  .text
                                                                  .toCapitalization(
                                                                      TextCapitalization
                                                                          .none),
                                                            );
                                                          }),
                                                      ],
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation12']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                350.0,
                                                                20.0,
                                                                350.0,
                                                                0.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .nationalitValueController2 ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      options: [
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8h4639no' /* Afghanistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lhamrhuk' /* Albania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'e19bd95v' /* Algeria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ao41gvlf' /* Andorra */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9id9175v' /* Angola */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wr1hula9' /* Antigua and Barbuda */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'usg1xsg0' /* Argentina */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'e9vqub6i' /* Armenia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'le6v4b4u' /* Australia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'eemd8blj' /* Austria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'v77q2jfr' /* Azerbaijan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'oaabszn8' /* Bahamas */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'g56o5wdx' /* Bahrain */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lfuvx6rz' /* Bangladesh */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'gmqdkdv0' /* Barbados */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'a6cz1vov' /* Belarus */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'aczgui15' /* Belgium */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8o7x6vd2' /* Belize */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '222x56pj' /* Benin */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'erqjeki6' /* Bhutan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wkvkkokn' /* Bolivia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1xrt2864' /* Bosnia and Herzegovina */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wwby1ggw' /* Botswana */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'q0ubcbwr' /* Brazil */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7skxmucz' /* Brunei */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0wsnwvb1' /* Bulgaria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5nnai5bt' /* Burkina Faso */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'y1xtjmds' /* Burundi */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8krl19co' /* Cabo Verde */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3xcuze4u' /* Cambodia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jkuhqvps' /* Cameroon */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cn49lo6f' /* Canada */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'y5mol5jp' /* Central African Republic */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'noj8wdv1' /* Chad */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'l8mplshm' /* Chile */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'b35b6cfg' /* China */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'unxitckr' /* Colombia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jqh3l66a' /* Comoros */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xgb09jvt' /* Congo */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'duxkknnn' /* Costa Rica */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '57gpohw4' /* Croatia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dk2ku68x' /* Cuba */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ib985rk5' /* Cyprus */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cqhykdvf' /* Czech Republic */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'm0c4vbku' /* Denmark */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'me6hezrt' /* Djibouti */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3hxsl2q6' /* Dominica */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'f4qu2sbr' /* Dominican Republic */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'uudylsi6' /* East Timor (Timor-Leste) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xqqxwyaw' /* Ecuador */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'n5c8dkn0' /* Egypt */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'gsuer7sl' /* El Salvador */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hozqr386' /* Equatorial Guinea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jd3rb9yg' /* Eritrea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '35i8nvmt' /* Estonia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wvmnywv0' /* Eswatini */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ffrdb5ec' /* Ethiopia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '05estqkd' /* Fiji */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6u337xcu' /* Finland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ldk3rdja' /* France */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'im6h2vye' /* Gabon */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '81th5y7k' /* Gambia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'y3rnjfu3' /* Georgia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ku69m9mm' /* Germany */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'kqaubsm5' /* Ghana */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wk6qq647' /* Greece */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0scwz68n' /* Grenada */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'kudlboep' /* Guatemala */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xb2r8fla' /* Guinea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'iyn5tw7t' /* Guinea-Bissau */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qi4aegoc' /* Guyana */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '578v9oin' /* Haiti */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zpqzcrkd' /* Honduras */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8edxmjp1' /* Hungary */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dscnqgj7' /* Iceland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rnkjk08b' /* India */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wwwmwdje' /* Indonesia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '58ddr7yp' /* Iran */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8m11tjo2' /* Iraq */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          's3wyhk6y' /* Ireland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2bj6e30n' /* Israel */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qppvv4t6' /* Italy */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zkn7tz6j' /* Ivory Coast */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '64leqqdv' /* Jamaica */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9zb5dbc2' /* Japan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'a9dqoh3b' /* Jordan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'of600dkp' /* Kazakhstan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mmxdvvy1' /* Kenya */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mv3b732z' /* Kiribati */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ja92mvns' /* Korea, North */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'q93ldg1q' /* Korea, South */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'henliewo' /* Kosovo */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '02xgcns6' /* Kuwait */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '15r593wu' /* Kyrgyzstan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'uymwjbfx' /* Laos */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'izbccy0k' /* Latvia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '25zo932a' /* Lebanon */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2g7e48zr' /* Lesotho */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xlez0klv' /* Liberia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vxdp5f60' /* Libya */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ntnpopwt' /* Liechtenstein */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3q50h3ny' /* Lithuania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bhoiuc57' /* Luxembourg */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'emy9hlos' /* Madagascar */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'kl0s0y8j' /* Malawi */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '70z45umc' /* Malaysia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'baje9o9m' /* Maldives */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3xpqkwyu' /* Mali */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1aaplwuu' /* Malta */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3pbpcc4b' /* Marshall Islands */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7xvve192' /* Mauritania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'w8xtvv70' /* Mauritius */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rgdlx95a' /* Mexico */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cvo3taiy' /* Micronesia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mid4f9sa' /* Moldova */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4fvlgyjt' /* Monaco */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'py9qqtst' /* Mongolia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'kslf0b32' /* Montenegro */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'quutazh3' /* Morocco */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'k9jn7qle' /* Mozambique */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'kbpyfj3r' /* Myanmar (Burma) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'b2tszehg' /* Namibia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'v44ufbbg' /* Nauru */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tk1f3udx' /* Nepal */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vwvh2q1a' /* Netherlands */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'r7yps5yq' /* New Zealand */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5ioqqt04' /* Nicaragua */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sfvpm0if' /* Niger */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lh8y4m33' /* Nigeria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zjgextov' /* North Macedonia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '067pcc6z' /* Norway */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'o0bhlf49' /* Oman */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2q9w166j' /* Pakistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vssvuv40' /* Palau */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rx7wz6iu' /* Panama */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'od8knz2n' /* Papua New Guinea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mto2a4rj' /* Paraguay */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7h196mgz' /* Peru */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lbxqz59o' /* Philippines */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5ywpb85f' /* Poland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4qgl8ftr' /* Portugal */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rye1dffb' /* Qatar */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'grzc571j' /* Romania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lomdqp2d' /* Russia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sa8coi3k' /* Rwanda */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0tuiczo8' /* Saint Kitts and Nevis */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '903k9y6d' /* Saint Lucia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6cvxct20' /* Saint Vincent and the Grenadin... */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0bjtw1ob' /* Samoa */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lgjvj4sg' /* San Marino */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rc2bhodw' /* Sao Tome and Principe */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hkv8cclp' /* Saudi Arabia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qagy7q1b' /* Senegal */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '095u82q7' /* Serbia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'udyomo5i' /* Seychelles */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6wcgomm2' /* Sierra Leone */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0nzprf5j' /* Singapore */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'y8vzxoa4' /* Slovakia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'pgteeeqt' /* Slovenia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4xn77mi8' /* Solomon Islands */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fs7n7yus' /* Somalia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'x284sz4k' /* South Africa */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mrn1r1qg' /* South Sudan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'du0oq8ma' /* Spain */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'izkf2zui' /* Sri Lanka */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'o7b88orc' /* Sudan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '58odr0lw' /* Suriname */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fu95qy0z' /* Sweden */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dhp0fdqh' /* Switzerland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hb7u1uva' /* Syria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'gh3wfkjd' /* Taiwan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ebcdc9yr' /* Tajikistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tz8pes0d' /* Tanzania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'l0xgmfy3' /* Thailand */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rr5tb6mr' /* Togo */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jrw7ciqv' /* Tonga */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'n4wcj5n6' /* Trinidad and Tobago */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8tky8vq2' /* Tunisia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6vro6ayd' /* Turkey */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4r1yg1u4' /* Turkmenistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'h0y7c817' /* Tuvalu */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'az6dfzu0' /* Uganda */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'y46fkzoa' /* Ukraine */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'h000pf7n' /* United Arab Emirates */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u6p5pqna' /* United Kingdom */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jfgt6fw6' /* United States */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fic87scm' /* Uruguay */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '71qkmot8' /* Uzbekistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '81l2hki0' /* Vanuatu */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u1e7jh3l' /* Vatican City */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cga4tvkh' /* Venezuela */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4tb5mpzc' /* Vietnam */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'kgxruyv9' /* Yemen */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9xqtogku' /* Zambia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u08gtcgr' /* Zimbabwe */,
                                                        )
                                                      ],
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.nationalitValue2 =
                                                                  val),
                                                      height: 66.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                fontSize: 20.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'i2h69r33' /* Nationality */,
                                                      ),
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        size: 24.0,
                                                      ),
                                                      fillColor: Colors.white,
                                                      elevation: 2.0,
                                                      borderColor: Colors.white,
                                                      borderWidth: 2.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  10.0,
                                                                  16.0,
                                                                  4.0),
                                                      hidesUnderline: true,
                                                      isOverButton: true,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                      labelText: '',
                                                      labelTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'dropDownOnPageLoadAnimation3']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                350.0,
                                                                20.0,
                                                                350.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .passportTextController2,
                                                      focusNode: _model
                                                          .passportFocusNode2,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'evoeehb3' /* Passport */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'vpj3t9tc' /* Your Passport */,
                                                        ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: Colors.white,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    24.0,
                                                                    20.0,
                                                                    24.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                fontSize: 20.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      validator: _model
                                                          .passportTextController2Validator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        if (!isAndroid &&
                                                            !isiOS)
                                                          TextInputFormatter
                                                              .withFunction(
                                                                  (oldValue,
                                                                      newValue) {
                                                            return TextEditingValue(
                                                              selection: newValue
                                                                  .selection,
                                                              text: newValue
                                                                  .text
                                                                  .toCapitalization(
                                                                      TextCapitalization
                                                                          .none),
                                                            );
                                                          }),
                                                      ],
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation13']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                350.0,
                                                                20.0,
                                                                350.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .passportExpirationDateTextController2,
                                                      focusNode: _model
                                                          .passportExpirationDateFocusNode2,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'r73zfy0g' /* Passport Expiration Date */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          '40ko8yxn' /* Expiration Date of Your Passpo... */,
                                                        ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: Colors.white,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    24.0,
                                                                    20.0,
                                                                    24.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                fontSize: 20.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      keyboardType:
                                                          TextInputType.number,
                                                      validator: _model
                                                          .passportExpirationDateTextController2Validator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        _model
                                                            .passportExpirationDateMask2
                                                      ],
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation14']!),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  20.0,
                                                                  20.0,
                                                                  0.0),
                                                      child:
                                                          AuthUserStreamWidget(
                                                        builder: (context) =>
                                                            InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            final selectedMedia =
                                                                await selectMedia(
                                                              maxWidth: 500.00,
                                                              maxHeight: 500.00,
                                                              multiImage: false,
                                                            );
                                                            if (selectedMedia !=
                                                                    null &&
                                                                selectedMedia.every((m) =>
                                                                    validateFileFormat(
                                                                        m.storagePath,
                                                                        context))) {
                                                              safeSetState(() =>
                                                                  _model.isDataUploading_uploadDataPvb =
                                                                      true);
                                                              var selectedUploadedFiles =
                                                                  <FFUploadedFile>[];

                                                              var downloadUrls =
                                                                  <String>[];
                                                              try {
                                                                selectedUploadedFiles =
                                                                    selectedMedia
                                                                        .map((m) =>
                                                                            FFUploadedFile(
                                                                              name: m.storagePath.split('/').last,
                                                                              bytes: m.bytes,
                                                                              height: m.dimensions?.height,
                                                                              width: m.dimensions?.width,
                                                                              blurHash: m.blurHash,
                                                                              originalFilename: m.originalFilename,
                                                                            ))
                                                                        .toList();

                                                                downloadUrls = (await Future
                                                                        .wait(
                                                                  selectedMedia
                                                                      .map(
                                                                    (m) async =>
                                                                        await uploadData(
                                                                            m.storagePath,
                                                                            m.bytes),
                                                                  ),
                                                                ))
                                                                    .where((u) =>
                                                                        u !=
                                                                        null)
                                                                    .map((u) =>
                                                                        u!)
                                                                    .toList();
                                                              } finally {
                                                                _model.isDataUploading_uploadDataPvb =
                                                                    false;
                                                              }
                                                              if (selectedUploadedFiles
                                                                          .length ==
                                                                      selectedMedia
                                                                          .length &&
                                                                  downloadUrls
                                                                          .length ==
                                                                      selectedMedia
                                                                          .length) {
                                                                safeSetState(
                                                                    () {
                                                                  _model.uploadedLocalFile_uploadDataPvb =
                                                                      selectedUploadedFiles
                                                                          .first;
                                                                  _model.uploadedFileUrl_uploadDataPvb =
                                                                      downloadUrls
                                                                          .first;
                                                                });
                                                              } else {
                                                                safeSetState(
                                                                    () {});
                                                                return;
                                                              }
                                                            }
                                                          },
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                Image.network(
                                                              valueOrDefault<
                                                                  String>(
                                                                valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.copyofpassport,
                                                                    ''),
                                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amethyst-i05act/assets/j6f640vjw6sj/Inserir_um_t%C3%ADtulo_(2).png',
                                                              ),
                                                              width: 397.0,
                                                              height: 65.0,
                                                              fit: BoxFit
                                                                  .fitWidth,
                                                              alignment:
                                                                  Alignment(
                                                                      0.0, 0.0),
                                                            ),
                                                          ),
                                                        ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'imageOnPageLoadAnimation2']!),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                350.0,
                                                                20.0,
                                                                350.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .addressTextController2,
                                                      focusNode: _model
                                                          .addressFocusNode2,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'tw97hcns' /* Address */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'fuwc7bv4' /* Your Adress */,
                                                        ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: Colors.white,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    24.0,
                                                                    20.0,
                                                                    24.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                fontSize: 20.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      validator: _model
                                                          .addressTextController2Validator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        if (!isAndroid &&
                                                            !isiOS)
                                                          TextInputFormatter
                                                              .withFunction(
                                                                  (oldValue,
                                                                      newValue) {
                                                            return TextEditingValue(
                                                              selection: newValue
                                                                  .selection,
                                                              text: newValue
                                                                  .text
                                                                  .toCapitalization(
                                                                      TextCapitalization
                                                                          .none),
                                                            );
                                                          }),
                                                      ],
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation15']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                350.0,
                                                                20.0,
                                                                350.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .residencenumberTextController2,
                                                      focusNode: _model
                                                          .residencenumberFocusNode2,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'u0hdk25f' /* Residence Number */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'zjsocx9x' /* Your Residence Number */,
                                                        ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: Colors.white,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    24.0,
                                                                    20.0,
                                                                    24.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                fontSize: 20.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      validator: _model
                                                          .residencenumberTextController2Validator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        if (!isAndroid &&
                                                            !isiOS)
                                                          TextInputFormatter
                                                              .withFunction(
                                                                  (oldValue,
                                                                      newValue) {
                                                            return TextEditingValue(
                                                              selection: newValue
                                                                  .selection,
                                                              text: newValue
                                                                  .text
                                                                  .toCapitalization(
                                                                      TextCapitalization
                                                                          .none),
                                                            );
                                                          }),
                                                      ],
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation16']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                350.0,
                                                                20.0,
                                                                350.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .cityTextController2,
                                                      focusNode:
                                                          _model.cityFocusNode2,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          '5ifxv1vb' /* City */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'vut3mn7n' /* Your City */,
                                                        ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: Colors.white,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    24.0,
                                                                    20.0,
                                                                    24.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                fontSize: 20.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      validator: _model
                                                          .cityTextController2Validator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        if (!isAndroid &&
                                                            !isiOS)
                                                          TextInputFormatter
                                                              .withFunction(
                                                                  (oldValue,
                                                                      newValue) {
                                                            return TextEditingValue(
                                                              selection: newValue
                                                                  .selection,
                                                              text: newValue
                                                                  .text
                                                                  .toCapitalization(
                                                                      TextCapitalization
                                                                          .none),
                                                            );
                                                          }),
                                                      ],
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation17']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                350.0,
                                                                20.0,
                                                                350.0,
                                                                0.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .countryValueController2 ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      options: [
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1k1qizi9' /* Afghanistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bye9qsfl' /* Albania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fb3jbbxp' /* Algeria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'uutqv2y3' /* Andorra */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cmemq59k' /* Angola */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hu4uz48n' /* Antigua and Barbuda */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cwglzx5h' /* Argentina */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1v9wni00' /* Armenia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'f8xgyhy2' /* Australia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'a3qb82cr' /* Austria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'iu8cq3hm' /* Azerbaijan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ct6bq188' /* Bahamas */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mkywohcr' /* Bahrain */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9189me3j' /* Bangladesh */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8sa7aum5' /* Barbados */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lcgnag1x' /* Belarus */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0y3blu2x' /* Belgium */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5ofiwpy0' /* Belize */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ex9a6jz2' /* Benin */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mw3eip33' /* Bhutan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '102rnoou' /* Bolivia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nmej3cgg' /* Bosnia and Herzegovina */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ufflf6kd' /* Botswana */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'so2ulsw3' /* Brazil */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bmg71ra5' /* Brunei */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'slz2kq86' /* Bulgaria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'k4qe2ncw' /* Burkina Faso */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xrz1kbdf' /* Burundi */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'yxry8v4b' /* Cabo Verde */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vjdbgom4' /* Cambodia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'g20642hc' /* Cameroon */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ce20undf' /* Canada */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'q0ds7xbp' /* Central African Republic */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3ctk467f' /* Chad */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lmmpd2r4' /* Chile */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4onhby13' /* China */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'j9qpawdb' /* Colombia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dnmreeoa' /* Comoros */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vvblqp09' /* Congo */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'uq3lso7m' /* Costa Rica */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '577ubqdz' /* Croatia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7tra3t5o' /* Cuba */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'z2zjumt2' /* Cyprus */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'v16hrj44' /* Czech Republic */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3dqqbhgf' /* Denmark */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fhjugnp0' /* Djibouti */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wykgxnyp' /* Dominica */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'k7p2jry0' /* Dominican Republic */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nhswqecv' /* East Timor (Timor-Leste) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ehttk3kj' /* Ecuador */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'owic2luj' /* Egypt */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'unsvxnfd' /* El Salvador */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0guogt5l' /* Equatorial Guinea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0slhapyi' /* Eritrea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zuiz3ad1' /* Estonia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jlia87ki' /* Eswatini */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'llzn1ins' /* Ethiopia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'z0ez45oc' /* Fiji */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3u5lpjyy' /* Finland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qa4uver8' /* France */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qjmfwh50' /* Gabon */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'v50elhub' /* Gambia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ml0ontdi' /* Georgia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'obce84wb' /* Germany */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xlnsj3hb' /* Ghana */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ry91i8dm' /* Greece */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zrhbclys' /* Grenada */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nesxpmiu' /* Guatemala */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0138036l' /* Guinea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ioom85by' /* Guinea-Bissau */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'km6hm2z3' /* Guyana */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vhtqlc5h' /* Haiti */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'k78qj0fv' /* Honduras */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'uzqpiy00' /* Hungary */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qcewx85k' /* Iceland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2kl8gguc' /* India */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rb3zt54h' /* Indonesia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'iou4kbna' /* Iran */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '67jf1jew' /* Iraq */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'kp5wn1ba' /* Ireland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8qu1jeux' /* Israel */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jmegmqqn' /* Italy */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'glsbj5ib' /* Ivory Coast */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9ul161qn' /* Jamaica */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1lryehje' /* Japan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7u6ahgws' /* Jordan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'votovqyi' /* Kazakhstan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '465e3bvt' /* Kenya */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'f1a4s9zy' /* Kiribati */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '02yb0me1' /* Korea, North */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u5cpan3n' /* Korea, South */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sw7bfjoo' /* Kosovo */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8kexe4sd' /* Kuwait */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hzkrel4w' /* Kyrgyzstan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nzhq6e46' /* Laos */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5kfymosk' /* Latvia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'w42pak15' /* Lebanon */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2knx5pz0' /* Lesotho */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'niq09ule' /* Liberia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lfy2vwd1' /* Libya */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fbh2p3mu' /* Liechtenstein */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          's266qrmb' /* Lithuania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vp3j3sdn' /* Luxembourg */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wdwl6kph' /* Madagascar */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'uiwvjq1g' /* Malawi */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0shnjtr8' /* Malaysia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'adzfrwf3' /* Maldives */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lo60l5w6' /* Mali */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fcq5u728' /* Malta */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'pqhwfdl3' /* Marshall Islands */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'diy0w3bx' /* Mauritania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tehul0f1' /* Mauritius */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sltnui2o' /* Mexico */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2f43rj5e' /* Micronesia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3zfrnupk' /* Moldova */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'x2kx7h7p' /* Monaco */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5mxe9b9b' /* Mongolia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'n8azhye5' /* Montenegro */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tmrxwkpf' /* Morocco */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jzrp5ucj' /* Mozambique */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1yckafjq' /* Myanmar (Burma) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dkv7n8m0' /* Namibia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rmwr2896' /* Nauru */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vn2d6w3e' /* Nepal */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nkivonin' /* Netherlands */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xyzjk1nd' /* New Zealand */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cdp8w7xm' /* Nicaragua */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6s7mpppo' /* Niger */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wxp69ara' /* Nigeria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'pva4piza' /* North Macedonia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'e66w99ye' /* Norway */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3tveh81o' /* Oman */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'y7vzzuzc' /* Pakistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2rvvk29o' /* Palau */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'uyk4yjvf' /* Panama */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'k2bfnnim' /* Papua New Guinea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'oxjud477' /* Paraguay */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zltjvn5h' /* Peru */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rs4iha6r' /* Philippines */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4ug4a77p' /* Poland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ypgltfz6' /* Portugal */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xife0bde' /* Qatar */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'h27042yb' /* Romania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jppvsfj4' /* Russia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lmec9lxh' /* Rwanda */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'j1xzqc20' /* Saint Kitts and Nevis */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '208bdmwq' /* Saint Lucia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sz3n10zm' /* Saint Vincent and the Grenadin... */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '15y8gbkc' /* Samoa */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'h8gqhwxi' /* San Marino */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jjc5qy2v' /* Sao Tome and Principe */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ncycfju8' /* Saudi Arabia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zd1sdh0x' /* Senegal */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'b7p7nt49' /* Serbia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'g71eyqje' /* Seychelles */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rf4ob1fh' /* Sierra Leone */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'blf2ckum' /* Singapore */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hzp0l06x' /* Slovakia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'n54zdizs' /* Slovenia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8oalba6v' /* Solomon Islands */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wbqjyupe' /* Somalia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'feu5mvtc' /* South Africa */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0mbd647j' /* South Sudan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'yae3alqn' /* Spain */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'iq4feh7m' /* Sri Lanka */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vjorqazl' /* Sudan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0fxtqbh3' /* Suriname */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wxr2w6x8' /* Sweden */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vi477emq' /* Switzerland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'gold9k4e' /* Syria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hgnlt6yl' /* Taiwan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '20omllwf' /* Tajikistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4xtsx786' /* Tanzania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lae2f9hr' /* Thailand */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vbjzfmfi' /* Togo */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          't14l42od' /* Tonga */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dh290pqz' /* Trinidad and Tobago */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'agk2vzl6' /* Tunisia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'o8e59vbf' /* Turkey */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ezbf1ftj' /* Turkmenistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bpny3uel' /* Tuvalu */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1yogzm64' /* Uganda */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ma4rb25y' /* Ukraine */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3fp2mhey' /* United Arab Emirates */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9zio2k1t' /* United Kingdom */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '25u7potw' /* United States */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fbq37mpc' /* Uruguay */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vquc5uw7' /* Uzbekistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u88eq3jg' /* Vanuatu */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'h8sm706l' /* Vatican City */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'f56xzynb' /* Venezuela */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'e650yv7m' /* Vietnam */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '726226gp' /* Yemen */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3gipjrhy' /* Zambia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ihxiuz0m' /* Zimbabwe */,
                                                        )
                                                      ],
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.countryValue2 =
                                                                  val),
                                                      height: 66.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                fontSize: 20.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'fhao8npu' /* Country */,
                                                      ),
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        size: 24.0,
                                                      ),
                                                      fillColor: Colors.white,
                                                      elevation: 2.0,
                                                      borderColor: Colors.white,
                                                      borderWidth: 2.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  10.0,
                                                                  16.0,
                                                                  4.0),
                                                      hidesUnderline: true,
                                                      isOverButton: true,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                      labelText: '',
                                                      labelTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'dropDownOnPageLoadAnimation4']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                350.0,
                                                                20.0,
                                                                350.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .zIPCodeTextController2,
                                                      focusNode: _model
                                                          .zIPCodeFocusNode2,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'l8eb0q37' /* Zip Code */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'nxnpl4ol' /* Your Zip Code */,
                                                        ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: Colors.white,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    24.0,
                                                                    20.0,
                                                                    24.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                fontSize: 20.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      validator: _model
                                                          .zIPCodeTextController2Validator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        if (!isAndroid &&
                                                            !isiOS)
                                                          TextInputFormatter
                                                              .withFunction(
                                                                  (oldValue,
                                                                      newValue) {
                                                            return TextEditingValue(
                                                              selection: newValue
                                                                  .selection,
                                                              text: newValue
                                                                  .text
                                                                  .toCapitalization(
                                                                      TextCapitalization
                                                                          .none),
                                                            );
                                                          }),
                                                      ],
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation18']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 20.0,
                                                                0.0, 0.0),
                                                    child: StreamBuilder<
                                                        UsersRecord>(
                                                      stream: UsersRecord
                                                          .getDocument(
                                                              currentUserReference!),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 40.0,
                                                              height: 40.0,
                                                              child:
                                                                  SpinKitCubeGrid(
                                                                color: Color(
                                                                    0xFFA74DC9),
                                                                size: 40.0,
                                                              ),
                                                            ),
                                                          );
                                                        }

                                                        final buttonLoginUsersRecord =
                                                            snapshot.data!;

                                                        return FFButtonWidget(
                                                          onPressed: () async {
                                                            if (_model.formKey
                                                                        .currentState ==
                                                                    null ||
                                                                !_model.formKey
                                                                    .currentState!
                                                                    .validate()) {
                                                              return;
                                                            }
                                                            if (_model.uploadedFileUrl_uploadData6uu ==
                                                                    null ||
                                                                _model
                                                                    .uploadedFileUrl_uploadData6uu
                                                                    .isEmpty) {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Add Profile Photo',
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                  ),
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          4000),
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF8A31B1),
                                                                ),
                                                              );
                                                              return;
                                                            }
                                                            if (_model
                                                                    .nationalitValue1 ==
                                                                null) {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Select Your Nationality',
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                  ),
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          4000),
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF8A31B1),
                                                                ),
                                                              );
                                                              return;
                                                            }
                                                            if (_model.uploadedFileUrl_uploadData2xg ==
                                                                    null ||
                                                                _model
                                                                    .uploadedFileUrl_uploadData2xg
                                                                    .isEmpty) {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Upload Your Passport Photo',
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                  ),
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          4000),
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF8A31B1),
                                                                ),
                                                              );
                                                              return;
                                                            }
                                                            if (_model
                                                                    .countryValue1 ==
                                                                null) {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Select Your Country',
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                  ),
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          4000),
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF8A31B1),
                                                                ),
                                                              );
                                                              return;
                                                            }

                                                            await buttonLoginUsersRecord
                                                                .reference
                                                                .update(
                                                                    createUsersRecordData(
                                                              photoUrl: _model
                                                                  .uploadedFileUrl_uploadDataAfu,
                                                              displayName: _model
                                                                  .yourNameTextController2
                                                                  .text,
                                                              dateofbirth: _model
                                                                  .dateofbirthTextController2
                                                                  .text,
                                                              phoneNumber: _model
                                                                  .cellphoneTextController2
                                                                  .text,
                                                              nationality: _model
                                                                  .nationalitValue2,
                                                              passportnumber: _model
                                                                  .passportTextController2
                                                                  .text,
                                                              passportexpirationdate:
                                                                  _model
                                                                      .passportExpirationDateTextController2
                                                                      .text,
                                                              copyofpassport: _model
                                                                  .uploadedFileUrl_uploadDataPvb,
                                                              address: _model
                                                                  .addressTextController2
                                                                  .text,
                                                              residencenumber:
                                                                  _model
                                                                      .residencenumberTextController2
                                                                      .text,
                                                              city: _model
                                                                  .cityTextController2
                                                                  .text,
                                                              country: _model
                                                                  .countryValue2,
                                                              zipcode: _model
                                                                  .zIPCodeTextController2
                                                                  .text,
                                                              accountNumberZloty:
                                                                  valueOrDefault<
                                                                      String>(
                                                                functions
                                                                    .newCustomFunction(),
                                                                '000000-1',
                                                              ),
                                                              accountNumberEuro:
                                                                  valueOrDefault<
                                                                      String>(
                                                                functions
                                                                    .newCustomFunctionEuro(),
                                                                '000000-2',
                                                              ),
                                                              accountNumberDollar:
                                                                  valueOrDefault<
                                                                      String>(
                                                                functions
                                                                    .newCustomFunctionDollar(),
                                                                '000000-3',
                                                              ),
                                                            ));

                                                            context.pushNamed(
                                                                TermsandconditionsWidget
                                                                    .routeName);
                                                          },
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'y7dir54a' /* Complete Profile */,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            width: 230.0,
                                                            height: 50.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: Color(
                                                                0xFFA74DC9),
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .lexend(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .textColor,
                                                                      fontSize:
                                                                          20.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontStyle,
                                                                    ),
                                                            elevation: 3.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
                                                          ),
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'buttonOnPageLoadAnimation2']!);
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                ),
                                child: Image.network(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amethyst-i05act/assets/qil9gkqbkt5l/WhatsApp_Image_2024-07-10_at_18.33.12.jpeg',
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
