// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MainHomePage extends StatefulWidget {
  List<String> titleTranz = [];
  List<String> commentTranz = [];
  List<String> sumaTranz = [];
  MainHomePage({
    Key? key,
    required this.titleTranz,
    required this.commentTranz,
    required this.sumaTranz,
  }) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  late List<GDPData> _chartData;

  late TooltipBehavior _tooltipBehavior;
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('test1', 1000),
      GDPData('test2', 1500),
      GDPData('test3', 11100),
      GDPData('test4', 1050),
      GDPData('test5', 1580),
      GDPData('test6', 1180),
    ];
    return chartData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          'CashUp',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF426DC2),
                    Color(0xFF7493D0),
                    Color(0xFF7D9CDA),
                    Color(0xFF3D6DCB),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      'TOTAL BALANCE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'RP.410.000',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  IntrinsicHeight(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(30, 20, 10, 20),
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  'Total Shopping',
                                  // ignore: unnecessary_const
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Rp. 300.000',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const VerticalDivider(
                          width: 40,
                          thickness: 1,
                          indent: 20,
                          endIndent: 20,
                          color: Colors.white,
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(30, 20, 10, 20),
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  'Total Shopping',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Rp. 300.000',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SfCircularChart(
              tooltipBehavior: _tooltipBehavior,
              series: <CircularSeries>[
                DoughnutSeries<GDPData, String>(
                  dataSource: _chartData,
                  xValueMapper: (GDPData data, _) => data.continent,
                  yValueMapper: (GDPData data, _) => data.gdp,
                  enableTooltip: true,
                  //dataLabelSettings: DataLabelSettings(isVisible: true),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              padding: EdgeInsets.all(5),
              shrinkWrap: true,
              itemCount: widget.titleTranz.length,
              itemBuilder: (BuildContext context, int index) {
                return Text(
                  widget.titleTranz[index],
                  style: TextStyle(fontSize: 22, color: Colors.black),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final int gdp;
}
