import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/login_header.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: const AspectRatio(
        aspectRatio: 360 / 300,
      ),
    );
  }
}
