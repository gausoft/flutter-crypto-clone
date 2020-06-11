import 'package:flutter/material.dart';

class FavoriteItem extends StatelessWidget {
  final String title;
  final Widget icon;

  const FavoriteItem({Key key, this.title, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF2D3B42),
      ),
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
          Text(
            '$title',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Spacer(),
          Icon(
            Icons.keyboard_arrow_right,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
