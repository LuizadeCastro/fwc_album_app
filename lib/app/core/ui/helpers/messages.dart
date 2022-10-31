import 'package:flutter/widgets.dart';
import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

mixin Messages<T extends StatefulWidget> on State<T> {
  void showError(String message) {
    showTopSnackBar(
        context,
        CustomSnackBar.error(
          message: message,
          backgroundColor: ColorsApp.instance.primary,
        ));
  }

  void showInfo(String message) {
    showTopSnackBar(
      context,
      CustomSnackBar.info(message: message),
    );
  }

  void showSuccess(String message) {
    showTopSnackBar(
      context,
      CustomSnackBar.success(message: message),
    );
  }
}
