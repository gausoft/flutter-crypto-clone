import 'package:flutter/material.dart';
import 'package:flutter_crypto_clone/constants/constants.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: Icon(Icons.arrow_back),
              ),
              SizedBox(height: 24.0,),
              Text(
                'About Crypto',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 32.0,
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Theme.of(context).dividerColor),
                ),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      'assets/icons/ic_launcher_web.png',
                      width: 60,
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            Constants.APP_NAME,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Version ${Constants.APP_VERSION}',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFEBEFF1),
                ),
                child: Row(
                  children: [
                    Icon(Icons.thumb_up),
                    SizedBox(width: 24),
                    Text(
                      'Rate app',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_right)
                  ],
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFEBEFF1),
                ),
                child: Row(
                  children: [
                    Icon(Icons.feedback),
                    SizedBox(width: 24),
                    Text(
                      'Send Feedback',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_right)
                  ],
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFEBEFF1),
                ),
                child: Row(
                  children: [
                    Icon(Icons.album),
                    SizedBox(width: 24),
                    Text(
                      'Open Source Licence',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_right)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
