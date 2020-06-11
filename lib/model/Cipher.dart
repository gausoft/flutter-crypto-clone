import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cipher {
  final String title;
  final String body;
  final bool withIcon;

  Cipher({@required this.title, @required this.body, this.withIcon = true});
}

final historicCipherList = [
  Cipher(
    title: 'Caesar',
    body: 'Monoalphabetic substitution cipher, named after by Julius Caesar.',
  ),
  Cipher(
    title: 'Vigenère',
    body:
        'Polyalphabetic substitution cipher based on Caesar cipher, but with constantly changing alphabets.',
  ),
  Cipher(
    title: 'Skytale',
    body:
        'Antique transposition cipher that used a tool to transmit secret messages.',
  ),
  Cipher(
    title: 'Enigma',
    body:
        'The infamous polyalphabetic substitution cipher, implemented as version M4.',
  ),
];

final blockCipherList = [
  Cipher(
    title: 'DES',
    body: 'Block size: 64 bits.\nKey length : 56 bits.',
    withIcon: false,
  ),
  Cipher(
    title: '3DES',
    body: 'Block size: 64 bits.\nKey length: 112 or 128 bits (2TDEA/3TDEA).',
    withIcon: false,
  ),
  Cipher(
    title: 'AES',
    body: 'Block size: 128 bits.\nKey length : 128, 192 or 256 bits.',
    withIcon: false,
  ),
  Cipher(
    title: 'Blowfish',
    body: 'Block size: 128 bits.\nKey length : from 32 bits up to 448 bits.',
    withIcon: false,
  ),
  Cipher(
    title: 'Twofish',
    body: 'Block size: 128 bits.\nKey length : 128, 192 or 256 bits.',
    withIcon: false,
  ),
  Cipher(
    title: 'Serpent',
    body: 'Block size: 128 bits.\nKey length : 128, 192 or 256 bits.',
    withIcon: false,
  ),
  Cipher(
    title: 'IDEA',
    body: 'Block size: 64 bits.\nKey length : 128 bits.',
    withIcon: false,
  ),
  Cipher(
    title: 'RC6',
    body: 'Block size: 128 bits.\nKey length : 128, 192 or 256 bits.',
    withIcon: false,
  ),
];
final streamCipherList = [
  Cipher(
    title: 'RC4',
    body: 'Simple stream cipher.\nArbitry key length.',
    withIcon: false,
  ),
  Cipher(
    title: 'Salsa20',
    body: 'Stream cipher requiring an IV.\nKey length: 128 or 256 bits.',
    withIcon: false,
  ),
  Cipher(
    title: 'ChaCha',
    body: 'Based on Salsa20 but with improve security.\nKey length: 128 or 256 bits.',
    withIcon: false,
  ),
];
