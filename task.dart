import 'package:cubit_and_state/screens/fast_filter_bar.dart';
import 'package:cubit_and_state/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 30,
                width: 296,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Dogecoin to the moon......',
                    suffixIcon: const Icon(Icons.search),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Icon(Icons.access_time),
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 30),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'Latest Nows',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      child: Text(
                        'see all',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              Container(
                height: 240,
                width: 345,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(person), fit: BoxFit.cover)),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'by Ryan Browne',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Crypto investors should be prepared to lose all their money, BOE governor says',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Center(
                  child: FastFilterBarUsingState(
                    items: const [
                      'Healthy',
                      'Technology',
                      'Finance',
                      'Arts',
                      'care'
                    ],
                    onItemTap: (item) {
                      if (kDebugMode) {
                        print('Selected item: $item');
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class FastFilterBarUsingState extends StatefulWidget {
  final List<String> items;
  final Function(String) onItemTap;

  const FastFilterBarUsingState(
      {super.key, required this.items, required this.onItemTap});

  @override
  // ignore: library_private_types_in_public_api
  _FastFilterBarState createState() => _FastFilterBarState();
}

class _FastFilterBarState extends State<FastFilterBarUsingState> {
  String _selectedItem = '';

  @override
  void initState() {
    super.initState();
    _selectedItem = widget.items.first;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedItem = widget.items[index];
              });
              widget.onItemTap(widget.items[index]);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: _selectedItem == widget.items[index]
                    ? Colors.red
                    : Colors.grey,
              ),
              child: Text(
                widget.items[index],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

