import 'package:flutter/material.dart';

void main() {
  runApp(Example());
}

final perguntas = ['Você possui cnh?', 'Veiculo?'];

// Define a custom Form widget.
class MascForm extends StatefulWidget {
  const MascForm({super.key});

  @override
  State<MascForm> createState() => _MascFormState();
}

class _MascFormState extends State<MascForm> {
  final weightController = TextEditingController();
  final heightController = TextEditingController();

  @override
  void dispose() {
    weightController.dispose();
    heightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            controller: weightController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Peso',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            controller: heightController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Altura',
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  var weight = double.parse(weightController.text);
                  var height = double.parse(heightController.text);
                  var targetWeight = (72.7 * height) - 58;
                  return AlertDialog(
                    content: Column(
                      children: [
                        Text('O seu peso ideal é $targetWeight'),
                        Text(
                            'Você está ${weight > targetWeight ? 'Acima' : 'Abaixo'} do peso')
                      ],
                    ),
                  );
                },
              );
            },
            child: const Text('Enviar'))
      ],
    );
  }
}

class FemForm extends StatefulWidget {
  const FemForm({super.key});

  @override
  State<FemForm> createState() => _FemFormState();
}

class _FemFormState extends State<FemForm> {
  final weightController = TextEditingController();
  final heightController = TextEditingController();

  @override
  void dispose() {
    weightController.dispose();
    heightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            controller: weightController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Peso',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            controller: heightController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Altura',
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  var weight = double.parse(weightController.text);
                  var height = double.parse(heightController.text);
                  var targetWeight = (62.1 * height) - 44.7;
                  return AlertDialog(
                    content: Column(
                      children: [
                        Text('O seu peso ideal é $targetWeight'),
                        Text(
                            'Você está ${weight > targetWeight ? 'Acima' : 'Abaixo'} do peso')
                      ],
                    ),
                  );
                },
              );
            },
            child: const Text('Enviar'))
      ],
    );
  }
}

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routes',
      initialRoute: '/',
      routes: {
        '/': (context) => Scaffold(
            appBar: AppBar(title: const Text('Cálculo de Peso Ideal')),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: Text('Masculino'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/masc');
                    },
                  ),
                  Divider(),
                  ElevatedButton(
                    child: Text('Feminino'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/fem');
                    },
                  ),
                ],
              ),
            )),
        '/masc': (context) => Scaffold(
            appBar: AppBar(title: const Text('Cálculo de Peso Ideal')),
            body: const Center(child: MascForm())),
        '/fem': (context) => Scaffold(
            appBar: AppBar(title: const Text('Cálculo de Peso Ideal')),
            body: const Center(child: MascForm())),
      },
    );
  }
}
