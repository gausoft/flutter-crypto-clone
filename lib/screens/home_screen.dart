import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crypto_clone/model/Tool.dart';
import 'package:flutter_crypto_clone/screens/about_screen.dart';
import 'package:flutter_crypto_clone/screens/ciphers_screen.dart';
import 'package:flutter_crypto_clone/widgets/main_tool.dart';
import 'package:flutter_crypto_clone/widgets/secure_tool.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Crypto',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: () {
                          Navigator.of(context).push(
                            CupertinoPageRoute(
                              builder: (context) => AboutScreen(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFBB86FC).withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.info_outline,
                            size: 20,
                            color: Color(0xFFBB86FC),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 32.0),
                  Text(
                    'Tools',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 24.0),
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 2.5,
                      mainAxisSpacing: 8.0,
                      crossAxisSpacing: 8.0,
                      crossAxisCount: 2,
                    ),
                    itemCount: mainToolList.length,
                    itemBuilder: (context, index) => MainTool(
                      icon: mainToolList[index].icon,
                      title: mainToolList[index].title,
                      handleTap: () => Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) => CiphersScreen(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      hintText: 'Search',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xFF121212),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(width: 2.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(height: 24.0),
                  Text(
                    'Favorites',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Color(0xFFE9EFF2),
                        borderRadius: BorderRadius.circular(12)),
                    width: double.infinity,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'No favorites available',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Save favorite to have quick access to your must used or liked tools",
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Text(
                    'Secure Communication Tools',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 8.0,
                      crossAxisSpacing: 8.0,
                      crossAxisCount: 3,
                    ),
                    itemCount: secureToolList.length,
                    itemBuilder: (context, index) => SecureTool(
                      icon: secureToolList[index].icon,
                      title: secureToolList[index].title,
                      onTapped: () => Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) =>
                              secureToolList[index].navigateScreen,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(height: 5),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color(0xFFE9EFF2),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.history),
                              SizedBox(width: 8.0),
                              Text('Backup')
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color(0xFFE9EFF2),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.storage),
                              SizedBox(width: 8.0),
                              Text('Data Store')
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color(0xFFE9EFF2),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.settings),
                              SizedBox(width: 8.0),
                              Text('Setting')
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color(0xFFE9EFF2),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.help_outline),
                              SizedBox(width: 8.0),
                              Text('Help')
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xFFE9EFF2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(MdiIcons.diamondStone),
                        SizedBox(width: 8.0),
                        Text('Upgrade to Crypto pro')
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
