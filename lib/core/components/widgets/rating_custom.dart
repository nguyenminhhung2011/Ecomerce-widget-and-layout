import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RattingWidgetCustom extends StatelessWidget {
  final IconData? iconData;

  final double? itemPadding;

  final double rating;

  final double? itemSize;

  final EdgeInsetsGeometry? padding;

  final EdgeInsetsGeometry? margin;

  final Color? color;

  final Function(double)? ratingUpdate;

  const RattingWidgetCustom({
    super.key,
    this.color,
    this.margin,
    this.padding,
    this.iconData,
    this.itemSize,
    this.itemPadding,
    this.ratingUpdate,  
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? const EdgeInsets.all(0),
      child: RatingBar.builder(
        initialRating: rating,
        minRating: 1, 
        itemSize: itemSize ?? 12.0,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemPadding: padding ?? const EdgeInsets.only(right: 2.0),
        itemBuilder: (context, _) => Icon(
          iconData ?? Icons.star,
          color: color ?? Colors.amber,
        ),
        unratedColor: Theme.of(context).dividerColor,
        onRatingUpdate: ratingUpdate ?? (value) {},
      ),
    );
  }
}
