import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, this.onPressed, this.isActive = false});

  final VoidCallback? onPressed;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      onPressed: onPressed,
      child: Column(
        children: [
          SvgPicture.asset(
            "assets/icons/classic_category.svg",
            width: 40,
            height: 40,
            colorFilter: ColorFilter.mode(
              isActive ? Color(0xFFFF4A4C) : Color(0xFFACA9A7),
              BlendMode.srcIn,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Classic",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: isActive ? Color(0xFFFF4A4C) : Color(0xFFACA9A7),
            ),
          ),
          Spacer(),
          if (isActive)
            Container(width: 56, height: 3, color: Color(0xFFFF4A4C)),
        ],
      ),
    );
  }
}
