import 'package:addminus_sample/controllers/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.put(CounterController());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(() => Text(counterController.counter.toString())),
          ),
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
              ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text("Back")),
            ],
          ),
        ],
      ),
    );
  }
}
