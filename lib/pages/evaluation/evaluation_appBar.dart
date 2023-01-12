import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/patient/patient_model.dart';
import '../../components/space.dart';

class EvaluationAppBar extends ConsumerWidget implements PreferredSizeWidget {
  final int length;

  const EvaluationAppBar({
    Key? key,
    required this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final implicationIndex = ref.watch(implicationIndexProvider);
    final implicationIndexNotifier = ref.watch(implicationIndexProvider.notifier);
    final canGoNext = ref.watch(canGoNextImplicationProvider);
    final canGoPrevious = ref.watch(canGoPreviousImplicationProvider);
    void goToPreviousImplication() {
      implicationIndexNotifier.goToPreviousPage();
    }
    void goToNextImplication() {
      implicationIndexNotifier.goToNextPage();
    }

    final title = ref.read(patientDataProvider.notifier).currentTheory.title;

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 600) {
        return buildAppBarDesktop(canGoPrevious, goToPreviousImplication,
            canGoNext, goToNextImplication, implicationIndex, title);
      } else {
        return AppBar(
          title: Text(
            title,
            style: const TextStyle(overflow: TextOverflow.ellipsis),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: canGoPrevious ? goToPreviousImplication : null,
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: canGoNext ? goToNextImplication : null,
            ),
          ],
        );
      }
    });
  }

  AppBar buildAppBarDesktop(bool canGoPrevious, void Function() goToPreviousImplication,
      bool canGoNext, void Function() goToNextImplication, int index, String title) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 30,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_sharp),
              onPressed: () {
                canGoPrevious ? goToPreviousImplication() : null;
              },
            ),
          ),
          const HorizontalSpace(20),
          Text(title),
          const HorizontalSpace(20),
          SizedBox(
            width: 30,
            child: IconButton(
              icon: const Icon(Icons.arrow_forward_sharp),
              onPressed: () {
                canGoNext ? goToNextImplication() : null;
              },
            ),
          ),
        ],
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(20),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < length; i++)
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: i == index ? Colors.deepPurple : Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}
