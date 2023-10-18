import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Language Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr) ,
            subtitle: Text('title'.tr),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              OutlinedButton(
                  onPressed: (){
                    Get.updateLocale(Locale('en','US'));
                  },
                  child: Text('English')

              ),
              SizedBox(
                width: 20,
              ),
              OutlinedButton(
                  onPressed: (){
                    Get.updateLocale(Locale('ur','PK'));
                  },
                  child: Text('Urdu')

              ),
            ],
          )
        ],
      ),
    );
  }
}
