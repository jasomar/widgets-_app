import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'SnackbarScreen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text("hola mundo"),
      action: SnackBarAction(label: "ok", onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text("estas seguro?"),
        content: Text("lorem ipson"),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text("cancelar"),
          ),
          FilledButton(
            onPressed: () => context.pop(),
            child: const Text("aceptar"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snack y Dialogs')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [const Text("tedt")],
                );
              },
              child: Text("licencias usadas"),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: Text("mostrat dailogo"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.remove_red_eye_outlined),
        label: const Text("Mostrar SnackBar"),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
