import 'package:custom_widget_componenet/product/widget/custom_divider.dart';
import 'package:custom_widget_componenet/product/widget/custom_dropdown.dart';
import 'package:custom_widget_componenet/product/widget/custom_radius.dart';
import 'package:custom_widget_componenet/product/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

import '../../product/widget/custom_show_alert_dialog.dart';
import '../../product/widget/custom_vertical_divider.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String? _dropdownValue;
  String? _showdialogAlertText = 'Lütfen dikkate aliniz';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Text('ss'),
        _dropdownWidget(),
        _customDropdown(),
        _textRow(),
        _customProfileTittle(),
        const DividerWidget(),
        _verticalDivider(),
        const DividerSheet(),
        const VerticalProfileDivider(),
        // _customRadiusContainer(),
        ShowAlertDialog(
          tittleText: 'Dikkar',
          alertText: _showdialogAlertText,
          acceptText: 'Tamam ',
          cancelText: 'Exit',
          cancelButton: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView()));
          },
          acceptButton: () {
            Navigator.pop(context);
          },
        )
      ]),
    );
  }

  Container _customRadiusContainer() {
    return Container(
      height: 50,
      decoration: BoxDecoration(color: Colors.yellow, borderRadius: GeneralRadius.allLow()),
    );
  }

  SizedBox _verticalDivider() {
    return const SizedBox(
        height: 100,
        child: VerticalDivider(
          color: Colors.black,
          thickness: 10,
        ));
  }

  ProfileTittleText _customProfileTittle() {
    return const ProfileTittleText(
      name: 'Hello',
      tittle: 'VBT',
    );
  }

  Row _textRow() {
    return Row(
      children: [Text('Selam'), Text('   Vbt')],
    );
  }

  CitySelectDropdown _customDropdown() {
    return CitySelectDropdown(
      tittleText: 'Lütfen Deger giriniz',
      items: ['aa', 'bbb', 'cc'],
      onChanged: (data) {},
    );
  }

  DropdownButton<String> _dropdownWidget() {
    return DropdownButton(
        hint: _dropdownValue == null ? Text('Lütfen deger giriniz') : Text(_dropdownValue ?? ''),
        items: ['Çaşdaşke', 'Celalke', 'Beyzake'].map(
          (val) {
            return DropdownMenuItem<String>(
              value: val,
              child: Text(val),
            );
          },
        ).toList(),
        onChanged: (val) {
          setState(() {
            _dropdownValue = val.toString();
          });
        });
  }
}

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 5,
      color: Colors.red,
    );
  }
}
