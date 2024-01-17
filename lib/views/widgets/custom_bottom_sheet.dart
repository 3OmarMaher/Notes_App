import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_form.dart';

class CusttomBottomSheet extends StatelessWidget {
  const CusttomBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: CustomForm(),
    );
  }
}
