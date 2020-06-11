import 'package:flutter/material.dart';
import 'package:flutter_crypto_clone/model/Cipher.dart';

class CipherCard extends StatelessWidget {
  final Cipher cipher;
  final VoidCallback handlePress;

  const CipherCard({Key key, @required this.cipher, @required this.handlePress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        color: Color(0xFF2D3B42),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: (){},
          onLongPress: handlePress,
          splashColor: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '${cipher.title}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    cipher.withIcon
                        ? Icon(
                            Icons.school,
                            color: Colors.grey,
                          )
                        : Container()
                  ],
                ),
                SizedBox(
                  height: 3.0,
                ),
                Expanded(
                  child: Text(
                    '${cipher.body}',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
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
