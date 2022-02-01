import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int likes = 0;
  bool emailIsActive = false;
  bool phoneIsActive = false;
  bool routeIsActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(
              "https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('ITESO, Universidad Jesuita de Guadalajara'),
                  Text('San Pedro Tlaquepaque, Jal.')
                ],
              ),
              IconButton(
                onPressed: () {
                  likes++;
                  setState(() {});
                },
                icon: Icon(Icons.thumb_up),
              ),
              Text('$likes'),
              IconButton(
                onPressed: () {
                  likes--;
                  setState(() {});
                },
                icon: Icon(Icons.thumb_down),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      emailIsActive = !emailIsActive;
                      setState(() {});
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Correo del iteso: correo@iteso.com'),
                        ),
                      );
                    },
                    iconSize: 64,
                    icon: Icon(Icons.email),
                    color: emailIsActive ? Colors.indigo : Colors.black,
                  ),
                  Text('Email'),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      phoneIsActive = !phoneIsActive;
                      setState(() {});
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Telefono del iteso: 33333333'),
                        ),
                      );
                    },
                    iconSize: 64,
                    icon: Icon(Icons.phone),
                    color: phoneIsActive ? Colors.indigo : Colors.black,
                  ),
                  Text('Telefono'),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      routeIsActive = !routeIsActive;
                      setState(() {});
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Ruta del ITESO'),
                        ),
                      );
                    },
                    iconSize: 64,
                    icon: Icon(Icons.directions),
                    color: routeIsActive ? Colors.indigo : Colors.black,
                  ),
                  Text('Ruta'),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'The university has approximately 10,000 students. Its academic options include Civil Engineering and Architecture, Food Engineering, Education, Electronic Engineering, International Business, International Relations, Chemical Engineering, Philosophy, Psychology and Social Studies, and Networks and Telecommunications Engineering. The university is affiliated to the Jesuit University System, which includes the Iberoamerican Universities in Acapulco, Mexico City, Jaltepec, León, Torreón, Puebla and Tijuana. According to the vision of Jesuits, local businesspeople, and others who planned the university, it would combine professional training with a firm sense of social responsibility.',
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
