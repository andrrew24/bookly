import 'package:bookly/features/search/presentaion/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_textfield.dart';

class SearchSection extends StatefulWidget {
  const SearchSection({super.key});

  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  final GlobalKey<FormState> formKey = GlobalKey();

  String? bookName;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Form(
        key: formKey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: width * .78,
              child: CustomTextField(
                hintText: "Search",
                onSaved: (value) {
                  bookName = value;
                },
              ),
            ),
            IconButton.filled(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    BlocProvider.of<SearchCubit>(context)
                      .getSearchedBook(bookName: bookName!);
                  }
                },
                icon: const Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Colors.black,
                ))
          ],
        ));
  }
}
