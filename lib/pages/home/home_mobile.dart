import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MobileView extends StatelessWidget {
  const MobileView({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo.png',
              width: 400,
            ),
            const Text(
              'Sistema de Análises Clínicas\n',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text.rich(
              overflow: TextOverflow.clip,
              textAlign: TextAlign.justify,
              softWrap: true,
              TextSpan(
                style: TextStyle(
                  fontSize: 20,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Bem-vindo ao Treina-Voz, uma ferramenta didática '
                        'em Fonoaudiologia voltada para o desenvolvimento do raciocínio clínico na área de VOZ.\n\n',
                  ),
                  TextSpan(
                    text:
                    'Aqui você terá a oportunidade de exercitar autonomamente tanto o seu raciocínio em diagnóstico quanto em conduta terapêutica voltados para pacientes adultos com disfonia comportamental.',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: width * 0.8,
              child: ElevatedButton(
                onPressed: () {
                  context.go('/pacientes');
                },
                child: const Text('Iniciar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
