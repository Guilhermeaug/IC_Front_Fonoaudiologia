import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'pages/evaluation/evaluation.dart';
import 'pages/home/home.dart';
import 'pages/patient/patients.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const HomePage(),
    ),
    GoRoute(
      path: '/pacientes',
      builder: (BuildContext context, GoRouterState state) =>
          const PatientsPage(),
    ),
    GoRoute(
      path: '/evaluation',
      builder: (BuildContext context, GoRouterState state) =>
          const EvaluationPage(),
    )
  ],
);
