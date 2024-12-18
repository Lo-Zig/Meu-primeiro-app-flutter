import 'package:flutter/material.dart';
import 'package:flutter_app/components/task.dart';

class initialScreen extends StatefulWidget {
  const initialScreen({super.key});

  @override
  State<initialScreen> createState() => InitialScreen();
}

class InitialScreen extends State<initialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
        ),
        title: Text('Tarefas'),
        backgroundColor: const Color.fromARGB(255, 235, 197, 247),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: Duration(milliseconds: 300),
        child: ListView(
          children: [
            Task("Aprender Flutter", "assets/images/dash-search.png", 5),
            Task("Counter-Strike", "assets/images/cs.webp", 2),
            Task("Pescar", "assets/images/pesca.jpg", 1),
            Task("Jogar bola", "assets/images/jogadores.jpg", 3),
            Task("Academia", "assets/images/pesca.jpg", 2),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: Icon(Icons.remove_red_eye),
      ),
    );
  }
}
