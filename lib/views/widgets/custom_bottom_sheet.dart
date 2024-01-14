import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_filed.dart';

class CusttomBottomSheet extends StatelessWidget {
  const CusttomBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16, 30, 16, 0),
            child: CustomTextFaild(
              hint: 'Title',
              maxLines: 1,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 30, 16, 0),
            child: CustomTextFaild(
              hint: 'Content',
              maxLines: 5,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CustomButton(txt: 'Add'),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

