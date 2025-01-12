import 'package:flutter/material.dart';
import 'package:quick_care/features/my_bookings/presentation/widgets/app_bar.dart';
import 'package:quick_care/features/my_bookings/presentation/widgets/booking_card.dart';

class MyBookings extends StatefulWidget {
  const MyBookings({super.key});

  @override
  State<MyBookings> createState() => _MyBookingsState();
}

class _MyBookingsState extends State<MyBookings> with TickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: TabAppBar(tabController: tabController),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          ListView(
            padding: EdgeInsets.all(15),
            children: [
              BookingCard(),
              BookingCard(),
            ],
          ),
          ListView(
            padding: EdgeInsets.all(15),
            children: [
              BookingCard(),
              BookingCard(),
            ],
          ),
          ListView(
            padding: EdgeInsets.all(15),
            children: [
              BookingCard(),
              BookingCard(),
              BookingCard(),
              BookingCard(),
            ],
          ),
        ],
      ),
    );
  }
}
