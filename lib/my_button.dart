import 'package:flutter/material.dart';

class mybutton extends StatelessWidget {
  final void Function()? onTap;
  final Widget? Child;
  const mybutton({super.key,required this.onTap,required this.Child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child:  Child,
        decoration: BoxDecoration(

          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(25),
        ),
        padding: EdgeInsets.all(14),

      ),
    );
  }
}
