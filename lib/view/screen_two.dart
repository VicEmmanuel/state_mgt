import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view_model/auth_view_model.dart';

class ScreenTwo extends ConsumerStatefulWidget {
  const ScreenTwo({super.key});

  @override
  ConsumerState<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends ConsumerState<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    var authProvider = ref.watch(authViewModel);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            BackButton(),
            Text(authProvider.nameController.text),

            Text(authProvider.counter.toString(), style: TextStyle(fontSize: 40),),

            ElevatedButton(onPressed: (){
              authProvider.incrementCounter();
            }, child: Text('Count+'))
            // TextFormField(
            //   controller: authProvider.nameController,
            // )
          ],
        ),
      ),
    );
  }
}
