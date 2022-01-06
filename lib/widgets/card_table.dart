import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.pie_chart_outline,
              color: Colors.blue,
              text: "General",
            ),
            _SingleCard(
              icon: Icons.car_rental,
              color: Colors.purple,
              text: "Transport",
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.shop,
              color: Colors.pinkAccent,
              text: "Shopping",
            ),
            _SingleCard(
              icon: Icons.cloud,
              color: Colors.orange,
              text: "Bill",
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.movie,
              color: Colors.deepPurple,
              text: "Entertainment",
            ),
            _SingleCard(
              icon: Icons.local_grocery_store,
              color: Colors.green,
              text: "Grocery",
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return _CardBackgrund(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(icon, size: 35, color: Colors.white),
            radius: 30,
          ),
          const SizedBox(height: 10.0),
          Text(text, style: const TextStyle(color: Colors.blue, fontSize: 18.0))
        ],
      ),
    );
  }
}

class _CardBackgrund extends StatelessWidget {
  const _CardBackgrund({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
