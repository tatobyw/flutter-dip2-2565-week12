import 'package:flutter/material.dart';

class StateFulPAge extends StatefulWidget {
  const StateFulPAge({Key? key}) : super(key: key);

  @override
  State<StateFulPAge> createState() => _StateFulPAgeState();
}

class _StateFulPAgeState extends State<StateFulPAge> {
  List<String> names = ["Zee", "Jan", "Dong"];
  int i = 0;
  Color color = Colors.redAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("init state"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState((){
            color = Colors.amber;
          });
        },
        child: Icon(Icons.color_lens),
        backgroundColor: color,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("My Name is ${names[i]}"),
            ElevatedButton(
                onPressed: () {
                  if(i<names.length-1){
                    setState(() {
                      i = i + 1;//i++
                    });
                  }
                },
                child: Text("Next")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  if(i != 0){
                    setState(() {
                      i = i - 1;//i--
                    });
                  }
                },
                child: Text("Back")),
          ],
        ),
      ),

    );
  }
}
