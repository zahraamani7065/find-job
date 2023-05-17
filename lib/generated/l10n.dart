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
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `flutter developer`
  String get searchBar {
    return Intl.message(
      'flutter developer',
      name: 'searchBar',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `email`
  String get email {
    return Intl.message(
      'email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get password {
    return Intl.message(
      'password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `password...`
  String get enterPassword {
    return Intl.message(
      'password...',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `email...`
  String get enterEmail {
    return Intl.message(
      'email...',
      name: 'enterEmail',
      desc: '',
      args: [],
    );
  }

  /// `re-password`
  String get repassword {
    return Intl.message(
      're-password',
      name: 'repassword',
      desc: '',
      args: [],
    );
  }

  /// `submit`
  String get submit {
    return Intl.message(
      'submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `forgot password`
  String get forgotPassword {
    return Intl.message(
      'forgot password',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `register`
  String get register {
    return Intl.message(
      'register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `select language`
  String get chooseLang {
    return Intl.message(
      'select language',
      name: 'chooseLang',
      desc: '',
      args: [],
    );
  }

  /// `persian`
  String get persian {
    return Intl.message(
      'persian',
      name: 'persian',
      desc: '',
      args: [],
    );
  }

  /// `english`
  String get english {
    return Intl.message(
      'english',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `flutter developer`
  String get flutterDeveloper {
    return Intl.message(
      'flutter developer',
      name: 'flutterDeveloper',
      desc: '',
      args: [],
    );
  }

  /// `flutter developer`
  String get job {
    return Intl.message(
      'flutter developer',
      name: 'job',
      desc: '',
      args: [],
    );
  }

  /// `false`
  String get isSaved {
    return Intl.message(
      'false',
      name: 'isSaved',
      desc: '',
      args: [],
    );
  }

  /// `zoop`
  String get companyName {
    return Intl.message(
      'zoop',
      name: 'companyName',
      desc: '',
      args: [],
    );
  }

  /// `Tehran,Iran`
  String get location {
    return Intl.message(
      'Tehran,Iran',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `10000&`
  String get salary {
    return Intl.message(
      '10000&',
      name: 'salary',
      desc: '',
      args: [],
    );
  }

  /// `1 minute ago`
  String get createJobOffer {
    return Intl.message(
      '1 minute ago',
      name: 'createJobOffer',
      desc: '',
      args: [],
    );
  }

  /// `10 item found`
  String get itemsCount {
    return Intl.message(
      '10 item found',
      name: 'itemsCount',
      desc: '',
      args: [],
    );
  }

  /// `profile`
  String get profile {
    return Intl.message(
      'profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `john Doe`
  String get name {
    return Intl.message(
      'john Doe',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `johndoe20@gmail.com`
  String get emailAddress {
    return Intl.message(
      'johndoe20@gmail.com',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Pengalaman Kerja`
  String get pengalamankerja {
    return Intl.message(
      'Pengalaman Kerja',
      name: 'pengalamankerja',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin in nisl dolor.Donec convallis quam a dignissim pulvinar.Nullam rhoncus elit a nisi elementum, sed luctus tortor porta. Etiam ac pellentesque lorem. `
  String get bio {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin in nisl dolor.Donec convallis quam a dignissim pulvinar.Nullam rhoncus elit a nisi elementum, sed luctus tortor porta. Etiam ac pellentesque lorem. ',
      name: 'bio',
      desc: '',
      args: [],
    );
  }

  /// `Pendidikan`
  String get pendidikan {
    return Intl.message(
      'Pendidikan',
      name: 'pendidikan',
      desc: '',
      args: [],
    );
  }

  /// `Universitas Kita Ajah`
  String get university {
    return Intl.message(
      'Universitas Kita Ajah',
      name: 'university',
      desc: '',
      args: [],
    );
  }

  /// `Agustus 2013 - Desember 2017`
  String get date {
    return Intl.message(
      'Agustus 2013 - Desember 2017',
      name: 'date',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'fa'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
