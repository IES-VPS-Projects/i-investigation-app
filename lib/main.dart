import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:iinvestigation/core/domain/di/configure_dependencies.dart';
import 'package:iinvestigation/core/presentation/state/register_blocs.dart';
import 'package:iinvestigation/features/auth/presentation/pages/sign_in.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/features/dashboard/presentation/pages/dashboard.dart';
import 'package:iinvestigation/service/sockets/socket_cubit.dart';

import 'core/data/datasources/local_storage_data_source.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // HttpOverrides.global = MyHttpOverrides();

  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: providers,
      child: MaterialApp(
        title: 'I Investigation',
        // theme: ThemeData(
        //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        //   useMaterial3: true,
        // ),

        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'GoogleSans',
          primarySwatch: Colors.blueGrey,
          useMaterial3: true,
        ),
        home: MyHomePage(title: "I-Investigaiton",),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<String?> futureToken;

  @override
  void initState() { 
    super.initState();

    futureToken = getData('name');
    context.read<SocketCubit>().init();
  }


  @override
  Widget build(BuildContext context) {
   
    return  ProgressHUD(
          child: FutureBuilder(
              future: futureToken,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return snapshot.data!.isEmpty
                      ? const SignIn()
                      : const Dashboard();
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
                return const CircularProgressIndicator();
              }),
        );
    
    
    }
}
