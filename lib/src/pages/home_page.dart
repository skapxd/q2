import 'package:flutter/material.dart';
import 'package:q2/src/bloc/provider.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final bloc = Providers.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Email: ${ bloc.email }'),
              Divider(),
              Text('Password: ${ bloc.password }')
            ],
          ),
      ),
    );
  }
}