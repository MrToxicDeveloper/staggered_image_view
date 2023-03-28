import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:staggered_image_view/staggered/staggered%20view/staggered_view_screen.dart';
import 'package:staggered_image_view/staggered/staggered_provider/staggered_proviedr.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => StagProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: StaggeredScreen(),
      ),
    ),
  );
}
