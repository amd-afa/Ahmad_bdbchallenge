import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieErrorWidget extends StatelessWidget {
  const LottieErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 150,
        horizontal: 150,
      ),
      child: Lottie.network(
          'https://assets3.lottiefiles.com/packages/lf20_bdnjxekx.json'),
    );
  }
}
