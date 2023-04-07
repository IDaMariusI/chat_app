import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  final String buttonText;
  final Function()? onPressed;

  const BlueButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: (onPressed != null)
            ? MaterialStateProperty.all(Colors.blue)
            : MaterialStateProperty.all(Colors.grey),
        shape: MaterialStateProperty.all(const StadiumBorder()),
        elevation: MaterialStateProperty.resolveWith<double>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return 10.0;
            }

            return 2.0;
          },
        ),
      ),
      onPressed: onPressed,
      child: Container(
        height: 55,
        width: double.infinity,
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
