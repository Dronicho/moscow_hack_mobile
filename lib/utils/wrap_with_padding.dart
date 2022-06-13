import 'package:flutter/material.dart';

List<Widget> wrapWithPadding(BuildContext context, List<Widget> children, {required EdgeInsets padding}) => children
    .map((e) => Padding(
          padding: padding,
          child: e,
        ))
    .toList();
