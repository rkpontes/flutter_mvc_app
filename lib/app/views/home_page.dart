import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvc_app/app/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Incremento / Decremento'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Obx(
                () => Text(
                  '${controller.click.tap}',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 60),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.grey,
                  child: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () => controller.click.increment(),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  color: Colors.grey,
                  child: IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () => controller.click.decrement(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
