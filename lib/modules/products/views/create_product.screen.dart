import 'dart:typed_data';

import 'package:cashir/shared/widgets/common/wrapper.widget.dart';
import 'package:cashir/shared/widgets/forms/barcode_input.widget.dart';
import 'package:cashir/shared/widgets/forms/file_input.widget.dart';
import 'package:cashir/shared/widgets/forms/text_input.widget.dart';
import 'package:flutter/material.dart';
import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../shared/validators/must_be_double.dart';

class CreateProductScreen extends StatelessWidget {
  final form = FormGroup({
    'name': FormControl<String>(validators: [Validators.required]),
    "description": FormControl<String>(validators: [Validators.required]),
    "price": FormControl<double>(
      value: 0,
      validators: [
        Validators.required,
        const MustBeDouble(),
      ],
    ),
    "quantity": FormControl<int>(
      value: 0,
      validators: [Validators.required, Validators.number],
    ),
    "category_id": FormControl<String>(validators: [Validators.required]),
    "image": FormControl<List<Uint8List>>(validators: [Validators.required]),
    "barcode": FormControl<String>(),
  });

  CreateProductScreen({super.key});

  void createProduct() {
    if (form.invalid) {
      form.markAllAsTouched();
      return;
    }

    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      title: "Create Product",
      child: Wrapper(
        child: ReactiveForm(
          formGroup: form,
          child: ListView(
            children: [
              TextInput(title: "name".tr, formControlName: "name"),
              const SizedBox(height: 20),
              TextInput(
                  title: "description".tr, formControlName: "description"),
              const SizedBox(height: 20),
              TextInput(
                title: "price".tr,
                formControlName: "price",
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              TextInput(
                title: "quantity".tr,
                formControlName: "quantity",
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              TextInput(title: "category".tr, formControlName: "category_id"),
              const SizedBox(height: 20),
              FileInput(
                label: "image".tr,
                formControlName: "image",
                isMultiple: true,
              ),
              const SizedBox(height: 20),
              BarcodeInput(title: "bar code".tr, formControlName: "barcode"),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: createProduct,
                  child: Text("Create".tr),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
