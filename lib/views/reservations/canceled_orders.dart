import 'package:flutter/material.dart';
import 'package:tawla_training/views/reservations/order_card.dart';

class OnGoingOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl,
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (BuildContext context, int inder){
          return OrderCard();
        },itemCount:5 ,),
    );
  }
}
