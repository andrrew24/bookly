import 'package:flutter/material.dart';
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
              width: width * .78 ,
              child: CustomTextField(
                hintText: "Search",
                onSaved: (value) {
                  bookName = value;
                },
              ),
            ),

            IconButton.filled(
              onPressed: (){}, icon:const Icon(FontAwesomeIcons.magnifyingGlass,color: Colors.black,))
          ],
        ));
  }
}
