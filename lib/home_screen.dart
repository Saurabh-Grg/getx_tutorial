import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/ScreenOne.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("getx"),),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("getx dialogue alert"),
              subtitle: Text("getx dialogue alert with getx"),
              onTap: (){
                Get.defaultDialog(
                  title: "Delete chat",
                  titlePadding: EdgeInsets.only(top: 20),
                  contentPadding: EdgeInsets.all(20),
                  middleText: "Are you sure you want to delete?",
                  textConfirm: "Yes",
                  textCancel: "No",
                  onConfirm: (){
                    // Navigator.pop(context);
                    Get.back();
                  }

                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("getx dialogue alert"),
              subtitle: Text("getx dialogue alert with getx"),
              onTap: (){
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text('light theme'),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text('Dark theme'),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),

                      ],
                    ),
                  )

                );
              },
            ),
          ),
          TextButton(onPressed: (){
            // Get.to(Screenone());
            Get.toNamed('/screenOne');
          }, child: Text('go to next page'))

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.snackbar('Saurabh', 'You should do it.',
        backgroundColor: Colors.red,
          snackPosition: SnackPosition.TOP
        );
      }),
    );
  }
}
