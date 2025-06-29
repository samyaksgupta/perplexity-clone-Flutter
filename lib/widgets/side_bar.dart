import 'package:flutter/material.dart';
import 'package:horizon_perplex/themes/colors.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool isExpanded = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: isExpanded ? 64 : 128,
      color: AppColors.sideNav,
      child: Column(
        children: [
          const SizedBox(height: 16),
          Icon(Icons.auto_awesome_mosaic, color: AppColors.whiteColor, size: 30,),
          const SizedBox(height: 16),
          Icon(Icons.add, color: AppColors.iconGrey, size: 24,),
          const SizedBox(height: 16),
          Icon(Icons.search, color: AppColors.iconGrey, size: 24,),
          const SizedBox(height: 16),
          Icon(Icons.settings, color: AppColors.iconGrey, size: 24,),
          const SizedBox(height: 16),
          Icon(Icons.auto_awesome, color: AppColors.iconGrey, size: 24,),
          const Spacer(),

          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Icon( isExpanded ? Icons.keyboard_arrow_right : Icons.keyboard_arrow_left, color: AppColors.iconGrey, size: 24,),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}