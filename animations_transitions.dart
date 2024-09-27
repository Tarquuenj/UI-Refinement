AnimatedOpacity(
  opacity: isVisible ? 1.0 : 0.0,
  duration: Duration(seconds: 1),
  child: Text('Success'),
);

Navigator.push(
  context,
  PageRouteBuilder(
    pageBuilder: (context, animation1, animation2) => NextPage(),
    transitionsBuilder: (context, anim, anim2, child) {
      return FadeTransition(opacity: anim, child: child);
    },
  ),
);
