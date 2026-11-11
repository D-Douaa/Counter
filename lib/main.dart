import 'package:counter/cubit/counter_cubit.dart';
import 'package:counter/cubit/counter_state.dart';
import 'package:counter/widgets/custome_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),

      child: MaterialApp(
        title: 'Counter App',
        debugShowCheckedModeBanner: false,
         home: const MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
   return BlocBuilder<CounterCubit, CounterState>(builder: (context, state) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter App",
          style: TextStyle(
           
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      // The body of the app
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          //the first counter
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Team A',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                  style: TextStyle(
                    fontSize: 150,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                CustomeButton(buttonNumber: 1, buttonName: "Increment 1", teamName: "Team A"),
                SizedBox(height: 20),
                CustomeButton(buttonNumber: 2, buttonName: "Increment 2", teamName: "Team A"),
                SizedBox(height: 20),
                CustomeButton(buttonNumber: 3, buttonName: "Increment 3", teamName: "Team A"),

                SizedBox(height: 20),
              ],
            ),
          ),
          Container(
            height: 500,
            child: VerticalDivider(
              color: Colors.grey,
              thickness: 1,
              indent: 50,
              endIndent: 50,
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Team B',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                  style: TextStyle(
                    fontSize: 150,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                CustomeButton(buttonNumber: 1, buttonName: "Increment 1", teamName: "Team B"),
                SizedBox(height: 20),
                CustomeButton(buttonNumber: 2, buttonName: "Increment 2", teamName: "Team B"),
                SizedBox(height: 20),
                CustomeButton(buttonNumber: 3, buttonName: "Increment 3", teamName: "Team B"),

                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
   },
   
    
    );
  }

 
}


    
  

