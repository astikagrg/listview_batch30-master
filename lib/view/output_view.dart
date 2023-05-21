import 'package:flutter/material.dart';
import 'package:listview_batch30/widget/card.dart';

import '../model/student.dart';

class OutputView extends StatefulWidget {
  const OutputView({super.key});

  @override
  State<OutputView> createState() => _OutputViewState();
}

class _OutputViewState extends State<OutputView> {
  List<Student>? lstStudents;
  @override
  void didChangeDependencies() {
    lstStudents = ModalRoute.of(context)!.settings.arguments as List<Student>?;
    print(lstStudents);
    super.didChangeDependencies();
  }

  void delete(int index) {
    setState(() {
      lstStudents!.removeAt(index);
      print(lstStudents!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Output View'),
        centerTitle: true,
      ),

      // List tile use garera view all students
      body: ListView.builder(
        itemCount: lstStudents!.length,
        itemBuilder: (context, index) {
          return displaycard("first", context, () {
            delete(index);
          });
          // return ListTile(
          //   leading: const Icon(Icons.person),
          //   title: Text(lstStudents![index].fname!),
          //   subtitle: Text("${lstStudents![index].age!}"),
          //   trailing: Wrap(
          //     children: [
          //       IconButton(
          //         onPressed: () {
          //           setState(() {
          //             lstStudents!.removeAt(index);
          //           });
          //         },
          //         icon: const Icon(Icons.delete),
          //       ),
          //       IconButton(
          //         onPressed: () {
          //           Navigator.pushNamed(
          //             context,
          //             '/editStudentRoute',
          //             arguments: Student(),
          //           );
          //         },
          //         icon: const Icon(Icons.edit),
          //       ),
          //     ],
          //   ),
          // );
        },
      ),
    );
  }
}
