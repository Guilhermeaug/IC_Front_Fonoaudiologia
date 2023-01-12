import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../components/space.dart';

class PatientsPage extends StatelessWidget {
  const PatientsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seleção de Paciente'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            Text(
              'Escolha seu paciente',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            VerticalSpace(20),
            Patients(),
          ],
        ),
      ),
    );
  }
}

class Patients extends StatelessWidget {
  const Patients({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            title: Text('Paciente $index'),
            onTap: () {
              context.go('/evaluation');
            },
          ),
        );
      },
    );
  }
}
