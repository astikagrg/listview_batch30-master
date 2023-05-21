import 'package:flutter/material.dart';
import 'package:listview_batch30/common/snackbar_widget.dart';

class GridviewView extends StatefulWidget {
  const GridviewView({super.key});

  @override
  State<GridviewView> createState() => _GridviewViewState();
}

class _GridviewViewState extends State<GridviewView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gridview View'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              height: 200,
              width: double.infinity,
              child: GridView.count(
                padding: const EdgeInsets.all(9),
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                shrinkWrap: true,
                crossAxisCount: 3,
                children: [
                  for (var i = 1; i < 8; i++)
                    ElevatedButton(
                        onPressed: () {
                          showSnackBar(context, 'Button $i is clicked');
                        },
                        child: Text('$i'))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
