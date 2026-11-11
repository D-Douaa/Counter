import 'package:counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CustomeButton extends StatelessWidget {
  CustomeButton({
    super.key,
    required this.buttonNumber,
    required this.teamName,
    required this.buttonName,
  });

  final int buttonNumber;
  final String teamName;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        minimumSize: Size(150, 50),
      ),
      onPressed: () {
        context.read<CounterCubit>().teamIncrement(buttonNumber, teamName);
      },
      child: Text(buttonName),
    );
  }
}