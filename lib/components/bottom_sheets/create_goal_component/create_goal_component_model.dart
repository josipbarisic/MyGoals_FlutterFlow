import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'create_goal_component_widget.dart' show CreateGoalComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateGoalComponentModel
    extends FlutterFlowModel<CreateGoalComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for GoalTitle widget.
  FocusNode? goalTitleFocusNode;
  TextEditingController? goalTitleController;
  String? Function(BuildContext, String?)? goalTitleControllerValidator;
  String? _goalTitleControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for GoalDescription widget.
  FocusNode? goalDescriptionFocusNode;
  TextEditingController? goalDescriptionController;
  String? Function(BuildContext, String?)? goalDescriptionControllerValidator;
  String? _goalDescriptionControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    goalTitleControllerValidator = _goalTitleControllerValidator;
    goalDescriptionControllerValidator = _goalDescriptionControllerValidator;
  }

  void dispose() {
    goalTitleFocusNode?.dispose();
    goalTitleController?.dispose();

    goalDescriptionFocusNode?.dispose();
    goalDescriptionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
