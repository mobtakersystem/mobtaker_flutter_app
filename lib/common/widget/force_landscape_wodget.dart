import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ForceLandscapeWidget extends StatefulWidget {
  final Widget child;

  const ForceLandscapeWidget({super.key, required this.child});

  @override
  State<ForceLandscapeWidget> createState() => _ForceLandscapeWidgetState();
}

class _ForceLandscapeWidgetState extends State<ForceLandscapeWidget> {
  @override
  void initState() {
    super.initState();
    _setLandscape();
  }

  //set the orientation to landscape
  Future<void> _setLandscape() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  void dispose() {
    //restore the original orientation
    SystemChrome.setPreferredOrientations(DeviceOrientation.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: widget.child);
  }
}
