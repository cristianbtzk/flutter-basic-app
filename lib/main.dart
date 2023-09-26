import 'package:flutter/material.dart';

void main() {
  runApp(Example());
}

final perguntas = ['Você possui cnh?', 'Veiculo?'];

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routes',
      initialRoute: '/',
      routes: {
        '/': (context) =>Scaffold(
          appBar: AppBar(title: const Text('Hello Flutter')),
          body: const Center(
            child: Column(
              children: [
                Text('1'),
                Divider(),
                Text('2'),
              ],
            ),
          )),
      },
    );
  }
}
