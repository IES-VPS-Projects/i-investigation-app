import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/core/data/datasources/local_storage_data_source.dart';
import 'package:iinvestigation/service/sockets/socket_cubit.dart';
 
class DashboardHeader extends StatefulWidget {
  const DashboardHeader({super.key});

  @override
  _DashboardHeaderState createState() => _DashboardHeaderState();
}

class _DashboardHeaderState extends State<DashboardHeader> {
  String? name;
  String? serviceNumber;

  late Future<Map<String, String>> _profile;

  @override
  void initState() {
    super.initState();
    List<String> keys = [
      'name',
      'service_Number',
    ];
    _profile = getDataMap(keys);
    getUser();
  }

  void getUser() async {
    name = await getData('name');
    name = await getData('service Number');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    
    return FutureBuilder<Map<String, String>>(
        future: _profile,
        builder: (BuildContext context,
            AsyncSnapshot<Map<String, String>> snapshot) {
          if (snapshot.hasError) {
            return Text("${snapshot.error}");
          } else if (snapshot.hasData) {
            return Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
                child:
                    //  Text("${context.read<AuthCubit>().state.payload.user!}")
                    getDashboardWIdget(null, snapshot.data!));
          }
          return const CircularProgressIndicator();
        });
  }

  Widget getDashboardWIdget(dynamic officerDoc, Map<String, String> user) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            createAvatar("${user['name']}"),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                 
                const  Text(
                    "Welcome,",
                    style: TextStyle(
                        fontWeight: FontWeight.w100, color: Colors.green),
                  ),
                  Text(
                    "${user['name']}",
                    style: const TextStyle(fontSize: 24.0, color: Colors.white),
                  ),
                  Container(
                      color: const Color(0xFF00C6FF),
                      width: 72.0,
                      height: 1.0,
                      margin: const EdgeInsets.symmetric(vertical: 8.0)),
                  Row(
                    children: <Widget>[
                      Text(
                        "Service Number: \t",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "${user['service_Number']}",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, color: Colors.green),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget createAvatar(String name) {
    String init = name[0].toUpperCase();
    return CircleAvatar(
      radius: 40,
      child: Text(init),
    );
  }
}
