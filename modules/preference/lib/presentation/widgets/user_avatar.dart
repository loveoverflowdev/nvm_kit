import 'package:flutter/material.dart';

import '_text_avatar.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextAvatar(
      text: 'User',
    );
  }
}
