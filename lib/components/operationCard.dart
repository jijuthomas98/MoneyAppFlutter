import 'package:flutter/material.dart';
import 'package:flutter_money_app/constants/color_constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OperationCard extends StatefulWidget {
  final String operation;
  final String selectedIcon;
  final String unselectedIcon;
  final bool isSelected;
  BuildContext context;

  OperationCard(
      {this.operation,
      this.selectedIcon,
      this.unselectedIcon,
      this.isSelected,
      this.context});

  @override
  _OperationCardState createState() => _OperationCardState();
}

class _OperationCardState extends State<OperationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      width: 123,
      height: 123,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: kTenBlackColor,
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(8.0, 8.0),
            )
          ],
          borderRadius: BorderRadius.circular(15),
          color: widget.isSelected ? kPrimaryColor : kWhiteColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
              widget.isSelected ? widget.selectedIcon : widget.unselectedIcon),
          SizedBox(
            height: 9,
          ),
          Text(
            widget.operation,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: widget.isSelected ? kWhiteColor : kBlueColor),
          )
        ],
      ),
    );
  }
}
