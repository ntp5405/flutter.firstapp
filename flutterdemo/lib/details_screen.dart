import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutterdemo/Product.dart';

import 'rounded_icon_btn.dart';

// const primaryColor = Color(0xFFF5F6F9);

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(),
    );
  }
}

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({Key? key})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  Size get PreferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            RoundedIconBtn(
              iconData: Icons.arrow_back_ios,
              press: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}

// class CustomAppBar extends PreferredSize {
//  CustomAppBar({Key? key})
//       : super(key: key);

//   @override
//   Size get PreferredSize => Size.fromHeight(AppBar().preferredSize.height);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Row(
//         children: [
//           RoundedIconBtn(iconData: Icons.arrow_back_ios,  press: () => Navigator.pop(context) )
//         ],
//       ),
//     );
//   }
// }

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
