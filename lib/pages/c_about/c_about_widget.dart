import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'c_about_model.dart';
export 'c_about_model.dart';

class CAboutWidget extends StatefulWidget {
  const CAboutWidget({super.key});

  @override
  State<CAboutWidget> createState() => _CAboutWidgetState();
}

class _CAboutWidgetState extends State<CAboutWidget> {
  late CAboutModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CAboutModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'encrypt.FF.hr',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                child: Text(
                  'About',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: const BoxDecoration(),
                    child: MarkdownBody(
                      data: '''# Cryptography Algorithm
---

## Salsa20

This symmetric cryptography algorithm was chosen because it offers more performance advantages than AES on mobile devices, which usually do not have CPU features for AES acceleration.

More about [Salsa20 on Wikipedia](https://en.wikipedia.org/wiki/Salsa20).

From a security perspective, both AES and Salsa20 provide the highest security standards for many apps.

## Dependencies

This package is built on top of the popular open-source package [encrypt](https://pub.dev/packages/encrypt), and "under-the-hood" uses internal implementation by the package [pointycastle](https://pub.dev/packages/pointycastle) developed by the reputable [Bouncy Castle](https://www.bouncycastle.org/about/) project, known as the global standard in cryptography.

` `
 
# Creator
---
This FlutterFlow Marketplace Item is maintained by [Matija Stepanic](https://experts.flutterflow.io/expert/Gxx5vvYwTlIu32m35aRm), FlutterFlow Expert since 2022-05, mobile developer since 2012 and web developer since 2005. For any additional feature request of this package, you can ask at [ms@ff.hr](mailto:ms@ff.hr?subject=encrypt.FF.hr). 

Matija is the first FlutterFlow Expert from Croatia and the founder of the FF.hr community. The community's primary vision is to be the leading European FlutterFlow community with headquarters in Zagreb, Croatia, by releasing advanced FlutterFlow Items and Consulting Services for the most taught parts in any FlutterFlow project. Ask him more at [ms@ff.hr](mailto:ms@ff.hr?subject=FF.hr).

''',
                      selectable: true,
                      onTapLink: (_, url, __) => launchURL(url!),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
