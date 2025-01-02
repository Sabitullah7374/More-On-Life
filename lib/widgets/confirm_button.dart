import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 288),
      child: ElevatedButton(
        onPressed: () {
          // Confirm button logic here
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFD3D3D3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12),
        ),
        child: Text(
          'Confirm',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
    );
  }
}