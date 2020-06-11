import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crypto_clone/screens/certificates_screen.dart';
import 'package:flutter_crypto_clone/screens/ciphers_screen.dart';
import 'package:flutter_crypto_clone/screens/file_encryption_screen.dart';
import 'package:flutter_crypto_clone/screens/key_exchange_screen.dart';
import 'package:flutter_crypto_clone/screens/key_store_screen.dart';
import 'package:flutter_crypto_clone/screens/signature_screen.dart';
import 'package:flutter_crypto_clone/screens/text_encryption.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Tool {
  final Widget icon;
  final String title;
  final Widget navigateScreen;

  Tool({
    @required this.icon,
    @required this.title,
    this.navigateScreen,
  });
}

final mainToolList = [
  Tool(
    icon: Icon(Icons.lock_outline),
    title: 'Ciphers',
    navigateScreen: CiphersScreen(),
  ),
  Tool(
    icon: Icon(Icons.swap_horiz),
    title: 'Asymemetric Methods',
    navigateScreen: CiphersScreen(),
  ),
  Tool(
    icon: Icon(Icons.loupe),
    title: 'Cryptanalysis',
    navigateScreen: CiphersScreen(),
  ),
  Tool(
    icon: Icon(MdiIcons.squareRoot),
    title: 'Mathematics',
    navigateScreen: CiphersScreen(),
  ),
  Tool(
    icon: Icon(Icons.sync),
    title: 'Checksums',
    navigateScreen: CiphersScreen(),
  ),
  Tool(
    icon: Icon(MdiIcons.wrenchOutline),
    title: 'More Tools',
    navigateScreen: CiphersScreen(),
  ),
];

final secureToolList = [
  Tool(
    icon: Icon(MdiIcons.certificate, color: Colors.white, size: 40,),
    title: 'Certificates',
    navigateScreen: CertificatesScreen(),
  ),
  Tool(
    icon: Icon(MdiIcons.keyChange, color: Colors.white, size: 40,),
    title: 'Key Exchange',
    navigateScreen: KeyExchangeScreen(),
  ),
  Tool(
    icon: Icon(MdiIcons.messageTextClock, color: Colors.white, size: 40,),
    title: 'Text Encryption',
    navigateScreen: TextEncryptionScreen(),
  ),
  Tool(
    icon: Icon(MdiIcons.formatSize, color: Colors.white, size: 40,),
    title: 'Signature',
    navigateScreen: SignatureScreen(),
  ),
  Tool(
    icon: Icon(MdiIcons.accountKey, color: Colors.white, size: 40,),
    title: 'Keystore',
    navigateScreen: KeyStoreScreen(),
  ),
  Tool(
    icon: Icon(MdiIcons.fileHidden, color: Colors.white, size: 40,),
    title: 'File Encryption',
    navigateScreen: FileEncryptionScreen(),
  ),
];
