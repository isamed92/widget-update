import 'package:flutter/material.dart';

class UiControlScreen extends StatelessWidget {
  const UiControlScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = true;
  bool wantsLunch = false;
  bool wantsDinner = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          value: isDeveloper,
          title: const Text('Developer mode'),
          subtitle: const Text('controles adicionales'),
          onChanged: (value) {
            isDeveloper = value;
            setState(() {});
          },
        ),
        ExpansionTile(
          title: const Text('vehiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              value: Transportation.car,
              groupValue: selectedTransportation,
              title: const Text('car'),
              subtitle: const Text('viajar por auto'),
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              }),
            ),
            RadioListTile(
              value: Transportation.boat,
              groupValue: selectedTransportation,
              title: const Text('boat'),
              subtitle: const Text('viajar por barco'),
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              }),
            ),
            RadioListTile(
              value: Transportation.plane,
              groupValue: selectedTransportation,
              title: const Text('plane'),
              subtitle: const Text('viajar por avion'),
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.plane;
              }),
            ),
            RadioListTile(
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              title: const Text('submarine'),
              subtitle: const Text('viajar por submarino'),
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.submarine;
              }),
            ),
          ],
        ),
        CheckboxListTile(
          value: wantsBreakfast,
          title: const Text('desayuno?'),
          onChanged: (value) => setState(() {
            wantsBreakfast = value!;
          }),
        ),
        CheckboxListTile(
          value: wantsLunch,
          title: const Text('almuerzo?'),
          onChanged: (value) => setState(() {
            wantsLunch = value!;
          }),
        ),
        CheckboxListTile(
          value: wantsDinner,
          title: const Text('cena?'),
          onChanged: (value) => setState(() {
            wantsDinner = value!;
          }),
        ),
      ],
    );
  }
}
