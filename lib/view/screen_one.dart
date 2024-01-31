import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_mgt/view/screen_two.dart';
import 'package:state_mgt/view_model/auth_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenOne extends ConsumerStatefulWidget {
  const ScreenOne({super.key});

  @override
  ConsumerState<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends ConsumerState<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    var authProvider = ref.watch(authViewModel);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextFormField(
              controller: authProvider.nameController,
            )
            ,
            SizedBox(height: 50,),

            ElevatedButton(onPressed: (){
              Navigator.push(
                  context, CupertinoPageRoute(builder: (context) => ScreenTwo()));
            }, child: Text('Next')),

            Text(authProvider.counter.toString(), style: TextStyle(fontSize: 40),)

          ],
        ),
      ),
    );
  }
}
