import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  Color cardColor;
  String cardTitle;
  String cardDetails;
  String cardImgae;

   CustomCard({Key? key, required this.cardColor, required this.cardDetails, required this.cardImgae, required this.cardTitle}) : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: widget.cardColor,
      child: Column(
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage(
                widget.cardImgae,
              ),
            ),
          ),
          const SizedBox(height: 30,),

          Center(
            child: Text(widget.cardTitle),
          ),
          Center(
            child: Text(widget.cardDetails),
          ),


        ],
      ),
    );
  }
}
