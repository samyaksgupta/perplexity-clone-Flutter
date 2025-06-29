import 'package:flutter/material.dart';
import 'package:horizon_perplex/pages/chat_page.dart';
import 'package:horizon_perplex/services/chat_web_service.dart';
import '../themes/colors.dart';
import 'search_bar_button.dart';

class SearchSection extends StatefulWidget {
  const SearchSection({super.key});

  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  final queryController = TextEditingController();

  @override
  void dispose() {
    //
    super.dispose();
    queryController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'A “mid-level” AI assistant developer',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 32),
        Container(
            width: 700,
            decoration: BoxDecoration(
              color: AppColors.searchBar,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: AppColors.searchBarBorder,
                width: 1.5,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: queryController,
                    decoration: InputDecoration(
                      hintText: 'Search Top 5 results....',
                      hintStyle: TextStyle(
                        color: AppColors.textGrey,
                        fontSize: 16,
                      ),
                      border: InputBorder.none,
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        SearchBarButton(
                          icon: Icons.auto_awesome_outlined,
                          text: 'Focus',
                        ),
                        const SizedBox(width: 12),
                        SearchBarButton(
                          icon: Icons.add_circle_outline_outlined,
                          text: 'Attach',
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            ChatWebService().chat(queryController.text.trim());
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    ChatPage(question: queryController.text.trim()),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(9),
                            decoration: BoxDecoration(
                              color: AppColors.submitButton,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: const Icon(
                              Icons.arrow_forward,
                              color: AppColors.background,
                              size: 16,
                            ),
                          ),
                        )
                      ],
                    ))
              ],
            ))
      ],
    );
  }
}
