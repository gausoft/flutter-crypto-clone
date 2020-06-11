import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';

class TextEncryptionScreen extends StatefulWidget {
  const TextEncryptionScreen({Key key}) : super(key: key);

  @override
  _TextEncryptionScreenState createState() => _TextEncryptionScreenState();
}

class _TextEncryptionScreenState extends State<TextEncryptionScreen> {
  var _selectedTab;
  int _currentSelection = 0;

  Map<int, Widget> _children = {
    0: Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0.0),
      child: Text(
        'Encryption',
        style: TextStyle(
          color: Colors.black,
          letterSpacing: 1.2,
        ),
      ),
    ),
    1: Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0.0),
      child: Text(
        'Decryption',
        style: TextStyle(
          color: Colors.black,
          letterSpacing: 1.2,
        ),
      ),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap: () => Navigator.of(context).pop(),
                        child: Icon(Icons.arrow_back),
                      ),
                      IconButton(
                        icon: Icon(Icons.help_outline),
                        onPressed: () {},
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'Text Encryption',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                  Center(
                    child: MaterialSegmentedControl(
                      children: _children,
                      selectionIndex: _currentSelection,
                      borderColor: Color(0xFFEBEFF1),
                      selectedColor: Color(0xFFEBEFF1),
                      unselectedColor: Colors.white,
                      borderRadius: 12.0,
                      onSegmentChosen: (index) {
                        setState(() {
                          _currentSelection = index;
                        });
                      },
                    ),
                  ),
                  // Center(
                  //   child: CupertinoSegmentedControl(
                  //     selectedColor: Color(0xFFEBEFF1),
                  //     borderColor: Color(0xFFEBEFF1),
                  //     pressedColor: Colors.transparent,
                  //     children: const <int, Widget>{
                  //       0: Padding(
                  //         padding: EdgeInsets.all(10.0),
                  //         child: Text(
                  //           'Encryption',
                  //           style: TextStyle(
                  //             color: Colors.black,
                  //             fontSize: 16,
                  //             letterSpacing: 1.2,
                  //           ),
                  //         ),
                  //       ),
                  //       1: Padding(
                  //         padding: EdgeInsets.all(10.0),
                  //         child: Text(
                  //           'Decryption',
                  //           style: TextStyle(
                  //             color: Colors.black,
                  //             fontSize: 16,
                  //             letterSpacing: 1.2,
                  //           ),
                  //         ),
                  //       ),
                  //     },
                  //     groupValue: this._selectedTab,
                  //     onValueChanged: (value) {
                  //       this.setState(() => this._selectedTab = value);
                  //     },
                  //   ),
                  // ),
                  SizedBox(
                    height: 32.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      labelText: 'Plaintext',
                      labelStyle: TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(width: 2.0),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.purple[800].withOpacity(.25),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.content_paste,
                              size: 15,
                              color: Colors.purple[800],
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Paste',
                              style: TextStyle(color: Colors.purple[800]),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.purple[800].withOpacity(.25),
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.highlight_off,
                              size: 18,
                              color: Colors.purple[800],
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Clear',
                              style: TextStyle(color: Colors.purple[800]),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      labelText: 'Key',
                      labelStyle: TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(width: 2.0),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.purple[800].withOpacity(.25),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.casino,
                              size: 15,
                              color: Colors.purple[800],
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Random',
                              style: TextStyle(color: Colors.purple[800]),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.purple[800].withOpacity(.25),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.book,
                              size: 15,
                              color: Colors.purple[800],
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Keystore',
                              style: TextStyle(color: Colors.purple[800]),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.purple[800].withOpacity(.25),
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.highlight_off,
                              size: 18,
                              color: Colors.purple[800],
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Clear',
                              style: TextStyle(color: Colors.purple[800]),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                  Container(
                    width: double.infinity,
                    child: RaisedButton(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      color: Color(0xFF851EA1),
                      child: Text(
                        'Encrypt',
                        style:
                            TextStyle(color: Colors.white, letterSpacing: 1.2),
                      ),
                      onPressed: () => {},
                    ),
                  )
                ],
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
