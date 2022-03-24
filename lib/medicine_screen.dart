import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:projet1/models/medicine_model.dart';
import 'package:http/http.dart' as http;

class MedicineScreen extends StatelessWidget {
  const MedicineScreen({Key? key}) : super(key: key);

  Future<List<MedicineModel>?> _getMedicines() async {
    try {
      final response = await http.get(
          Uri.parse(
            'http://10.0.2.2:5000/medicines',
          ),
          headers: {"Content-type": "application/json"});

      List<dynamic> result = jsonDecode(response.body);

      List<MedicineModel> data = result.map((item) {
        return MedicineModel.fromJson(item);
      }).toList();

      log('data => $data');

      return data;
    } catch (e) {
      log('Error => $e');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medicine List'),
      ),
      body: FutureBuilder<List<MedicineModel>?>(
          future: _getMedicines(),
          builder: (context, snaps) {
            if (!snaps.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snaps.data == null) {
              return Text('NO DATA');
            }

            return ListView.builder(
                itemCount: snaps.data!.length,
                itemBuilder: (context, index) {
                  final MedicineModel medicine = snaps.data![index];

                  return Container(
                    height: height * 0.20,
                    width: width,
                    padding: const EdgeInsets.all(15),
                    color: Colors.red,
                    margin: const EdgeInsets.only(bottom: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // code
                        Text(
                          medicine.code_posologie,
                          style: TextStyle(fontSize: 33),
                        ),

                        // designation
                        Text(
                          medicine.designation,
                          style: TextStyle(fontSize: 28),
                        ),

                        // dci + favoris + hospital
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              medicine.dci ?? "dci null",
                              style: TextStyle(fontSize: 25),
                            ),
                            Row(
                              children: [
                                TextIcon(
                                  count: medicine.favoris ?? "0",
                                  icon: Icons.favorite,
                                ),
                                TextIcon(
                                    count: medicine.hospital ?? "0",
                                    icon: Icons.local_hospital)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  );
                });
          }),
    );
  }
}

class TextIcon extends StatelessWidget {
  const TextIcon({
    required this.count,
    required this.icon,
    Key? key,
  }) : super(key: key);

  final String count;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(right: 10.0),
      child: Row(
        children: [
          Text(count),
          Icon(icon),
        ],
      ),
    );
  }
}
