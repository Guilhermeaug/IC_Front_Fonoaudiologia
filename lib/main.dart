import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Sistema Especialista',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final String welcomeText =
      'Olá,\nBem-vindo ao Treina-Voz, uma ferramenta didática '
      'em Fonoaudiologia voltada para o desenvolvimento do raciocínio clínico na área de VOZ. '
      'Aqui você terá a oportunidade de exercitar autonomamente tanto o seu raciocínio em diagnóstico quanto em '
      'conduta terapêutica voltados para pacientes adultos com disfonia comportamental.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Sistema Especialista de Analise Clínica',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            welcomeText,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const CasesPage()),
              // );
            },
            child: const Text('Iniciar'),
          ),
        ],
      ),
    );
  }
}
