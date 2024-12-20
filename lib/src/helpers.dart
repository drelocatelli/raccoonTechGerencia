import 'package:flutter/material.dart';

class Helpers {

  static LayoutBuilder responsiveColumnRow(BuildContext context, List<Widget> children) {
    debugPrint("Width: ${MediaQuery.of(context).size.width}");
    return LayoutBuilder(
      builder: (BuildContext context, constraints) {
        if (constraints.minWidth > 1500) {
          return Row(
            children: children
          );
        } else {
          return Column(
            children: children,
          );
        }
      }
    );
  }

  static Widget responsiveMenu({required List<Widget> children, required bool isLargeScreen}) {
    return isLargeScreen 
    ? Row(
      children: children,
    )
    : ListView(
      children: children,
    );
  }

  static Widget rowOrWrap({required bool wrap, required List<Widget> children}) {
    return wrap ? Wrap(
      spacing: 10,
      children: children,
    ) : Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: children,
    );
    
  }

}