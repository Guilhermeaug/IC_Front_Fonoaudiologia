import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sistema_especialista/pages/assessment_step2.dart';
import 'package:sistema_especialista/pages/assessment_step1.dart';
import 'package:sistema_especialista/pages/diagnostics_page.dart';
import 'package:sistema_especialista/pages/home_page.dart';
import 'package:sistema_especialista/pages/patients_page.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const App());
}

final GoRouter _router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const HomePage(),
      routes: [
        GoRoute(
          path: 'pacientes',
          builder: (BuildContext context, GoRouterState state) =>
              const PatientsPage(),
          routes: <RouteBase>[
            GoRoute(
              path: 'step1/1',
              builder: (BuildContext context, GoRouterState state) =>
                  const AssessmentStep1(),
            ),
            GoRoute(
              path: 'step1/2',
              builder: (BuildContext context, GoRouterState state) =>
                  const AssessmentStep2(),
            ),
            GoRoute(
              path: 'questoes',
              builder: (BuildContext context, GoRouterState state) =>
              const DiagnosticsPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Sistema Especialista',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Raleway'),
    );
  }
}
