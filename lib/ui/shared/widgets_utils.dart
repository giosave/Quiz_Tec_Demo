import 'package:flutter/material.dart';

import 'package:quiz_tec_demo/core/constants/app_constants.dart';
import 'package:quiz_tec_demo/ui/shared/ui_helpers.dart';

enum FSize { ExtraBig, Big, Normal, Small, ExtraSmall }
enum FWeight { Bold, Regular }

double defineFontSize(FSize size) {
  switch(size) {
    case FSize.ExtraBig:
      return FONT_SIZE_EXTRA_BIG;
    case FSize.Big:
      return FONT_SIZE_BIG;
    case FSize.Normal:
      return FONT_SIZE_NORMAL;
    case FSize.Small:
      return FONT_SIZE_SMALL;
    case FSize.ExtraSmall:
      return FONT_SIZE_EXTRA_SMALL;
  }
  return FONT_SIZE_NORMAL;
}

FontWeight defineFontWeight(FWeight weight) {
  switch(weight) {
    case FWeight.Bold:
      return FontWeight.bold;
    case FWeight.Regular:
      return FontWeight.normal;
  }
  return FontWeight.normal;
}

Widget label(String text, [FSize size, FWeight weight, Color color = DEFAULT_TEXT_COLOR]) {
  return Text(
    text ?? '',
    style: TextStyle(
      color: color,
      fontSize: defineFontSize(size),
      fontWeight: defineFontWeight(weight),
      fontFamily: 'SourceSans'
    )
  );
}

Widget buildColumn(String val, String heading) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      label(heading, FSize.Small, FWeight.Regular, PRIMARY_COLOR),
      UIHelper.verticalSpaceSmall,
      label(val ?? '', FSize.Small, FWeight.Bold),
      UIHelper.verticalSpaceSmall
    ]
  );
}

Widget buildRow(String heading, String value, [FSize size = FSize.Normal, FWeight weight = FWeight.Regular, Color color = DEFAULT_TEXT_COLOR, MainAxisAlignment mainAxisAlignment = MainAxisAlignment.spaceBetween]) {
  return Row(
    mainAxisAlignment: mainAxisAlignment,
    children: <Widget>[
      label(heading ?? '', size, weight, color),
      label(value ?? '', size, weight, color)
    ]
  );
}

Widget buildWrap(String heading, String value, [FSize size = FSize.Normal, FWeight weight = FWeight.Regular, Color color = DEFAULT_TEXT_COLOR]) {
  return Wrap(
    direction: Axis.horizontal,
    alignment: WrapAlignment.spaceBetween,
    children: <Widget>[
      label(heading ?? '', size, weight, color),
      label(value ?? '', size, weight, color)
    ]
  );
}

Widget buildContainer({Widget child, Color color}) {
  return Container(
    color: color,
    alignment: Alignment.center,
    margin: EdgeInsets.all(8),
    child: child
  );
}

Widget buildCard({Widget child, Color color}) {
  return Card(
    color: color,
    elevation: 5,
    child: child
  );
}

Widget buildMessageNoData() {
  return Container(
    child: Center(
      child: label("MENSAJE DE ERROR")
    ),
  );
}

Widget buildDropdownItemWithDivider({String text}) {
  return Wrap(
    alignment: WrapAlignment.start,
    children: <Widget>[
      label(text),
      Divider(
        color: Colors.black
      )
    ],
  );
}
