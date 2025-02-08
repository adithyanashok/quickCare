import 'package:flutter/material.dart';
import 'package:quick_care/features/my_bookings/presentation/widgets/app_bar.dart';
import 'package:quick_care/features/my_bookings/presentation/widgets/booking_card.dart';

class AppointmentsViewScreen extends StatefulWidget {
  final bool isDoc;
  const AppointmentsViewScreen({super.key, this.isDoc = false});

  @override
  State<AppointmentsViewScreen> createState() => _AppointmentsViewScreenState();
}

class _AppointmentsViewScreenState extends State<AppointmentsViewScreen>
    with TickerProviderStateMixin {
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
              BookingCard(
                isDoc: widget.isDoc,
              ),
              BookingCard(
                isDoc: widget.isDoc,
              ),
            ],
          ),
          ListView(
            padding: EdgeInsets.all(15),
            children: [
              BookingCard(
                isDoc: widget.isDoc,
              ),
              BookingCard(
                isDoc: widget.isDoc,
              ),
            ],
          ),
          ListView(
            padding: EdgeInsets.all(15),
            children: [
              BookingCard(
                isDoc: widget.isDoc,
              ),
              BookingCard(
                isDoc: widget.isDoc,
              ),
              BookingCard(
                isDoc: widget.isDoc,
              ),
              BookingCard(
                isDoc: widget.isDoc,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
