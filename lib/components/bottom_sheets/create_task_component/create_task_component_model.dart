import '/flutter_flow/flutter_flow_util.dart';
import 'create_task_component_widget.dart' show CreateTaskComponentWidget;
import 'package:flutter/material.dart';

class CreateTaskComponentModel
    extends FlutterFlowModel<CreateTaskComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TaskTitle widget.
  FocusNode? taskTitleFocusNode;
  TextEditingController? taskTitleController;
  String? Function(BuildContext, String?)? taskTitleControllerValidator;
  String? _taskTitleControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }

    return null;
  }

  // State field(s) for TaskDescription widget.
  FocusNode? taskDescriptionFocusNode;
  TextEditingController? taskDescriptionController;
  String? Function(BuildContext, String?)? taskDescriptionControllerValidator;
  String? _taskDescriptionControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    taskTitleControllerValidator = _taskTitleControllerValidator;
    taskDescriptionControllerValidator = _taskDescriptionControllerValidator;
  }

  @override
  void dispose() {
    taskTitleFocusNode?.dispose();
    taskTitleController?.dispose();

    taskDescriptionFocusNode?.dispose();
    taskDescriptionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
