import 'package:flutter/material.dart';
import 'package:m_toast/m_toast.dart';

void showSuccessToast(BuildContext context, String title) {
    ShowMToast toast = ShowMToast();
    toast.successToast(context, message: title, alignment: Alignment.bottomCenter);
}

void showErrorToast(BuildContext context, String title) {
    ShowMToast toast = ShowMToast();
    toast.errorToast(context, message: title, alignment: Alignment.bottomCenter);
}