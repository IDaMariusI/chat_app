import 'package:flutter/material.dart';

class LoginLabels extends StatelessWidget {
  final String route;
  final String subTitle;
  final String title;

  const LoginLabels({super.key, required this.route, required this.subTitle, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, route);
            },
            child: Text(
              subTitle,
              style: TextStyle(
                color: Colors.blue[600],
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
