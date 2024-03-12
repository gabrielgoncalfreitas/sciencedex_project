import 'package:flutter/material.dart';
import 'package:sciencedex_project/app/app.colors.dart';
import 'package:sciencedex_project/app/app.styles.dart';
import 'package:sciencedex_project/shared/widgets/custom_text.dart';

class CustomDropdown extends StatefulWidget {
  final List<String> list;
  final String value;
  final double radius;
  final double fontSize;
  final EdgeInsets? padding;
  final Function(String) onChanged;
  final Color? borderColor;
  final bool readOnly;

  const CustomDropdown({
    super.key,
    required this.list,
    required this.value,
    this.radius = 5,
    this.fontSize = 12,
    this.padding,
    required this.onChanged,
    this.borderColor,
    this.readOnly = false,
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
        border: Border.all(
          color: widget.readOnly ? AppColors.none : widget.borderColor ?? AppColors.secondaryColor,
          width: 1,
        ),
      ),
      padding: widget.padding,
      child: DropdownButton<String>(
        value: widget.value,
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        elevation: 1,
        underline: Container(),
        style: TextStyle(
          color: Colors.black,
          fontSize: AppStyles.calculateFontSize(
            context: context,
            currentSize: widget.fontSize,
          ),
        ),
        icon: Transform.translate(
          offset: const Offset(8, 0),
          child: const Icon(Icons.keyboard_arrow_down_rounded),
        ),
        iconSize: 19,
        iconEnabledColor: widget.readOnly ? AppColors.none : AppColors.tertiaryColor,
        iconDisabledColor: widget.readOnly ? AppColors.none : AppColors.tertiaryColor,
        padding: const EdgeInsets.all(0),
        onChanged: widget.readOnly == true ? null : (value) {},
        items: widget.list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: CText(value, fontSize: AppStyles.calculateFontSize(context: context, currentSize: 10)),
            onTap: () => widget.onChanged(value),
          );
        }).toList(),
      ),
    );
  }
}
