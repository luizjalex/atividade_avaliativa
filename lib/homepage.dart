import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final listaColaboradores = [
    {
      'nome': 'Juliana Albuquerque',
      'cargo': 'Coordenadora de apoio',
      'imagem': '219969.png',
      'telefone': '(81)99731-8333',
      'email': 'julianaalbuquerque@email.com'
    },
    {
      'nome': 'Ãngela Taís',
      'cargo': 'Chefe de obras',
      'imagem': '219969.png',
      'telefone': '(81)99762-9832',
      'email': 'angelatais@email.com'
    },
    {
      'nome': 'Carlos Alexandre',
      'cargo': 'Suporte',
      'imagem': '4128176.png',
      'telefone': '(81)99631-2343',
      'email': 'carlosalexandre@email.com'
    },
    {
      'nome': 'Ana Beatriz',
      'cargo': 'Atendente',
      'imagem': '219969.png',
      'telefone': '(81)99746-2398',
      'email': 'anabeatriz@email.com'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Colaboradores",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 4, 95, 170),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: listaColaboradores.length,
                  itemBuilder: (context, i) {
                    var dados = listaColaboradores[i];
                    return Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/" + dados['imagem'].toString(),
                              width: 100,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  dados['nome'].toString(),
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  dados['cargo'].toString(),
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  dados['telefone'].toString(),
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  dados['email'].toString(),
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          color: Color.fromARGB(255, 65, 64, 64),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
