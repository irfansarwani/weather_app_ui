import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/theme_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.info,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Consumer<ThemeProvider>(
              builder: (context, themeProvider, child) {
                return Switch(
                  activeColor: Colors.white,
                  inactiveThumbColor: Colors.white,
                  thumbColor: WidgetStatePropertyAll(
                      themeProvider.isSelected ? Colors.black : Colors.orange),
                  inactiveTrackColor: Colors.transparent,
                  thumbIcon: WidgetStatePropertyAll(
                    themeProvider.isSelected
                        ? const Icon(
                            Icons.nights_stay,
                          )
                        : const Icon(
                            Icons.sunny,
                          ),
                  ),
                  value: themeProvider.isSelected,
                  onChanged: (value) {
                    themeProvider.toggleTheme();
                  },
                );
              },
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Text(
                'Islamabad',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Consumer<ThemeProvider>(
                builder: (context, themeProvider, child) {
                  return Icon(
                    themeProvider.isSelected ? Icons.nights_stay : Icons.sunny,
                    color:
                        themeProvider.isSelected ? Colors.white : Colors.orange,
                    size: 250,
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                '20° c',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Good Morning',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'IRFAN',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                width: 50,
                child: Divider(
                  thickness: 3,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(Icons.wb_twighlight),
                      Text('Sunrise'),
                      Text('7:00 AM'),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      color: Colors.black,
                    ),
                  ),
                  Column(
                    children: [
                      Icon(Icons.air),
                      Text('Wind'),
                      Text('4m/s'),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      color: Colors.black,
                    ),
                  ),
                  Column(
                    children: [
                      Icon(Icons.thermostat),
                      Text('Temprature'),
                      Text('23° c'),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.all(
                  20,
                ),
                child: Column(
                  children: [Text('Coded by Irfan')],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
