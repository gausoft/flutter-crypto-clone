import 'package:flutter/material.dart';
import 'package:flutter_crypto_clone/model/Cipher.dart';
import 'package:flutter_crypto_clone/widgets/cipher_card.dart';

class CiphersScreen extends StatelessWidget {
  const CiphersScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: Icon(Icons.arrow_back),
              ),
              SizedBox(
                height: 24.0,
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    Text(
                      'Ciphers',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 32.0,
                    ),
                    Text(
                      'HISTORIC CIPHIERS',
                      style: TextStyle(color: Colors.black54),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Column(
                      children: historicCipherList
                          .map(
                            (cipher) => CipherCard(
                              cipher: cipher,
                              handlePress: () {
                                showModalBottomSheet(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0),
                                    ),
                                  ),
                                  context: context,
                                  builder: (BuildContext context) =>
                                      FractionallySizedBox(
                                    heightFactor: 0.75,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 16.0),
                                            child: Center(
                                              child: Container(
                                                width: 40,
                                                height: 5,
                                                decoration: BoxDecoration(
                                                  color: Colors.black12,
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'BLOCKCHAIN',
                                            style: TextStyle(
                                              color: Colors.black45,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Text(
                                            'Bitcoin Address Generator',
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 16.0,
                                          ),
                                          Text(
                                              'Generate Bitcoin address step by step.\nECDSA, SHA-256, RIPEMD-160 & Base58.'),
                                          SizedBox(
                                            height: 16.0,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                color: Theme.of(context)
                                                    .dividerColor,
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(12.0),
                                              child: Row(
                                                children: <Widget>[
                                                  Container(
                                                    padding:
                                                        EdgeInsets.all(5.0),
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF2D3B42),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        10,
                                                      ),
                                                    ),
                                                    child: Icon(
                                                      Icons.school,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                        'This tool is mainly build for education purpose'),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 24.0,
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Expanded(
                                                child: Container(
                                                  padding: EdgeInsets.all(16.0),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Colors.black12,
                                                  ),
                                                  child:
                                                      Text('More information'),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Expanded(
                                                child: Container(
                                                  padding: EdgeInsets.all(16.0),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Colors.black12,
                                                  ),
                                                  child: Text('Use tool'),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                          .toList(),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      'BLOCK CIPHERS',
                      style: TextStyle(color: Colors.black54),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Column(
                      children: blockCipherList
                          .map(
                            (cipher) => CipherCard(
                              cipher: cipher,
                              handlePress: () {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (BuildContext context) => Center(
                                    child: Text('GAUSOFT'),
                                  ),
                                );
                              },
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
