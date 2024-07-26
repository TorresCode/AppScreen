import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  const ProfileAvatar({super.key, required this.imageUrl, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20.0,
      backgroundColor: Color(0xFF969595),
      backgroundImage: CachedNetworkImageProvider(imageUrl),
    );
  }
}
