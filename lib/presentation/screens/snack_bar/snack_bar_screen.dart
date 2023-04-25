import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({Key? key}) : super(key: key);

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('HOLIWIS'),
      action: SnackBarAction(label: 'ok', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Pariatur fugiat sunt ex dolor magna labore. Enim excepteur fugiat quis laboris do consectetur in occaecat. Excepteur aute nulla est fugiat. Eu voluptate et cillum esse ullamco occaecat ex ea. Sint sint do mollit Lorem dolor magna qui ullamco.')
                ]);
              },
              child: const Text('Licencias usadas')),
          FilledButton.tonal(
              onPressed: () {
                openDialog(context);
              },
              child: const Text('Mostrar dialogo en pantalla')),
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
          title: const Text('Estas seguro?'),
          actions: [
            TextButton(
                onPressed: () => context.pop(), child: const Text('Cancelar')),
            FilledButton(
                onPressed: () => context.pop(), child: const Text('Aceptar'))
          ],
          content: const Text(
              'Sit ullamco irure mollit ipsum aliquip aute nulla fugiat. Mollit tempor non aliqua adipisicing. Qui occaecat cillum occaecat id exercitation. Incididunt duis mollit exercitation incididunt amet. Laboris consequat consequat elit ea eu ad nisi tempor ullamco non occaecat ullamco cillum mollit. Anim pariatur aliquip occaecat eiusmod eiusmod duis in magna officia cillum eiusmod sint. Et aute Lorem culpa exercitation irure.')),
    );
  }
}
