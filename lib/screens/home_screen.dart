import 'package:disenos/screens/card_table.dart';
import 'package:disenos/widgets/background.dart';
import 'package:disenos/widgets/custom_widget_navigator.dart';
import 'package:disenos/widgets/page_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            //Background
            Background(),
            _HomeBody()
          ],
        ),
        bottomNavigationBar: CustomBottomNavigation());
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Titulos
          PageTitle(),
          // Card Table
          CardTable()
        ],
      ),
    );
  }
}
