import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieLoadingWidget extends StatelessWidget {
  const LottieLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 400,
        horizontal: 150,
      ),
      child: Lottie.network(
          'https://assets2.lottiefiles.com/packages/lf20_f2FbumUGYS.json'),
    );
  }
}
