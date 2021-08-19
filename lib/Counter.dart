import 'package:flutter/material.dart';

class _MyCounterState extends State<MyCounter> {
  int counter = 0;
  List<int> numbers = [];

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: createChildren(),
    );
  }

  List<Widget> createChildren() {
    List<Widget> children = [];
    children.add(CounterWidget());
    var list = numbers.reversed.toList();
    //var delete = list.reversed.toList();
    for (var n = 0; n < list.length; n++) {
      children.add(TextButton(
        child: Text(
          '${list[n]}',
          style: TextStyle(fontSize: 35, color: Colors.brown),
        ),
        onPressed: () {
          setState(() {
            // print(n);
            numbers.removeAt(list.length - n - 1);
            print(list);
            print(numbers);
          });
        },
      ));
    }
    return children;
  }

  Widget CounterWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("My Counter", style: TextStyle(color: Colors.black)),
        Container(
          height: 10,
        ), //this container was created to demarcate the text from the button
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                child: Text("-"),
                onPressed: () {
                  setState(() {
                    //if (counter > 0)
                    counter--;
                  });
                }),
            Container(
              width: 10,
            ), //this container was created to demarcate the two buttons
            ElevatedButton(
                child: Text("+"),
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                }),
            Container(
              width: 10,
            ),
            ElevatedButton(
              child: Text('restart'),
              onPressed: () {
                setState(() {
                  numbers.add(counter);
                  counter = 0;
                });
              },
            ),
            TextButton(
                child: Text("$counter"),
                onPressed: () {
                  setState(() {
                    numbers.remove(counter);
                  });
                })
          ],
        ),
        Container(
          height: 10,
        ),
        Text(
          "$counter",
          style: TextStyle(fontSize: 40),
        )
      ],
    );
  }
}

class MyCounter extends StatefulWidget {
  @override
  _MyCounterState createState() {
    return _MyCounterState();
  }
}
