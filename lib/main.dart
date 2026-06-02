import 'package:flutter/material.dart';
import 'package:open_vpn/constants/app_colors.dart';
import 'package:open_vpn/helpers/ui_helper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorInstance = AppColors.instance;
    final uiInstance = UiHelper.instance;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: colorInstance.scaffoldBgColor,
        appBar: AppBar(
          backgroundColor: colorInstance.scaffoldBgColor,
          centerTitle: true,
          title: uiInstance.text(
            "Server Test",
            fontSize: 16,
            color: colorInstance.backgroundTextColor,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert_sharp,
                color: colorInstance.backgroundTextColor,
              ),
            ),
          ],
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: colorInstance.backgroundTextColor,
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: .spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 320,
                  padding: .all(12),
                  decoration: BoxDecoration(
                    color: colorInstance.containerInsideColor,
                    border: .all(color: colorInstance.backgroundTextColor),
                    borderRadius: .circular(30),
                  ),
                  child: uiInstance.textField(
                    label: uiInstance.text(
                      "Search",
                      color: colorInstance.backgroundTextColor,
                      fontSize: 14,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: colorInstance.backgroundTextColor,
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
