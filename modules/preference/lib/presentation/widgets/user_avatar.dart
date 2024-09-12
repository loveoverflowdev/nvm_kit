import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '_text_avatar.dart';

class UserAvatar extends StatelessWidget {
  final String name;
  final String? thumbnailAvatarUrl;

  const UserAvatar({
    super.key,
    required this.name,
    this.thumbnailAvatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    late final textAvatar = TextAvatar(
      text: name,
    );
    if (thumbnailAvatarUrl == null) {
      textAvatar;
    }
    print('--------------- $thumbnailAvatarUrl');
    return CachedNetworkImage(
      imageUrl: thumbnailAvatarUrl ?? '',
      imageBuilder: (context, imageProvider) => Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSpacing.sm),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      placeholder: (context, url) => const AppCircularLoadingWidget(),
      errorWidget: (context, url, error) => textAvatar,
    );
  }
}
