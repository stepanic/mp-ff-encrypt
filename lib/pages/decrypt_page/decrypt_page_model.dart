import '/flutter_flow/flutter_flow_util.dart';
import 'decrypt_page_widget.dart' show DecryptPageWidget;
import 'package:flutter/material.dart';

class DecryptPageModel extends FlutterFlowModel<DecryptPageWidget> {
  ///  Local state fields for this page.

  String encryptionKey = 'abcd1234';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for InputPlainText widget.
  FocusNode? inputPlainTextFocusNode;
  TextEditingController? inputPlainTextTextController;
  String? Function(BuildContext, String?)?
      inputPlainTextTextControllerValidator;
  // Stores action output result for [Custom Action - encryptTextAsBase64] action in EncryptPlainText widget.
  String? encryptedTextAsBase64;
  // State field(s) for EncryptedText widget.
  FocusNode? encryptedTextFocusNode;
  TextEditingController? encryptedTextTextController;
  String? Function(BuildContext, String?)? encryptedTextTextControllerValidator;
  // State field(s) for EncryptionKey widget.
  FocusNode? encryptionKeyFocusNode;
  TextEditingController? encryptionKeyTextController;
  String? Function(BuildContext, String?)? encryptionKeyTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    inputPlainTextFocusNode?.dispose();
    inputPlainTextTextController?.dispose();

    encryptedTextFocusNode?.dispose();
    encryptedTextTextController?.dispose();

    encryptionKeyFocusNode?.dispose();
    encryptionKeyTextController?.dispose();
  }
}
