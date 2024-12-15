import 'package:flutter/material.dart';

class ContactMeModel {
  final String name;
  final String icon;
  final String url;
  final String contact;

  ContactMeModel({
    required this.name,
    required this.icon,
    required this.url,
    required this.contact,
  });
}

List<ContactMeModel> contactMeList = [
  ContactMeModel(
      name: 'WhatsApp',
      icon: 'assets/icons/whatsapp.svg',
      url: 'https://whatsapp://send?phone=+923412909955',
      contact: '+92 341 2909955'),
  ContactMeModel(
      name: 'Linked In',
      icon: 'assets/icons/linkedin.svg',
      url: 'https://linkedin.com/in/naveed-hussain-shah-257678216/',
      contact: 'naveed-hussain-shah-257678216/'),
  ContactMeModel(
      name: 'Gmail',
      icon: 'assets/icons/gmail.svg',
      url: 'https://mailto:navidan15202@gmail.com/',
      contact: 'navidan15202@gmail.com'),
  ContactMeModel(
      name: 'Github',
      icon: 'assets/icons/github.svg',
      url: 'https://github.com/navidanchitrali',
      contact: '@navidanchitrali'),
];
