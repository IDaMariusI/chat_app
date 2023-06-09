import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final AnimationController animationController;
  final String textMessage;
  final String uid;

  const ChatMessage({
    super.key,
    required this.animationController,
    required this.textMessage,
    required this.uid,
  });

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animationController,
      child: SizeTransition(
        sizeFactor: CurvedAnimation(
          parent: animationController,
          curve: Curves.easeOut,
        ),
        child: Container(
          child: uid == '123' ? _myMessage() : _notMyMessage(),
        ),
      ),
    );
  }

  Widget _myMessage() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.only(bottom: 5, left: 50, right: 5),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xff4D9EF6),
        ),
        child: Text(textMessage, style: const TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget _notMyMessage() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 5, left: 5, right: 50),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xffE4E5E8),
        ),
        child: Text(textMessage, style: const TextStyle(color: Colors.black87)),
      ),
    );
  }
}
