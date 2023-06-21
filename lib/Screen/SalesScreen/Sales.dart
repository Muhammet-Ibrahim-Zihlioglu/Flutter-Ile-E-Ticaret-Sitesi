import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../Models/product.dart';

class Sales extends StatefulWidget {
  const Sales({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State<Sales> {
  int touchedIndex = -1;

  double yuzde = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Satış Yüzdesi')),
      body: Center(
        child: AspectRatio(
          aspectRatio: 1.3,
          child: Row(
            children: <Widget>[
              const SizedBox(height: 18),
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: PieChart(
                    PieChartData(
                      pieTouchData: PieTouchData(
                        touchCallback: (FlTouchEvent event, pieTouchResponse) {
                          setState(() {
                            if (!event.isInterestedForInteractions ||
                                pieTouchResponse == null ||
                                pieTouchResponse.touchedSection == null) {
                              touchedIndex = -1;
                              return;
                            }
                            touchedIndex = pieTouchResponse
                                .touchedSection!.touchedSectionIndex;
                          });
                        },
                      ),
                      borderData: FlBorderData(show: false),
                      sectionsSpace: 0,
                      centerSpaceRadius: 40,
                      sections: showingSections(),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 28),
            ],
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    int salestoplam = 0;
    final random = Random();
    setState(() {
      for (int i = 0; i < demoProducts.length; i++) {
        if (demoProducts[i].sales > 0) {
          salestoplam = salestoplam + demoProducts[i].sales;
        }
      }
    });

    return demoProducts.map((product) {
      final isTouched = demoProducts.indexOf(product) == touchedIndex;
      final fontSize = isTouched ? 24.0 : 12.0;
      final radius = isTouched ? 120.0 : 100.0;
      final int saless = product.sales;
      final color = Color.fromARGB(
        200, // Alfa (saydamlık) değeri (255 tam opak)
        random.nextInt(256), // Rastgele kırmızı bileşen değeri (0-255 arası)
        random.nextInt(256), // Rastgele yeşil bileşen değeri (0-255 arası)
        random.nextInt(256), // Rastgele mavi bileşen değeri (0-255 arası)
      );

      setState(() {
        yuzde = saless / salestoplam * 100;
      });
      final String tittles = product.title;
      final shadows = [Shadow(color: Colors.white, blurRadius: 10)];
      return PieChartSectionData(
        color: color,
        value: product.sales.toDouble(),
        title: '${tittles}\n%${yuzde.toStringAsFixed(2)}',
        radius: radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(255, 0, 247, 255),
          shadows: shadows,
        ),
      );
    }).toList();
  }
}
