import 'dart:async';

import 'package:flutter/material.dart';

class CircularButton extends StatefulWidget {

  const CircularButton({Key? key, this.onComplete}) : super(key: key);
  final VoidCallback? onComplete;

  @override
  State<StatefulWidget> createState() => _CircularButtonState();
}

class _CircularButtonState extends State<CircularButton> with SingleTickerProviderStateMixin{
  Timer? timer;
  double progress = 0.0;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(vsync: this, duration: Duration(seconds: 1));
    controller.addListener(() {
      setState(() {
        if(controller.isCompleted){
          widget.onComplete?.call();
          controller.reset();
        }
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 24,
            child: Image.asset("assets/ic_nagad_account.png", height: 36, width: 36,),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: CircularProgressIndicator(
              strokeWidth: 6,
              color: Colors.black12,
              value: 1,
            ),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: CircularProgressIndicator(
              strokeWidth: 6,
              color: Colors.deepOrange,
              value: controller.value, // Change this value to update the progress
            ),
          ),
        ],
      ),
      onTapDown: (_) => controller.forward(),
      onTapUp: (_) {
        if (controller.status == AnimationStatus.forward) {
          controller.reverse();
        }
      },

    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
}