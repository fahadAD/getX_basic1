import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx_hiaight_weaight.dart';
import 'main1.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
     // snacbar
  snacbarFuncrion(){
    Get.snackbar(
      "Fahad", "Fahad is message you",
      icon: Icon(Icons.notification_important),
    );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      floatingActionButton: FloatingActionButton(onPressed: () {
        snacbarFuncrion();
      },child: Icon(Icons.snippet_folder_outlined)),
      body: Column(
        children: [

          // alert dialog
          ListTile(
  leading: Icon(Icons.dialpad_outlined),
  title: Text("Getx Alert Dialog"),
  subtitle: Text("touch with Alert Dialog"),
  onTap: () {
    Get.defaultDialog(
      title: "Delete",
      middleText: "Do you want to Delete",
      textConfirm: "Yes",
      textCancel: "No",
      confirm: IconButton(onPressed: () {
        Get.back();
      }, icon: Icon(Icons.delete))
    );
  },

),

              // dark/light
          ListTile(
            leading: Icon(Icons.dark_mode),
            title: Text("Getx dark/light Sheet"),
            subtitle: Text("touch with Getx Bottom Sheet"),
            trailing: Icon(Icons.light_mode),
            onTap: () {
              Get.bottomSheet(
                Container(
                  width: double.infinity,
                  height: 400,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(20),
                        topRight:Radius.circular(20),
                      )
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {
                          setState(() {
                            Get.changeTheme(ThemeData.light());
                          });
                        },
                        leading: Icon(Icons.light_mode),
                        title: Text("Light mode"),
                        subtitle: Text("Light mode"),
                      ),
                      ListTile(
                        onTap: () {
                          setState(() {
                            Get.changeTheme(ThemeData.dark());
                          });
                        },
                        leading: Icon(Icons.nightlight_rounded),
                        title: Text("Night mode"),
                        subtitle: Text("Night mode"),
                      ),
                    ],
                  ),
                ),

              );
            },

          ),
                // route
           TextButton(onPressed: () {
        // Get.to(FirstPage1());
        // Get.to(FirstPage1(name: 'fagass',),);
        Get.to(FirstPage2());
// Get.toNamed("/screen1");

           }, child: Text("go to next screen")),
Container(
  height: Get.height*.2,
  width: Get.width* .8,
  color: Colors.red,
),

          ListTile(
            leading: Icon(Icons.language),
            title: Text("name".tr),
            subtitle: Text("massage".tr),
          ),
ListTile(
  leading: InkWell(
      onTap: () {
       Get.updateLocale(Locale("en","US"));
      },
      child: Text("English")),
  
  trailing: InkWell(
      onTap: () {
        Get.updateLocale(Locale("ur","PK"));
      },
      child: Text("Urdu")),
)
        ],
      ),
    );
  }
}
