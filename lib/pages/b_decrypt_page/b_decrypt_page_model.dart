import '/flutter_flow/flutter_flow_util.dart';
import 'b_decrypt_page_widget.dart' show BDecryptPageWidget;
import 'package:flutter/material.dart';

class BDecryptPageModel extends FlutterFlowModel<BDecryptPageWidget> {
  ///  Local state fields for this page.

  String encryptionKey = 'abcd1234';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for EncryptionKey widget.
  FocusNode? encryptionKeyFocusNode;
  TextEditingController? encryptionKeyTextController;
  String? Function(BuildContext, String?)? encryptionKeyTextControllerValidator;
  // State field(s) for EncryptedText widget.
  FocusNode? encryptedTextFocusNode;
  TextEditingController? encryptedTextTextController;
  String? Function(BuildContext, String?)? encryptedTextTextControllerValidator;
  // Stores action output result for [Custom Action - decryptTextFromBase64] action in DecryptEncryptedText widget.
  String? decryptedPlainText;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    encryptionKeyFocusNode?.dispose();
    encryptionKeyTextController?.dispose();

    encryptedTextFocusNode?.dispose();
    encryptedTextTextController?.dispose();
  }
}
