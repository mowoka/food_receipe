import 'package:flutter/material.dart';

class FoodExpansionTile extends StatelessWidget {
  const FoodExpansionTile({
    super.key,
    required this.title,
    required this.children,
  });

  final Widget title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData().copyWith(
          dividerColor: Colors.transparent,
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          highlightColor: Colors.transparent,
          listTileTheme: const ListTileThemeData(
            minLeadingWidth: 0,
            dense: false,
            horizontalTitleGap: 0,
          ),
        ),
        child: ExpansionTile(
          leading: const SizedBox(),
          controlAffinity: ListTileControlAffinity.leading,
          tilePadding: const EdgeInsets.all(0),
          childrenPadding: const EdgeInsets.all(0),
          title: title,
          children: children,
        ));
  }
}
