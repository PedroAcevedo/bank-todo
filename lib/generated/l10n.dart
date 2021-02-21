// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class AppLocalizations {
  AppLocalizations();
  
  static AppLocalizations current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      AppLocalizations.current = AppLocalizations();
      
      return AppLocalizations.current;
    });
  } 

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `Email address`
  String get email {
    return Intl.message(
      'Email address',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Please enter an email address`
  String get emailHint {
    return Intl.message(
      'Please enter an email address',
      name: 'emailHint',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a password`
  String get passwordHint {
    return Intl.message(
      'Please enter a password',
      name: 'passwordHint',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email address!`
  String get emailError {
    return Intl.message(
      'Invalid email address!',
      name: 'emailError',
      desc: '',
      args: [],
    );
  }

  /// `The password is too short`
  String get passwordError {
    return Intl.message(
      'The password is too short',
      name: 'passwordError',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signIn {
    return Intl.message(
      'Sign in',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Success sign in`
  String get success {
    return Intl.message(
      'Success sign in',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `Current`
  String get currentAccount {
    return Intl.message(
      'Current',
      name: 'currentAccount',
      desc: '',
      args: [],
    );
  }

  /// `thrift`
  String get thriftAccount {
    return Intl.message(
      'thrift',
      name: 'thriftAccount',
      desc: '',
      args: [],
    );
  }

  /// `welcome`
  String get welcome {
    return Intl.message(
      'welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Hello`
  String get hello {
    return Intl.message(
      'Hello',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `See weather`
  String get seeMore {
    return Intl.message(
      'See weather',
      name: 'seeMore',
      desc: '',
      args: [],
    );
  }

  /// `An error has been ocurred, contact with the administrator`
  String get apiError {
    return Intl.message(
      'An error has been ocurred, contact with the administrator',
      name: 'apiError',
      desc: '',
      args: [],
    );
  }

  /// `Transfer money`
  String get readQr {
    return Intl.message(
      'Transfer money',
      name: 'readQr',
      desc: '',
      args: [],
    );
  }

  /// `Recibir dinero`
  String get createQr {
    return Intl.message(
      'Recibir dinero',
      name: 'createQr',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Colombian peso`
  String get colombianpeso {
    return Intl.message(
      'Colombian peso',
      name: 'colombianpeso',
      desc: '',
      args: [],
    );
  }

  /// `American dollar`
  String get americandollar {
    return Intl.message(
      'American dollar',
      name: 'americandollar',
      desc: '',
      args: [],
    );
  }

  /// `stream`
  String get stream {
    return Intl.message(
      'stream',
      name: 'stream',
      desc: '',
      args: [],
    );
  }

  /// `saving`
  String get ahorro {
    return Intl.message(
      'saving',
      name: 'ahorro',
      desc: '',
      args: [],
    );
  }

  /// `Generate qr`
  String get generateQr {
    return Intl.message(
      'Generate qr',
      name: 'generateQr',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}