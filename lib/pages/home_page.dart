import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:horizon_perplex/services/chat_web_service.dart';
import 'package:horizon_perplex/themes/colors.dart';
import 'package:horizon_perplex/widgets/side_bar.dart';
import 'package:horizon_perplex/widgets/search_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  void initState() {
    super.initState();
    ChatWebService().connect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        kIsWeb ?  SideBar() : SizedBox(),
        Expanded(
            child: Padding(
              padding: !kIsWeb ? EdgeInsets.all(8.0) : EdgeInsets.zero,
              child: Column(
                        children: [
              Expanded(child: SearchSection()
              ),
                        
              //footer
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "© 2025 Horizon Beta. All rights reserved.",
                          style: TextStyle(
                              fontSize: 14, color: AppColors.footerGrey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "Privacy Policy",
                          style: TextStyle(
                              fontSize: 14, color: AppColors.footerGrey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "Terms of Service",
                          style: TextStyle(
                              fontSize: 14, color: AppColors.footerGrey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "About Us",
                          style: TextStyle(
                              fontSize: 14, color: AppColors.footerGrey),
                        ),
                      ),
                    ],
                  ))
              
              //search section
                        ],
                      ),
            ))
      ],
    ));
  }
}
