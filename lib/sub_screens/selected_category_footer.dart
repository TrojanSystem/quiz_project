import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_project/data_room/data_storage.dart';
import 'package:quiz_project/quiz_widgets/quiz_button.dart';

class SelectedCategoryFooter extends StatefulWidget {
  SelectedCategoryFooter({
    required this.height,
    required this.width,
    required this.currentQuestion,
  });

  double width;
  double height;
  int currentQuestion;

  @override
  State<SelectedCategoryFooter> createState() => _SelectedCategoryFooterState();
}

class _SelectedCategoryFooterState extends State<SelectedCategoryFooter> {
  @override
  Widget build(BuildContext context) {
    Future<bool> _onWillPop() async {
      return (await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text(
                'Are you sure?',
                style: TextStyle(color: Colors.white),
              ),
              content: const Text(
                'Do you want to exit an App',
                style: TextStyle(color: Colors.white),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () =>
                      Navigator.of(context).pop(false), //<-- SEE HERE
                  child: const Text('No'),
                ),
                TextButton(
                  onPressed: () {
                    // setState(() {
                    //   Navigator.of(context).pushReplacement(
                    //     MaterialPageRoute(
                    //       builder: (ctx) => const FrontScreen(),
                    //     ),
                    //   );
                    //
                    // });
                  },
                  child: const Text('Yes'),
                ),
              ],
              backgroundColor: Colors.black.withOpacity(0.3),
            ),
          )) ??
          false;
    }

    return Expanded(
      flex: 2,
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: _onWillPop,
              child: Row(
                children: const [
                  Icon(
                    Icons.power_settings_new_outlined,
                    color: Colors.white60,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Quit Quiz',
                    style: TextStyle(
                      color: Colors.white60,
                    ),
                  ),
                ],
              ),
            ),
            QuizButtons(
                bgColor: const Color.fromRGBO(6, 209, 243, 1),
                textColor: Colors.white,
                deviceWidth: widget.width,
                deviceHeight: widget.height,
                buttonFunction: () {
                 setState(() {
                   Provider.of<DataStorage>(context, listen: false)
                       .changeQuestion(widget.currentQuestion);
                 });
                },
                buttonTag: 'Next')
          ],
        ),
      ),
    );
  }
}
