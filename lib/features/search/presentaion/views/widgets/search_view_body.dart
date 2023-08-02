import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentaion/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
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
                  SearchSection(),
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

class SearchSection extends StatelessWidget {
  const SearchSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomTextField(hintText: "Search");
  }
}
