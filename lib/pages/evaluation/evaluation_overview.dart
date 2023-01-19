import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/patient/patient_model.dart';

class Overview extends ConsumerWidget {
  const Overview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(implicationIndexProvider);

    final theory = ref.read(patientDataProvider.notifier).currentTheory;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MarkdownBody(
          data: theory.description,
          selectable: true,
          styleSheet: MarkdownStyleSheet(
            p: const TextStyle(
              fontSize: 14,
              height: 1.5,
            ),
          ),
        ),
        const Divider(),
        for (var item in theory.media)
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Image.network('https://sistema-especialista.azurewebsites.net/$item'),
          ),
      ],
    );
  }
}
