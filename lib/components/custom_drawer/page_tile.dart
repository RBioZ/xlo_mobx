import 'package:flutter/material.dart';

class PageTile extends StatelessWidget {
  final String label;
  final IconData iconData;
  final VoidCallback onTap;
  final bool highLighted;

  const PageTile(
      {Key? key,
      required this.label,
      required this.iconData,
      required this.onTap,
      required this.highLighted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: TextStyle(
            fontWeight: FontWeight.w700,
            color: highLighted ? Colors.purple : Colors.black54),
      ),
      leading: Icon(
        iconData,
        color: highLighted ? Colors.purple : Colors.black54,
      ),
      onTap: onTap,
    );
  }
}
