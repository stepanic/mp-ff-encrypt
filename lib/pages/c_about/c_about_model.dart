import '/flutter_flow/flutter_flow_util.dart';
import 'c_about_widget.dart' show CAboutWidget;
import 'package:flutter/material.dart';

class CAboutModel extends FlutterFlowModel<CAboutWidget> {
  ///  Local state fields for this page.

  String encryptionKey = 'abcd1234';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
