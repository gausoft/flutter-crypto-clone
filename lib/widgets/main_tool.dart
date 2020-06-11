import 'package:flutter/material.dart';

class MainTool extends StatelessWidget {
  final String title;
  final Widget icon;
  final VoidCallback handleTap;

  const MainTool(
      {Key key,
      @required this.title,
      @required this.icon,
      @required this.handleTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF2D3B42),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: handleTap,
          splashColor: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(3.0),
                  child: icon,
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    '$title',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
