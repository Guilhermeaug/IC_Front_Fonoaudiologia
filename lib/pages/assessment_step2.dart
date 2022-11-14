import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AssessmentStep2 extends StatelessWidget {
  const AssessmentStep2({Key? key}) : super(key: key);

  final String lorem = '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tincidunt dui est, nec viverra purus facilisis quis. Aenean tincidunt nec purus sit amet imperdiet. Maecenas dignissim, elit in pretium pellentesque, eros tellus consequat lectus, semper porta felis sem sed purus. Sed vel felis eget magna tincidunt interdum. Suspendisse suscipit porttitor orci vitae tempor. Pellentesque vel sodales eros. Nulla lobortis, justo at tincidunt egestas, nisl nisi varius sapien, eu aliquam metus augue sed enim. Ut pretium nisi sit amet odio cursus mollis. Sed porttitor luctus nunc euismod porta. In a dui ut elit mollis aliquet. Vivamus sed eleifend turpis. Fusce nec felis tempor, feugiat elit sed, rhoncus neque.
  
Sed vel dolor ut nulla pharetra bibendum ultrices at arcu. Aenean rutrum erat non risus ornare pretium. Maecenas sed tincidunt nisl, sed sagittis arcu. Donec viverra massa ipsum, ac convallis diam volutpat vel. Aenean rhoncus lacinia ultricies. Proin eu maximus turpis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed malesuada commodo nulla, non commodo lacus dictum ut. Donec lacinia, urna eu dignissim feugiat, quam arcu aliquam orci, semper rutrum metus lorem vel neque.
  
Sed semper pharetra ligula eu semper. Mauris molestie metus sed convallis faucibus. Nullam mollis, lectus id sagittis rhoncus, purus odio luctus odio, non blandit diam lacus et odio. Aliquam sodales tortor diam, egestas euismod nisl bibendum sed. Donec eu aliquam nulla. Nulla facilisi. Vivamus ullamcorper ultricies urna, at volutpat erat sagittis nec. Suspendisse potenti.
  
Suspendisse egestas risus et dui porttitor venenatis. Proin consequat, nibh vel accumsan semper, tellus tortor egestas eros, sed pellentesque erat elit vitae nulla. Suspendisse enim diam, suscipit sit amet lacinia at, venenatis id risus. Proin eu sagittis nisi, elementum malesuada mauris. In eget malesuada tellus. Duis eget metus justo. In hac habitasse platea dictumst. Nullam nisl quam, elementum quis dignissim a, dictum a diam. Nullam dui mi, consectetur in magna at, commodo interdum sem. Maecenas convallis tellus arcu, a aliquam neque suscipit vel. Ut eget justo in turpis mattis gravida eu eget libero. Integer id aliquam enim.
  
Fusce ac ligula a felis tempor viverra. Duis molestie, orci ut hendrerit iaculis, tellus magna vehicula arcu, non vestibulum lorem nunc ut lectus. Praesent condimentum nisl aliquet, congue ante scelerisque, rutrum massa. Vestibulum mollis accumsan risus eget blandit. Nunc porttitor sapien libero, et faucibus massa pretium ut. Nunc aliquet ex eget magna tincidunt, at cursus leo imperdiet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ex nisi, pharetra efficitur nisl vel, tempor pharetra lacus. 
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Avaliação perceptivo-auditiva da voz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(
                lorem,
                style: const TextStyle(
                  fontSize: 15,
                  height: 1.5,
                  overflow: TextOverflow.clip,
                ),
                textAlign: TextAlign.justify,
              ),
              const Text(
                'Vogais sustentadas',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                color: Colors.grey,
                width: 200,
                height: 50,
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  children: const [
                    Icon(
                      Icons.play_arrow,
                      size: 50,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey,
                width: 200,
                height: 50,
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  children: const [
                    Icon(
                      Icons.play_arrow,
                      size: 50,
                    ),
                  ],
                ),
              ),
              const Text(
                'Contagem',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                color: Colors.grey,
                width: 200,
                height: 50,
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  children: const [
                    Icon(
                      Icons.play_arrow,
                      size: 50,
                    ),
                  ],
                ),
              ),
              const Text(
                'Emissão de dias da semana',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                color: Colors.grey,
                width: 200,
                height: 50,
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  children: const [
                    Icon(
                      Icons.play_arrow,
                      size: 50,
                    ),
                  ],
                ),
              ),
              const Text(
                'Fala semi-espontânea',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                color: Colors.grey,
                width: 200,
                height: 50,
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  children: const [
                    Icon(
                      Icons.play_arrow,
                      size: 50,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const Alignment(0.8, 1),
                child: ElevatedButton(
                  onPressed: () {
                    context.go('/pacientes/questoes');
                  },
                  child: const Text('Próximo'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
