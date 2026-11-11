import 'package:counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit() : super(CounterInitialState());
  int teamAPoints = 0;
  int teamBPoints = 0;
  void teamIncrement(int buttonNumber , String teamName){
    if (teamName == 'Team A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncrementedState());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementedState());
    }
  }
}