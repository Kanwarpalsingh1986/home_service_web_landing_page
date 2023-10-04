import 'package:flutter/material.dart';
import 'package:service_app/components/common_components.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:service_app/extensions/extension.dart';

class HTMLPageViewer extends StatelessWidget {
  final String pageName;
  final String pageContent;

  HTMLPageViewer({
    Key? key,
    required this.pageName,
    required this.pageContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          verticalSpacer(height: 80),
          HtmlWidget(pageContent).hP25,
          verticalSpacer(height: 20),
          // CommonFooter()
        ],
      ),
    ));
  }
}
