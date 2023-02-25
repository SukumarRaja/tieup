import 'package:flutter/material.dart';

import '../../themes/colors.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({Key? key, required this.icon, required this.onPressed})
      : super(key: key);
  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                  color: AppColors.black.withOpacity(.15),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0.2, 0.3))
            ]),
        child: Icon(
          icon,
          color: AppColors.primary,
        ),
      ),
    );
  }
}
