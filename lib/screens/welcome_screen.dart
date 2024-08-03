import 'package:flutter/material.dart';
import 'package:travel/dummy/dummy.dart';
import 'package:travel/view_models/travel/travel_model.dart';
import '../widgets/welcome/welcome_appbar.dart';
import '../widgets/welcome/welcome_travel_type.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int? _selectedTravel;

  void _onTravelSelected(int index) {
    setState(() {
      _selectedTravel = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const WelcomeAppBar(),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            "Hi Laith 👋",
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: height * .03),
          SizedBox(
            height: 52,
            // color: Colors.lightBlue,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                TravelModel travel = travelList[index];
                return WelcomeTravelType(
                  travel: travel,
                  selectedTravel: _selectedTravel ?? 0,
                  onTap: () => _onTravelSelected(travel.id),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 15),
              itemCount: travelList.length,
            ),
          ),
          SizedBox(height: height * 0.02),
        ],
      ),
    );
  }
}
