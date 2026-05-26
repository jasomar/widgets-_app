import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const name = "buttons_screen";

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("buttons screen")),
      body: const _buttonsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _buttonsView extends StatelessWidget {
  const _buttonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Elevate"),
            ),
            ElevatedButton(
              onPressed: null,

              child: const Text("Elevate Disabled"),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.access_alarms_rounded),
              label: Text("Elevate icon test"),
            ),
            FilledButton(
              onPressed: () {},
              child: const Text("data"),
            ),
            FilledButton.icon(
              onPressed: () {},
              label: Text("dff"),
              icon: Icon(Icons.access_alarm_rounded),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text(" test"),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              label: Text("dff"),
              icon: Icon(Icons.access_alarm_rounded),
            ),
            TextButton(
              onPressed: () {},
              child: Text(" test"),
            ),
            TextButton.icon(
              onPressed: () {},
              label: Text(" test"),
              icon: Icon(Icons.account_circle),
            ),

            //ToDo custom button
            CustomButton(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.apartment_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.apartment_rounded),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  colors.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            child: Text(
              "hola mundo",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
