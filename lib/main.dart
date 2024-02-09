import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "data ",
              style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 20)),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "datadatadatadatadatadatadatadata ",
              style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = scaleFactor * fontSize;
  double upperLimit = fontSize * 1.2;
  double lowerLimit = fontSize * .8;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
