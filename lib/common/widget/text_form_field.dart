import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AppTextFormField extends StatelessWidget {
  final String name;
  final String? Function(String? value)? validator;
  final InputDecoration? decoration;
  final bool? obscureText;
  final bool? autocorrect;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final int? maxLength;
  final FormFieldSetter<String>? onSaved;
  final ValueTransformer<String?>? valueTransformer;
  final TextDirection? textDirection;

  const AppTextFormField({
    super.key,
    this.validator,
    this.decoration,
    required this.name,
    this.obscureText,
    this.autocorrect,
    this.inputFormatters,
    this.keyboardType,
    this.maxLength,
    this.onSaved,
    this.valueTransformer,
    this.textDirection,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
        name: name,
        validator: validator,
        autocorrect: autocorrect ?? true,
        obscureText: obscureText ?? false,
        inputFormatters: inputFormatters,
        keyboardType: keyboardType,
        maxLength: maxLength,
        onSaved: onSaved,
        textDirection: textDirection,
        valueTransformer: valueTransformer ?? (text) => text?.trim(),
        decoration: decoration ?? const InputDecoration());
  }
}
