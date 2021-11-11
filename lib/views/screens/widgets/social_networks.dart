import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/utils/utils_export.dart';
import 'package:my_portfolio/views/theme/colors.dart';

class SocialNetworkWidget extends StatelessWidget {
  const SocialNetworkWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: [
        _buildItem(
            "Github", ImageUtil.github, "https://github.com/JasperEssien2/"),
        _buildItem("LinkedIn", ImageUtil.linkedin,
            "https://linkedin.com/in/jahswill-essien-9b0221168"),
        _buildItem(
            "Twitter", ImageUtil.twitter, "https://twitter.com/EssienJasper"),
        _buildItem(
          "Email",
          const Icon(
            Icons.email,
            color: Colors.white,
            size: 24,
          ),
          "jasperessien2@gmail.com",
        ),
      ],
    );
  }

  Widget _buildItem(String name, dynamic icon, String link) {
    return InkWell(
      onTap: () => js.context.callMethod('open', [link]),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (icon is Icon)
            icon
          else
            SvgPicture.asset(icon, height: 24, width: 24, color: Colors.white),
          const SizedBox(width: 8),
          Text(
            name,
            style: const TextStyle(
              fontSize: 14,
              color: textColor1,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
