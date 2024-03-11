import 'package:flutter/material.dart';
import 'package:sciencedex_project/app.colors.dart';

class CustomDropdown extends StatefulWidget {
  final List<String> list;
  final String value;
  final double radius;
  final double fontSize;
  final EdgeInsets? padding;

  const CustomDropdown({
    super.key,
    required this.list,
    required this.value,
    this.radius = 5,
    this.fontSize = 12,
    this.padding,
  });

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.all(
      Radius.circular(widget.radius),
    );

    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: borderRadius,
        border: Border.all(color: AppColors.secondaryColor, width: 1),
      ),
      padding: widget.padding,
      child: DropdownButton<String>(
        value: widget.value,
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        elevation: 1,
        underline: Container(),
        style: TextStyle(
          color: Colors.black,
          fontSize: widget.fontSize,
        ),
        icon: Transform.translate(
          offset: const Offset(8, 0),
          child: const Icon(Icons.keyboard_arrow_down_rounded),
        ),
        iconSize: 19,
        iconEnabledColor: AppColors.tertiaryColor,
        iconDisabledColor: AppColors.tertiaryColor,
        padding: const EdgeInsets.all(0),
        onChanged: (value) {},
        items: widget.list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
