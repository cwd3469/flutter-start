import 'package:flutter/material.dart';

class SignStepbar extends StatefulWidget {
  SignStepbar({Key? key}) : super(key: key);
  @override
  _SignStepbarState createState() => _SignStepbarState();
}

class _SignStepbarState extends State<SignStepbar> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(
            accentColor: Color(0xffB863FB),
            primarySwatch: Colors.purple,
            colorScheme: ColorScheme.light(primary: Color(0xffB863FB))),
        child: Stepper(
          steps: getSteps(),
          type: StepperType.horizontal,
          currentStep: currentStep,
          onStepTapped: (int step) {
            setState(() {
              currentStep = step;
            });
          },
          onStepCancel: () {
            currentStep > 0 ? setState(() => currentStep -= 1) : null;
          },
          onStepContinue: () {
            currentStep < 2 ? setState(() => currentStep += 1) : null;
          },
        ));
  }

  List<Step> getSteps() {
    return [
      Step(
        title: new Text('학교인증'),
        content: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email Address'),
            ),
          ],
        ),
        isActive: currentStep >= 0,
        state: currentStep == 0 ? StepState.editing : StepState.complete,
      ),
      Step(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            new Text('학교 정보'),
            Container(
              width: 80,
              height: 1,
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
            ),
            new Text('학교 정보'),
          ],
        ),
        content: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Home Address'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Mobile No'),
            ),
          ],
        ),
        isActive: currentStep >= 1,
        state: currentStep == 1
            ? StepState.editing
            : currentStep < 1
                ? StepState.disabled
                : StepState.complete,
      ),
      Step(
        title: new Text("아이디 생성"),
        content: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Account No'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'IFSC Code'),
            ),
          ],
        ),
        isActive: currentStep >= 2,
        state: currentStep == 2
            ? StepState.editing
            : currentStep < 2
                ? StepState.disabled
                : StepState.complete,
      ),
    ];
  }
}
