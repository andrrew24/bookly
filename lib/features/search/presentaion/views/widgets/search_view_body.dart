import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_search_text_field.dart';
import 'search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 7, vertical: 15),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSearchTextField(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Search Result",
                    style: Styles.textStyle20,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              child: SearchResultListView(),
            )
          ],
        ));
  }
}
