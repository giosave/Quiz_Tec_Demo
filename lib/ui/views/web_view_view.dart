import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

class WebViewView extends StatefulWidget {
  final Map<String, dynamic> args;
  const WebViewView(this.args);

  @override
  _WebViewViewState createState() => _WebViewViewState();
}

class _WebViewViewState extends State<WebViewView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.args['tituloExterno']),
      ),
      body: WebView(
        initialUrl: widget.args['linkExterno'],
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}