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
              color: Colors.pinkAccent,
              text: "Transport",
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.shop,
              color: Colors.purple,
              text: "Shopping",
            ),
            _SingleCard(
              icon: Icons.cloud,
              color: Colors.purpleAccent,
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
    return Container(
      margin: const EdgeInsets.all(15.0),
      height: 180,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(
              icon,
              size: 35,
            ),
            radius: 30,
          ),
          const SizedBox(height: 10.0),
          Text(
            text,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 18.0,
            ),
          )
        ],
      ),
    );
  }
}
