import '/flutter_flow/flutter_flow_util.dart';
import 'update_goal_component_widget.dart' show UpdateGoalComponentWidget;
import 'package:flutter/material.dart';

class UpdateGoalComponentModel
    extends FlutterFlowModel<UpdateGoalComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Switch widget.
  bool? switchValue;
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

  @override
  void initState(BuildContext context) {
    goalTitleControllerValidator = _goalTitleControllerValidator;
    goalDescriptionControllerValidator = _goalDescriptionControllerValidator;
  }

  @override
  void dispose() {
    goalTitleFocusNode?.dispose();
    goalTitleController?.dispose();

    goalDescriptionFocusNode?.dispose();
    goalDescriptionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
