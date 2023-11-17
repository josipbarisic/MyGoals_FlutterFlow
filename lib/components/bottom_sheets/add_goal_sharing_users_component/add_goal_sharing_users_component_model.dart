import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'add_goal_sharing_users_component_widget.dart'
    show AddGoalSharingUsersComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddGoalSharingUsersComponentModel
    extends FlutterFlowModel<AddGoalSharingUsersComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for GoalSharingUserEmail widget.
  FocusNode? goalSharingUserEmailFocusNode;
  TextEditingController? goalSharingUserEmailController;
  String? Function(BuildContext, String?)?
      goalSharingUserEmailControllerValidator;
  String? _goalSharingUserEmailControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    goalSharingUserEmailControllerValidator =
        _goalSharingUserEmailControllerValidator;
  }

  void dispose() {
    goalSharingUserEmailFocusNode?.dispose();
    goalSharingUserEmailController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
