import 'package:cashir/shared/widgets/common/wrapper.widget.dart';
import 'package:cashir/shared/widgets/forms/text_input.widget.dart';
import 'package:flutter/material.dart';
import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

class EditSupplierScreen extends StatelessWidget {
  final form = FormGroup({
    "name": FormControl(validators: [Validators.required]),
    "phone": FormControl(validators: []),
    "address": FormControl(validators: []),
  });

  EditSupplierScreen({super.key});

  void editSupplier() {
    if (form.invalid) {
      form.markAllAsTouched();
      return;
    }

    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      title: "Edit Supplier ${Get.parameters["id"]}",
      child: Wrapper(
        child: ReactiveForm(
          formGroup: form,
          child: ListView(
            children: [
              TextInput(title: "name".tr, formControlName: "name"),
              const SizedBox(height: 20),
              TextInput(title: "phone".tr, formControlName: "phone"),
              const SizedBox(height: 20),
              TextInput(title: "address".tr, formControlName: "address"),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: editSupplier,
                  child: Text("Save".tr),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
