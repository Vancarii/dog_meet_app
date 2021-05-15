import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final EdgeInsets padding;
  final Color color;
  final bool bold;
  final bool underline;
  final double size;
  final TextAlign alignment;
  final double height;

  CustomText({
    @required this.text,
    this.padding,
    this.color,
    this.bold = false,
    this.size,
    this.alignment,
    this.underline = false,
    this.height = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding != null ? padding : EdgeInsets.all(0),
      child: Text(
        text,
        textAlign: alignment,
        style: TextStyle(
          height: height,
          fontFamily: 'Gibson',
          color: color,
          fontWeight: bold == false ? FontWeight.w400 : FontWeight.w600,
          fontSize: size,
          decoration: underline == true ? TextDecoration.underline : TextDecoration.none,
        ),
      ),
    );
  }
}

/*class AppTextStyles {
  //---------------------------- Black -----------------------------------
  static const TextStyle h26BlackBold =
      const TextStyle(fontSize: 26.0, fontFamily: 'Gibson', fontWeight: FontWeight.w600);
  static const TextStyle h20BlackBold =
      const TextStyle(fontSize: 20.0, fontFamily: 'Gibson', fontWeight: FontWeight.w600);
  static const TextStyle h18BlackBold =
      const TextStyle(fontSize: 18.0, fontFamily: 'Gibson', fontWeight: FontWeight.w600);
  static const TextStyle h15BlackBold =
      const TextStyle(fontSize: 15.0, fontFamily: 'Gibson', fontWeight: FontWeight.w600);
  static const TextStyle h12BlackBold =
      const TextStyle(fontSize: 12.0, fontFamily: 'Gibson', fontWeight: FontWeight.w600);
  static const TextStyle h10BlackBold =
      const TextStyle(fontSize: 10.0, fontFamily: 'Gibson', fontWeight: FontWeight.w600);

  static const TextStyle b26BlackReg =
      const TextStyle(fontSize: 26.0, fontFamily: 'Gibson', fontWeight: FontWeight.w200);
  static const TextStyle b20BlackReg =
      const TextStyle(fontSize: 20.0, fontFamily: 'Gibson', fontWeight: FontWeight.w200);
  static const TextStyle b18BlackReg =
      const TextStyle(fontSize: 18.0, fontFamily: 'Gibson', fontWeight: FontWeight.w200);
  static const TextStyle b15BlackReg =
      const TextStyle(fontSize: 15.0, fontFamily: 'Gibson', fontWeight: FontWeight.w200);
  static const TextStyle b12BlackReg =
      const TextStyle(fontSize: 12.0, fontFamily: 'Gibson', fontWeight: FontWeight.w200);
  static const TextStyle b10BlackReg =
      const TextStyle(fontSize: 10.0, fontFamily: 'Gibson', fontWeight: FontWeight.w200);

  //----------------------------- Grey -----------------------------------------------

  static const TextStyle h26GreyBold = const TextStyle(
      fontSize: 26.0, fontFamily: 'Gibson', fontWeight: FontWeight.w600, color: Colors.grey);
  static const TextStyle h20GreyBold = const TextStyle(
      fontSize: 20.0, fontFamily: 'Gibson', fontWeight: FontWeight.w600, color: Colors.grey);
  static const TextStyle h18GreyBold = const TextStyle(
      fontSize: 18.0, fontFamily: 'Gibson', fontWeight: FontWeight.w600, color: Colors.grey);
  static const TextStyle h15GreyBold = const TextStyle(
      fontSize: 15.0, fontFamily: 'Gibson', fontWeight: FontWeight.w600, color: Colors.grey);
  static const TextStyle h12GreyBold = const TextStyle(
      fontSize: 12.0, fontFamily: 'Gibson', fontWeight: FontWeight.w600, color: Colors.grey);
  static const TextStyle h10GreyBold = const TextStyle(
      fontSize: 10.0, fontFamily: 'Gibson', fontWeight: FontWeight.w600, color: Colors.grey);

  static const TextStyle b26GreyReg = const TextStyle(
      fontSize: 26.0, fontFamily: 'Gibson', fontWeight: FontWeight.w200, color: Colors.grey);
  static const TextStyle b20GreyReg = const TextStyle(
      fontSize: 20.0, fontFamily: 'Gibson', fontWeight: FontWeight.w200, color: Colors.grey);
  static const TextStyle b18GreyReg = const TextStyle(
      fontSize: 18.0, fontFamily: 'Gibson', fontWeight: FontWeight.w200, color: Colors.grey);
  static const TextStyle b15GreyReg = const TextStyle(
      fontSize: 15.0, fontFamily: 'Gibson', fontWeight: FontWeight.w200, color: Colors.grey);
  static const TextStyle b12GreyReg = const TextStyle(
      fontSize: 12.0, fontFamily: 'Gibson', fontWeight: FontWeight.w200, color: Colors.grey);
  static const TextStyle b10GreyReg = const TextStyle(
      fontSize: 10.0, fontFamily: 'Gibson', fontWeight: FontWeight.w200, color: Colors.grey);

  //----------------------------- Green ----------------------------------------------

  static const TextStyle h26GreenBold = const TextStyle(
      fontSize: 26.0, fontFamily: 'Gibson', fontWeight: FontWeight.w600, color: Colors.grey);
  static const TextStyle h20GreenBold = const TextStyle(
      fontSize: 20.0, fontFamily: 'Gibson', fontWeight: FontWeight.w600, color: Colors.grey);
  static const TextStyle h18GreenBold = const TextStyle(
      fontSize: 18.0, fontFamily: 'Gibson', fontWeight: FontWeight.w600, color: Colors.grey);
  static const TextStyle h15GreenBold = const TextStyle(
      fontSize: 15.0, fontFamily: 'Gibson', fontWeight: FontWeight.w600, color: Colors.grey);
  static const TextStyle h12GreenBold = const TextStyle(
      fontSize: 12.0, fontFamily: 'Gibson', fontWeight: FontWeight.w600, color: Colors.grey);
  static const TextStyle h10GreenBold = const TextStyle(
      fontSize: 10.0, fontFamily: 'Gibson', fontWeight: FontWeight.w600, color: Colors.grey);

  static const TextStyle b26GreenReg = const TextStyle(
      fontSize: 26.0, fontFamily: 'Gibson', fontWeight: FontWeight.w200, color: Colors.green);
  static const TextStyle b20GreenReg = const TextStyle(
      fontSize: 20.0, fontFamily: 'Gibson', fontWeight: FontWeight.w200, color: Colors.green);
  static const TextStyle b18GreenReg = const TextStyle(
      fontSize: 18.0, fontFamily: 'Gibson', fontWeight: FontWeight.w200, color: Colors.green);
  static const TextStyle b15GreenReg = const TextStyle(
      fontSize: 15.0, fontFamily: 'Gibson', fontWeight: FontWeight.w200, color: Colors.green);
  static const TextStyle b12GreenReg = const TextStyle(
      fontSize: 12.0, fontFamily: 'Gibson', fontWeight: FontWeight.w200, color: Colors.green);
  static const TextStyle b10GreenReg = const TextStyle(
      fontSize: 10.0, fontFamily: 'Gibson', fontWeight: FontWeight.w200, color: Colors.green);

  //----------------------------- Orange ----------------------------------------------

  static const TextStyle h26OrangeBold = const TextStyle(
      fontSize: 26.0,
      fontFamily: 'Gibson',
      fontWeight: FontWeight.w600,
      color: AppColors.colorPrimaryOrange);
  static const TextStyle h20OrangeBold = const TextStyle(
      fontSize: 20.0,
      fontFamily: 'Gibson',
      fontWeight: FontWeight.w600,
      color: AppColors.colorPrimaryOrange);
  static const TextStyle h18OrangeBold = const TextStyle(
      fontSize: 18.0,
      fontFamily: 'Gibson',
      fontWeight: FontWeight.w600,
      color: AppColors.colorPrimaryOrange);
  static const TextStyle h15OrangeBold = const TextStyle(
      fontSize: 15.0,
      fontFamily: 'Gibson',
      fontWeight: FontWeight.w600,
      color: AppColors.colorPrimaryOrange);
  static const TextStyle h12OrangeBold = const TextStyle(
      fontSize: 12.0,
      fontFamily: 'Gibson',
      fontWeight: FontWeight.w600,
      color: AppColors.colorPrimaryOrange);
  static const TextStyle h10OrangeBold = const TextStyle(
      fontSize: 10.0,
      fontFamily: 'Gibson',
      fontWeight: FontWeight.w600,
      color: AppColors.colorPrimaryOrange);

  static const TextStyle b26OrangeReg = const TextStyle(
      fontSize: 26.0,
      fontFamily: 'Gibson',
      fontWeight: FontWeight.w200,
      color: AppColors.colorPrimaryOrange);
  static const TextStyle b20OrangeReg = const TextStyle(
      fontSize: 20.0,
      fontFamily: 'Gibson',
      fontWeight: FontWeight.w200,
      color: AppColors.colorPrimaryOrange);
  static const TextStyle b18OrangeReg = const TextStyle(
      fontSize: 18.0,
      fontFamily: 'Gibson',
      fontWeight: FontWeight.w200,
      color: AppColors.colorPrimaryOrange);
  static const TextStyle b15OrangeReg = const TextStyle(
      fontSize: 15.0,
      fontFamily: 'Gibson',
      fontWeight: FontWeight.w200,
      color: AppColors.colorPrimaryOrange);
  static const TextStyle b12OrangeReg = const TextStyle(
      fontSize: 12.0,
      fontFamily: 'Gibson',
      fontWeight: FontWeight.w200,
      color: AppColors.colorPrimaryOrange);
  static const TextStyle b10OrangeReg = const TextStyle(
      fontSize: 10.0,
      fontFamily: 'Gibson',
      fontWeight: FontWeight.w200,
      color: AppColors.colorPrimaryOrange);

//----------------------------- Orange ----------------------------------------------

  static const TextStyle h26BlueBold = const TextStyle(
      fontSize: 26.0, fontFamily: 'Gibson', fontWeight: FontWeight.w600, color: Colors.blue);
  static const TextStyle h20BlueBold = const TextStyle(
      fontSize: 20.0, fontFamily: 'Gibson', fontWeight: FontWeight.w600, color: Colors.blue);
  static const TextStyle h18BlueBold = const TextStyle(
      fontSize: 18.0, fontFamily: 'Gibson', fontWeight: FontWeight.w600, color: Colors.blue);
  static const TextStyle h15BlueBold = const TextStyle(
      fontSize: 15.0, fontFamily: 'Gibson', fontWeight: FontWeight.w600, color: Colors.blue);
  static const TextStyle h12BlueBold = const TextStyle(
      fontSize: 12.0, fontFamily: 'Gibson', fontWeight: FontWeight.w600, color: Colors.blue);
  static const TextStyle h10BlueBold = const TextStyle(
      fontSize: 10.0, fontFamily: 'Gibson', fontWeight: FontWeight.w600, color: Colors.blue);

  static const TextStyle b26BlueReg = const TextStyle(
      fontSize: 26.0, fontFamily: 'Gibson', fontWeight: FontWeight.w200, color: Colors.blue);
  static const TextStyle b20BlueReg = const TextStyle(
      fontSize: 20.0, fontFamily: 'Gibson', fontWeight: FontWeight.w200, color: Colors.blue);
  static const TextStyle b18BlueReg = const TextStyle(
      fontSize: 18.0, fontFamily: 'Gibson', fontWeight: FontWeight.w200, color: Colors.blue);
  static const TextStyle b15BlueReg = const TextStyle(
      fontSize: 15.0, fontFamily: 'Gibson', fontWeight: FontWeight.w200, color: Colors.blue);
  static const TextStyle b12BlueReg = const TextStyle(
      fontSize: 12.0, fontFamily: 'Gibson', fontWeight: FontWeight.w200, color: Colors.blue);
  static const TextStyle b10BlueReg = const TextStyle(
      fontSize: 10.0, fontFamily: 'Gibson', fontWeight: FontWeight.w200, color: Colors.blue);
}*/
