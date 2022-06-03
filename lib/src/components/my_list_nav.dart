import 'package:flutter/material.dart';
import 'package:ppdb_pangkalpinang/src/commons/color.dart';

class MylistInfoNav extends StatelessWidget {
  final IconData icon;
  final dynamic text;
  final dynamic onPress;
  const MylistInfoNav({Key? key,required this.icon, required this.text,this.onPress}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.only(top: 20,bottom: 20,left: 24,right: 12),
      margin: const EdgeInsets.only(bottom: 16,left: 10,right: 10),
      decoration: BoxDecoration(
        color: ColorPallete.whiteColor,
        boxShadow: [BoxShadow(offset: const Offset(0,4),blurRadius: 12,spreadRadius: 0,color: ColorPallete.black20.withOpacity(0.6))],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color:ColorPallete.black20,width: 1)
      ),
      child: TextButton(
        onPressed: onPress,
        child: Container(
          padding: const EdgeInsets.only(top: 8,bottom: 8,left: 8,right: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon,color: ColorPallete.primaryBlue,),
                  const SizedBox(width: 12,),
                  Text(text,style: TextStyle(color: ColorPallete.black80,fontWeight: FontWeight.w500,fontSize: 13),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}