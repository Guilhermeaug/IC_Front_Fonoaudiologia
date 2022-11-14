import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PatientsPage extends StatelessWidget {
  const PatientsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Página dos Pacientes',
      home: SelectionArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Text('Seleção de Paciente'),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Escolha seu paciente",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 40),
                  PatientsType(
                    sectionTitle: 'Nódulos vocais',
                  ),
                  PatientsType(
                    sectionTitle: 'Sulco vocal',
                  ),
                  PatientsType(
                    sectionTitle: 'Pólipo vocal',
                  ),
                  PatientsType(
                    sectionTitle: 'Edema de reinke',
                  ),
                  PatientsType(
                    sectionTitle: 'Fenda triangular médio posterior',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PatientsType extends StatelessWidget {
  final String sectionTitle;

  const PatientsType({Key? key, required this.sectionTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sectionTitle,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 200,
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(
                dragDevices: {
                  PointerDeviceKind.touch,
                  PointerDeviceKind.mouse,
                },
              ),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: const [
                  Patient(name: "Fernanda Melo", index: 1),
                  Patient(name: "Fernanda Melo", index: 2),
                  Patient(name: "Fernanda Melo", index: 3),
                  Patient(name: "Fernanda Melo", index: 4),
                  Patient(name: "Fernanda Melo", index: 5),
                  Patient(name: "Fernanda Melo", index: 6),
                  Patient(name: "Fernanda Melo", index: 7),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Patient extends StatelessWidget {
  final String name;
  final int index;

  const Patient({Key? key, required this.name, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: InkWell(
        onTap: () {
          context.go('/pacientes/step1/1');
        },
        child: Card(
          color: Colors.lightGreen,
          child: Row(
            children: [
              Image.network(
                  'https://avatars.dicebear.com/api/female/lllb.png'),
              Container(
                width: 10,
                color: Colors.white,
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Paciente $index",
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
