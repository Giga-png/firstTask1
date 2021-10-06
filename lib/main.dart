import 'package:first_lecture/animalPicsLinks.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AnimalApp());
}

class AnimalApp extends StatelessWidget {
  const AnimalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Planet App',
      home: AnimalsApp(),
    );
  }
}

class AnimalsApp extends StatefulWidget {
  const AnimalsApp({Key? key}) : super(key: key);

  @override
  State<AnimalsApp> createState() => _AnimalsAppState();
}

class _AnimalsAppState extends State<AnimalsApp> {
  String showImage = deer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Strange Animals'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(showImage, width: 300, height: 500,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            setState(() {
                              showImage = immortalJellyfish;
                            });
                          },
                          child: const Text('Jellyfish')),
                      TextButton(
                          onPressed: () {
                            setState(() {
                              showImage = llama;
                            });
                          },
                          child: const Text('Llama')),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            setState(() {
                              showImage = deer;
                            });
                          },
                          child: const Text('Deer')),
                      TextButton(
                          onPressed: () {
                            setState(() {
                              showImage = rhino;
                            });
                          },
                          child: const Text('Rhino')),
                    ],
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}