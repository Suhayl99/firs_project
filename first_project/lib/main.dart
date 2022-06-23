import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late int _count;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _count = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Counter'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tap "-" to decrement',
                style: TextStyle(color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 MaterialButton(
                   color: Colors.lightBlueAccent,
                    minWidth: 20,
                    onPressed: (() => setState(() {
                          _count--;
                        })),
                    child: const Icon(Icons.remove),
                  ),
                  MaterialButton(
                    color: Colors.lightBlueAccent,
                    minWidth: 20,
                    onPressed: ()=>setState(() {

                    }),
                    child: Text("$_count"),
                  ),
                  MaterialButton(
                    color: Colors.lightBlueAccent,
                    minWidth: 20,
                    onPressed: ()=>setState(() {
                        _count++;
                    }),
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
             Text(
                'Tap "+" to decrement',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ));
  }
}
