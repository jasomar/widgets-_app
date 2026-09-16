import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'UiControlsScreen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ui controls")),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() =>
      _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;

  Transportation selectedTransportation =
      Transportation.car;

  bool wantsBreakfast = false;
  bool wantsLunch = true;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: Text("Developer mode"),
          subtitle: Text("more controls"),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: const Text("Vehicule"),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioGroup(
              groupValue: selectedTransportation,
              onChanged: (Transportation? value) {
                setState(() {
                  selectedTransportation = value!;
                });
              },
              child: Column(
                children: [
                  RadioListTile<Transportation>(
                    title: Text('By car'),
                    subtitle: Text('Viajar por carro'),
                    value: Transportation.car,
                  ),
                  RadioListTile<Transportation>(
                    title: Text('By plane'),
                    subtitle: Text('Viajar por avión'),
                    value: Transportation.plane,
                  ),
                  RadioListTile<Transportation>(
                    title: Text('By boat'),
                    subtitle: Text('Viajar por barco'),
                    value: Transportation.boat,
                  ),
                  RadioListTile<Transportation>(
                    title: Text('By submarine'),
                    subtitle: Text('Viajar por submarino'),
                    value: Transportation.submarine,
                  ),
                ],
              ),
            ),
          ],
        ),

        CheckboxListTile(
          value: wantsBreakfast,
          title: const Text("Breakfast?"),
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          value: wantsLunch,
          title: const Text("Lunch?"),
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          value: wantsDinner,
          title: const Text("Dinner?"),
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}
