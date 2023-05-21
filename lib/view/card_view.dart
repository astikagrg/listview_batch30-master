import 'package:flutter/material.dart';
import 'package:listview_batch30/widget/card.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          // displaycard("card 1", context),
          // displaycard("card 2", context)
        ],
      )),
    );
  }
}
