import 'package:addminus_sample/controllers/counter_controller.dart';
import 'package:addminus_sample/new_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewHome extends StatelessWidget {
  const NewHome({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.put(CounterController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Counter Value:',
              style: TextStyle(fontSize: 20),
            ),
            Obx(
              () => Text(
                counterController.counter.toString(),
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: counterController.increment,
                  child: const Text('Plus'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: counterController.decrement,
                  child: const Text('Minus'),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  //naviage to new page
                  Get.to(const NewPage());
                },
                child: Text("Next Page"))
          ],
        ),
      ),
    );
  }
}
