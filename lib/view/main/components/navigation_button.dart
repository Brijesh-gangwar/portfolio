// import 'package:flutter/material.dart';

// class NavigationTextButton extends StatelessWidget {
//   final VoidCallback onTap;
//   final String text;

//   const NavigationTextButton(
//       {super.key, required this.onTap, required this.text});

//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//         onPressed: onTap,
//         child: Text(
//           text,
//           style: Theme.of(context)
//               .textTheme
//               .labelMedium!
//               .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
//         ));
//   }
// }


import 'package:flutter/material.dart';

class NavigationTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final double fontSize;
  final Color? color;
  final FontWeight? fontWeight;

  const NavigationTextButton({
    super.key,
    required this.onTap,
    required this.text,
    this.fontSize = 14,
    this.color,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    final defaultStyle = Theme.of(context).textTheme.labelMedium;

    return InkWell(
              onTap: onTap,

        child: Text(
          text,
          style: defaultStyle?.copyWith(
                fontSize: fontSize,
                fontWeight: fontWeight ?? FontWeight.bold,
                color: color ?? Colors.white,
              ) ??
              TextStyle(
                fontSize: fontSize,
                fontWeight: fontWeight ?? FontWeight.bold,
                color: color ?? Colors.white,
              ),
        ),
      
    );
  }
}
