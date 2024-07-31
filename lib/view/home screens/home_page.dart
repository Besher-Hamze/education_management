import 'package:education_managment/view/home%20screens/widget/header.dart';
import 'package:flutter/material.dart';
import 'widget/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              SizedBox(
                height: 10,
              ),
              Body(),
              SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }
}
