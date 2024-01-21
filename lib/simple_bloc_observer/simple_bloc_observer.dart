import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimbleObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('change =  $change');
  }

  @override
  void onClose(BlocBase bloc) {
     debugPrint('close =  $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('creat =  $bloc');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
   
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
   
  }
}
