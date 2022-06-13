import 'package:flutter/material.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/navigation/app_router.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class ModalService {
  static void showSnackBar({required ContentType contentType, required String title, required String message}) {
    final snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: title,
        message: message,
        contentType: contentType,
      ),
    );

    ScaffoldMessenger.of(get<AppRouter>().navigatorKey.currentContext!).showSnackBar(snackBar);
  }

  static Future<T?> showBottomSheet<T>(
          {required Widget child, double horizontalPadding = 16.0, double topPadding = 25, bool addNotch = true}) =>
      showModalBottomSheet<T>(
        isScrollControlled: true,
        useRootNavigator: true,
        context: get<AppRouter>().navigatorKey.currentContext!,
        builder: (context) {
          final bottomPadding = MediaQuery.of(context).viewInsets.bottom;
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (addNotch)
                Container(
                  margin: const EdgeInsets.only(top: 4, bottom: 4),
                  decoration: const BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  width: 40,
                  height: 4,
                ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: topPadding,
                    left: horizontalPadding,
                    right: horizontalPadding,
                    bottom: bottomPadding > 0 ? bottomPadding : 32,
                  ),
                  child: child,
                ),
              ),
            ],
          );
        },
      );
}
