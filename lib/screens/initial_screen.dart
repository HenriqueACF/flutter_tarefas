import 'package:flutter/material.dart';
import 'package:flutter_tarefas/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {

  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text('Flutter Tasks'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Task('Estudar Flutter', 'assets/images/flutter.png', 3),
            ),
            Task('Andar de Bike', 'assets/images/bike.webp', 2),
            Task('Ler 50 páginas', 'assets/images/ler.jpg', 1),
            Task('Meditar', 'assets/images/meditar.jpeg', 4),
            Task(
              'Jogar',
              'assets/images/jogar.jpg',
              0,
            ),
            SizedBox(
              height: 100,
            ),
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