import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final QuickActions quickActions = QuickActions();

  @override
  void initState() {
    super.initState();
    _setQuickActions();
  }

  void _setQuickActions() {
    quickActions.setShortcutItems([
      ShortcutItem(
        type: 'reconsider',
        localizedTitle: '🤔 Uninstalling?',
        localizedSubtitle: 'Tell us what went wrong!',
        icon: 'feedback_icon',
      ),
      ShortcutItem(
        type: 'support',
        localizedTitle: '🛠 Need Help?',
        localizedSubtitle: 'We’re here for you!',
        icon: 'support_icon',
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quick Actions Demo')),
        body: Center(child: Text('Long press the app icon to see shortcuts!')),
      ),
    );
  }
}
