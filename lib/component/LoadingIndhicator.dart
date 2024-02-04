import 'package:flutter/material.dart';

class StateLoadingIndicator extends StatefulWidget{
  final double value;
  const StateLoadingIndicator({super.key, required this.value});


  @override
  State<StateLoadingIndicator> createState() {
   return LoadingIndicator();
  }
}

class LoadingIndicator extends State<StateLoadingIndicator>{

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white24,
      child: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('NowLoading',style: TextStyle(fontSize: 15,color: Colors.blue.shade600,decoration: TextDecoration.none),),
            SizedBox(
              width:200,
              height: 30,
              child:ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child:LinearProgressIndicator(value: widget.value),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


