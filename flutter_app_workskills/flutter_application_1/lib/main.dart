import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

//Nó da aplicação assim como uma o ReactDOM
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyForm(),
      ),
    );
  }
}

class MyForm extends StatelessWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 50, vertical: 100),
              child: SizedBox(
                width: 320,
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
              )),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
              child: SizedBox(
                width: 320,
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Senha',
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 50),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(fixedSize: const Size(320, 40)),
              onPressed: () {},
              child: const Text('Acessar'),
            ),
          )
        ]);
  }
}
