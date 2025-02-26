import 'dart:async';
import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quiver/strings.dart';

import '../../features/login/domain/entities/auth_info_entity.dart';
import '../logger/logger.dart';

const String _keyLanguageCode = 'language_code';
const String _keyAuthInfo = 'auth_info';

/// Use instance of SessionManager to store user data used in the [application].
class SessionManager {
  SessionManager._();

  static late FlutterSecureStorage _prefs;

  static late String? _languageCode;
  static AuthInfoEntity? _authInfo;

  static AuthInfoEntity? get authInfo => _authInfo;

  static set authInfo(AuthInfoEntity? value) {
    _authInfo = value;
    unawaited(_saveCurrentAuthInfo());
  }

  static String? get accessToken => _authInfo?.token;

  static String? get refreshToken => '';

  static bool get isLoggedIn => accessToken != null;

  static int? get userId => isLoggedIn ? (_authInfo?.id ?? 2) : null;

  static Future<void> init() async {
    _prefs = const FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
    );

    await _restoreAuthInfo();
    await _restoreCurrentLanguageCode();
  }

  static Future<bool> _restoreAuthInfo() async {
    final String? authInfoDataString = await _prefs.read(
      key: _keyAuthInfo,
    );

    if (isNotEmpty(authInfoDataString)) {
      try {
        final AuthInfoEntity lastAuthInfo = AuthInfoEntity.fromJson(
          jsonDecode(authInfoDataString!),
        );

        _authInfo = lastAuthInfo;
        return true;
      } catch (e) {
        return false;
      }
    }

    return false;
  }

  static bool _isClearing = false;

  static bool get isClearing => _isClearing;

  /// [message], which provides the usage context.
  /// [displayMessage], which uses to display notifications to the user interface.
  static Future<void> clear({
    String? message,
    String? displayMessage,
  }) async {
    if (_isClearing) {
      return;
    }
    try {
      _isClearing = true;
      await _deleteCurrentAuthInfo();

      if (displayMessage != null) {
        unawaited(
          Fluttertoast.showToast(msg: displayMessage, timeInSecForIosWeb: 2),
        );
      }
    } catch (e) {
      logger.e('Clearing session data failed.', error: e);
    }

    _isClearing = false;
  }

  static String get languageCode => _languageCode ?? 'vi';

  static set languageCode(String value) {
    _languageCode = value;

    unawaited(_saveCurrentLanguageCode());
  }

  static Future<void> _saveCurrentLanguageCode() async {
    try {
      await _prefs.write(key: _keyLanguageCode, value: _languageCode);
    } catch (e) {
      logger.e('_saveCurrentLanguageCode() run failed.', error: e);
    }
  }

  static Future<void> _restoreCurrentLanguageCode() async {
    try {
      _languageCode = await _prefs.read(key: _keyLanguageCode);
    } catch (e) {
      logger.e('_restoreCurrentLanguageCode() run failed.', error: e);
    }
  }

  static Future<void> _saveCurrentAuthInfo() async {
    try {
      final String dataString = jsonEncode(_authInfo);
      await _prefs.write(key: _keyAuthInfo, value: dataString);
    } catch (e) {
      // ErrorHandler().logError('_saveCurrentAuthInfo run failed.', error: e);
    }
  }

  static Future<void> _deleteCurrentAuthInfo() async {
    try {
      await _prefs.delete(key: _keyAuthInfo);
      _authInfo = null;
    } catch (e) {
      // ErrorHandler().logError('_deleteCurrentAuthInfo run failed.', error: e);
    }
  }
}
