import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:iinvestigation/core/data/datasources/local_storage_data_source.dart';
import 'package:iinvestigation/core/utilities/app_navigation.dart';
import 'package:iinvestigation/features/auth/presentation/state/auth_cubit.dart';
import 'package:iinvestigation/features/dashboard/presentation/pages/dashboard.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";

  bool _loading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return ProgressHUD(
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
          ),
          body: Stack(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  Image.asset(
                    "assets/images/logo.png",
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Form(
                            key: _formKey,
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "Service Number"),
                                  keyboardType: TextInputType.number,
                                  validator: (str) {
                                    if (str == null || str.isEmpty)
                                      return "Please enter service number";
                                  },
                                  onSaved: (str) => email = str!,
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "PIN"),
                                  obscureText: true,
                                  keyboardType: TextInputType.number,
                                  validator: (str) {
                                    if (str == null || str.isEmpty) {
                                      return "Please enter PIN";
                                    }
                                  },
                                  onSaved: (str) => password = str!,
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                context.watch<AuthCubit>().state.maybeWhen(
                                    orElse: () => ElevatedButton(
                                          onPressed: signIn,
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll<
                                                      Color>(Colors.green)),
                                          child: Container(
                                              width: double.infinity,
                                              height: 50,
                                              alignment:
                                                  FractionalOffset.center,
                                              child: const Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  Icon(Icons.lock_open),
                                                  Text("Login"),
                                                ],
                                              )),
                                        ),
                                    error: (_payload) => Column(
                                          children: [
                                           const  Padding(
                                              padding:  EdgeInsets.all(8.0),
                                              child: Text(
                                                "invalid Credentials",
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: signIn,
                                              style: const ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStatePropertyAll<
                                                          Color>(Colors.green)),
                                              child: Container(
                                                  width: double.infinity,
                                                  height: 50,
                                                  alignment:
                                                      FractionalOffset.center,
                                                  child: const Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: <Widget>[
                                                      Icon(Icons.lock_open),
                                                      Text("Login"),
                                                    ],
                                                  )),
                                            )
                                          ],
                                        ),
                                    loading: (_) => CircularProgressIndicator(),
                                    login: (_) => ElevatedButton(
                                          onPressed: signIn,
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll<
                                                      Color>(Colors.green)),
                                          child: Container(
                                              width: double.infinity,
                                              height: 50,
                                              alignment:
                                                  FractionalOffset.center,
                                              child: const Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  Icon(Icons.lock_open),
                                                  Text("Login"),
                                                ],
                                              )),
                                        )),
                              ],
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              // _progressHUD
            ],
          )),
    );
  }

  void signIn() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      FormData payload =
          FormData.fromMap({"serice_number": email, "password": password});

      context.read<AuthCubit>().login(payload).then((_) {
        context.appNavigatorReplacement(const Dashboard());
      });
      // .then(;
      // dismissProgressHUD(context);
    }
  }

  void _showDialog(String msg) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: const Text("Error"),
          content: Text(msg),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            TextButton(
              child: const Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  onError(err) {
    // dismissProgressHUD(context);
    // print(err);
    // _showDialog(err.message);
  }

  void dismissProgressHUD(BuildContext context) {
    setState(() {
      if (_loading) {
        final progress = ProgressHUD.of(context);
        progress!.dismiss();
      } else {
        final progress = ProgressHUD.of(context);
        progress!.show();
      }

      _loading = !_loading;
    });
  }
}
