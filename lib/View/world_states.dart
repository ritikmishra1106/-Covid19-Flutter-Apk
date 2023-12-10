import 'package:covid19_project/Model/WorldStatesModell.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import '../Services/states_services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'countries_list.dart';

class WorldStatesScreen extends StatefulWidget {
  const WorldStatesScreen({super.key});

  @override
  State<WorldStatesScreen> createState() => _WorldStatesScreenState();
}

class _WorldStatesScreenState extends State<WorldStatesScreen> with TickerProviderStateMixin{
  late final AnimationController _controller = AnimationController(duration:Duration(seconds: 3),vsync: this)..repeat();
  @override

  void dispose(){
    super.dispose();
    _controller.dispose();
  }
  final colorList=<Color> [
    const Color(0xff4285F4),
    const Color(0xff1aa260),
    const Color(0xffde5246),

  ];
  @override
  Widget build(BuildContext context) {

    StatesServices statesServices =StatesServices();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*.01,),
              FutureBuilder(
                future: statesServices.fecthWorldStatesRecords(),
                builder: (context,AsyncSnapshot<WorldStatesModell>snapsshot){
                  if(!snapsshot.hasData){
                    return Expanded(
                      flex: 1,
                        child: SpinKitFadingCircle(
                          color: Colors.white,
                          size: 50.0,
                        ));
                  }else{
                    return Column(
                      children: [
                        PieChart(
                            dataMap:{
                              "Total":double.parse(snapsshot.data!.cases.toString()),
                              "Recovered":double.parse(snapsshot.data!.recovered.toString()),
                              "Deaths":double.parse(snapsshot.data!.deaths.toString()),
                            },
                            chartValuesOptions: const ChartValuesOptions(
                              showChartValuesInPercentage: true
                            ),
                            chartRadius: MediaQuery.of(context).size.width/3.2,
                            legendOptions: const LegendOptions(
                                legendPosition: LegendPosition.left
                            ),
                            animationDuration: Duration(milliseconds: 1200),
                            chartType: ChartType.ring,
                            colorList:colorList
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*.06),
                          child: Card(
                            child: Column(
                              children: [
                                ReusableRow(title: 'Total', value: snapsshot.data!.cases.toString()),
                                ReusableRow(title: 'Death', value: snapsshot.data!.deaths.toString()),
                                ReusableRow(title: 'Recovered', value: snapsshot.data!.recovered.toString()),
                                ReusableRow(title: 'Active', value: snapsshot.data!.active.toString()),
                                ReusableRow(title: 'Critical', value: snapsshot.data!.critical.toString()),
                                ReusableRow(title: 'Today Death', value: snapsshot.data!.todayDeaths.toString()),
                                ReusableRow(title: 'Today Recovered', value: snapsshot.data!.todayRecovered.toString()),


                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>CountriesList()));
                          }
                          ,child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color(0xff1aa260),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: const Center(
                              child: Text('Track Countries'),
                            ),
                          ),
                        )
                      ],
                    );
                  }
              },),

            ],
          ),
        ),
      ),
    );
  }
}


class ReusableRow extends StatelessWidget {
  String title,value;
   ReusableRow({super.key,required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,top:10,bottom: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              Text(value),
            ],
          ),
          SizedBox(height: 5,),
          Divider()
        ],
      ),
    );
  }
}
