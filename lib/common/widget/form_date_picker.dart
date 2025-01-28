import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class PersianFormDatePicker extends StatelessWidget {
  final String name;
  final String label;
  final FormFieldValidator<DateTime>? validator;
  final ValueTransformer<DateTime?>? valueTransformer;
  final DateTime? initialValue;

  const PersianFormDatePicker({
    super.key,
    required this.name,
    required this.label,
    this.validator,
    this.valueTransformer,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<DateTime?>(
      name: name,
      validator: validator,
      valueTransformer: valueTransformer,
      initialValue: initialValue,
      builder: (FormFieldState<DateTime?> field) {
        return InputDecorator(
          decoration: InputDecoration(
            labelText: field.value != null ? label : null,
            errorText: field.errorText,
          ),
          child: GestureDetector(
            onTap: () {
              _showDatePicker(context, field.value).then(
                (value) {
                  if (value != null) {
                    field.didChange(value);
                  }
                },
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Text(
                    field.value?.toPersianDate() ?? label,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<DateTime?> _showDatePicker(
      BuildContext context, DateTime? initValue) async {
    Jalali? init;
    if (initValue != null) {
      try {
        init = Jalali.fromDateTime(initValue);
      } catch (e) {
        init = Jalali.now();
      }
    }
    Jalali? picked = await showPersianDatePicker(
      context: context,
      initialDate: init ?? Jalali.now(),
      firstDate: Jalali(1300, 1),
      lastDate: Jalali.now(),
    );
    if (picked != null) {
      return picked.toDateTime();
    }
    return null;
  }
}
