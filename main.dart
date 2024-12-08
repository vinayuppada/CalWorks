import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intro.dart'; // Ensure the file path is correct


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          displayMedium :TextStyle(fontSize: 21,fontWeight: FontWeight.bold),
          titleSmall :TextStyle(fontSize:15,fontWeight:FontWeight.w300)
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Introd(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    var time =DateTime.now();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,

        title: Text('Calories Work'),
      ),
      body: Center(
          child: Column(
            children: [
              Text('Todays date :- ${DateFormat('dd MMM yy (E)').format(time)} ',style: Theme.of(context).textTheme.displayMedium, ),
              Text("Today's Calories ",style: Theme.of(context).textTheme.displayMedium,),
              Text('Time :- ',style: Theme.of(context).textTheme.titleSmall,),
              Text("Week's Calories ",style: Theme.of(context).textTheme.displayMedium,),
              Text('Time :- ',style: Theme.of(context).textTheme.titleSmall,),




              ListTile(
               leading: CircleAvatar(

                 backgroundColor: Colors.green,
               ) ,
               title: Text('sqarts'),
               subtitle: Text('40Cal/min'),
              trailing: Icon(Icons.add),

              ),
            ],
          ),
      ),
    );
  }
}
