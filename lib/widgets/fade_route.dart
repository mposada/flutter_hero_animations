
import 'package:flutter/cupertino.dart';

class FadeRote extends PageRouteBuilder {

  final Widget page;
  final int duration;

  FadeRote({@required this.page, this.duration = 800}): super(
      pageBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation
          ) => page,
      transitionDuration: Duration(milliseconds: duration),
      transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child
          ) => FadeTransition(opacity: animation, child: child)
  );

}