// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/controller/constant.dart';
import 'package:test2/customWidget/text.dart';

class cart extends StatelessWidget {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.bgScaffoldColor,
      appBar: AppBar(
        title: Text(
          "Cart",
          style: TextStyle(
              color: appTheme.secondColor,
              fontWeight: appTheme.AppBarfontWieght,
              fontSize: appTheme.AppBarFontSize),
        ),
      ),
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              height: 302,
              decoration: BoxDecoration(
                border: Border.all(
                  color: appTheme.secondColor
                )
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "Assets/images/bmw.png",
                            height: 80,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          text(content: "BMW XM 2023"),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "\$159,995",
                            style: TextStyle(
                                color: appTheme.thirdColor,
                                fontWeight: appTheme.ContentfontWieght,
                                fontSize: appTheme.ContentfontSize),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          text(content: "Total payment:"),
                        ],
                      )),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: SizedBox()),
                        Text(
                          "\$159,995",
                          style: TextStyle(
                              color: appTheme.thirdColor,
                              fontWeight: appTheme.ContentfontWieght,
                              fontSize: appTheme.ContentfontSize),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          color: appTheme.primaryColor,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          child: Text(
                            "Procced to payment",
                            style: TextStyle(color: appTheme.secondColor),
                          ),
                        ),
                        SizedBox(
                          height: 43,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          IconButton(
              onPressed: () {
                print("ccccc");
                Get.defaultDialog(
                  backgroundColor: appTheme.bgScaffoldColor,
                  buttonColor: appTheme.primaryColor,
                    title: "",
                    cancelTextColor: appTheme.secondColor,
                    confirmTextColor: appTheme.secondColor,
                    textCancel: "No",
                    textConfirm: "Yes",
                    onCancel: ()=>null,
                    radius: 0,
                    content: Column(
                      children: [
                        Image.asset(
                          "Assets/images/icon2.png",
                          width: double.infinity,
                          height: 100,
                        ),
                        SizedBox(height: 20,),
                        Text(
                          "Are you sure to cancle order?", 
                          style: TextStyle(
                            color: appTheme.secondColor
                          ),
                        ),
                      ],
                    ), 
                    );
                    
              },
              icon: Icon(
                Icons.cancel,
                color: appTheme.primaryColor,
              )),
        ],
      ),
    );
  }
}
