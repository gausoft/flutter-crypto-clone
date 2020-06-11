import 'package:flutter/material.dart';

class SecureTool extends StatelessWidget {
  final Widget icon;
  final String title;
  final VoidCallback onTapped;

  const SecureTool(
      {Key key,
      @required this.icon,
      @required this.title,
      @required this.onTapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFF2D3B42),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            icon,
            SizedBox(height: 24.0),
            Text(
              '$title',
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
