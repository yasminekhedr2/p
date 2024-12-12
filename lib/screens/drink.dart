import 'package:flutter/material.dart';
import 'package:task12/swidgets/smallbutton.dart';


class Drink extends StatefulWidget {
  const Drink({super.key});

  @override
  State<Drink> createState() => _DrinkState();
}

class _DrinkState extends State<Drink> {
  bool isShowmore = true;
  double _currentValue = 50;
  String? _selectedOption;
  List<bool> isSelected = [true, false, false];
  final List<String> _statuses = ['Hot', 'Ice'];
  String? _selectedStatus;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F5F2 ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 1),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(),
                      child: Image.asset(
                        "assets/download (1).jpg",
                        height: 300,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          // color:
                          //  Color.fromARGB(130, 210, 87, 0).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          ' Cappuccino ',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 170,
                    ),
                    const Icon(
                      Icons.star_rate_sharp,
                      size: 24,
                      color: Colors.yellow,
                    ),
                    const Text(
                      '5.5',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sugar: ${_currentValue.toInt()}',
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Slider(
                      activeColor: const Color(0xFFE1894B),
                      value: _currentValue,
                      min: 0,
                      max: 100,
                      divisions:
                          100, // Optional: Divides the slider into 100 steps
                      label: _currentValue
                          .toInt()
                          .toString(), // Shows a label on the thumb
                      onChanged: (double value) {
                        setState(() {
                          _currentValue = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const Text("With Milk:-",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                        const SizedBox(
                          width: 50,
                        ),
                        Radio<String>(
                          activeColor: const Color(0xFFE1894B),
                          value: 'option 1',
                          groupValue: _selectedOption,
                          onChanged: (String? value) {
                            setState(() {
                              _selectedOption = value;
                            });
                          },
                        ),
                        const Text('Yes',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                        const SizedBox(
                          width: 50,
                        ),
                        Radio<String>(
                          activeColor: const Color(0xFFE1894B),
                          value: 'Option 2',
                          groupValue: _selectedOption,
                          onChanged: (String? value) {
                            setState(() {
                              _selectedOption = value;
                            });
                          },
                        ),
                        const Text('No',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Size',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20),
                        ToggleButtons(
                          isSelected: isSelected,
                          onPressed: (int index) {
                            setState(() {
                              for (int i = 0; i < isSelected.length; i++) {
                                isSelected[i] = i == index;
                              }
                            });
                          },
                          borderRadius: BorderRadius.circular(10),
                          selectedColor: Colors.white,
                          fillColor: const Color(0xFFE1894B),
                          color: Colors.black,
                          children: const [
                            SizedBox(
                              width: 100, // عرض الزر
                              child: Center(
                                child:
                                    Text('S', style: TextStyle(fontSize: 16)),
                              ),
                            ),
                            SizedBox(
                              width: 100, // عرض الزر
                              child: Center(
                                child:
                                    Text('M', style: TextStyle(fontSize: 16)),
                              ),
                            ),
                            SizedBox(
                              width: 100, // عرض الزر
                              child: Center(
                                child:
                                    Text('L', style: TextStyle(fontSize: 16)),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Chosed Size: ${isSelected[0] ? "S" : isSelected[1] ? "M" : "L"}',
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DropdownButtonFormField<String>(
                    value: _selectedStatus,
                    decoration: const InputDecoration(
                      labelText: 'Temprature', // Label for the dropdown
                      border:
                          OutlineInputBorder(), // Adds a border around the dropdown
                    ),
                    hint: const Text('Select Status'),
                    items: _statuses.map((String status) {
                      return DropdownMenuItem<String>(
                        value: status,
                        child: Text(
                          status,
                          style: const TextStyle(fontSize: 16),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedStatus = newValue;
                      });
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 30.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Price",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 60),
                          decoration: BoxDecoration(
                            color: const Color(0xC0EB740C).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            "\$10",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const Column(
                      children: [
                        Text(
                          "Go to Chart",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Smallbutton(text: "Buy it")
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}