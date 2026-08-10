import 'package:android_intent_plus/android_intent.dart';
import 'package:android_intent_plus/flag.dart';

class TermuxBridge {
  static const String _termuxPackage = 'com.termux';
  static const String _termuxActivity = 'com.termux.app.TermuxActivity';
  static const String _termuxRunActivity = 'com.termux.app.RunCommandService';

  static Future<void> openTermux() async {
    final intent = AndroidIntent(
      action: 'android.intent.action.MAIN',
      package: _termuxPackage,
      componentName: _termuxActivity,
      flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK],
    );
    await intent.launch();
  }

  static Future<void> runCommand(String command) async {
    final intent = AndroidIntent(
      action: 'com.termux.RUN_COMMAND',
      package: _termuxPackage,
      componentName: _termuxRunActivity,
      flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK],
      arguments: {
        'com.termux.RUN_COMMAND_PATH': '/data/data/com.termux/files/usr/bin/bash',
        'com.termux.RUN_COMMAND_ARGUMENTS': ['-c', command],
        'com.termux.RUN_COMMAND_WORKDIR': '/data/data/com.termux/files/home',
        'com.termux.RUN_COMMAND_TERMINAL': true,
      },
    );
    await intent.launch();
  }
}
