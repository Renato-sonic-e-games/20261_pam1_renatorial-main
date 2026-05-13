import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // header do aplicativo
      appBar: AppBar(  // construtor da classe AppBar
        title: const Text('Etec Adolpho Berezin - PAM1'), // titulo do header
          backgroundColor: Colors.redAccent, // cor de fundo do header
      ),
      //menu lateral esquerdo
      drawer: Drawer( // construtor da classe Drawer
      child: Text("Menu esquerdo"), // conteudo interno
      backgroundColor: Colors.redAccent, // cor de fundo
      ),
      //menu lateral direito
      endDrawer: Drawer( // construtor da classe endDrawer
      child: Text("Menu direito"), // conteudo interno
      backgroundColor: Colors.redAccent, // cor de fundo
      ),
      // footer
      bottomNavigationBar: BottomAppBar( // construtor da classe BottomAppBar
        color: Colors.redAccent, // cor de fundo
        child: Text("Desenvolvimento Mobile com Flutter") // conteudo interno
      ),
      //botão flutuante
      floatingActionButton: FloatingActionButton( // construtor da classe FloatingActionButton
        onPressed: () {}, // ação do botão
        child: const Icon(Icons.add), // ícone do botão
      ),
      body: const Center(
        child: Text(
          'Desenvolvimento Mobile com Flutter',
        style: TextStyle (
          fontSize: 12,
          color: Colors.blueGrey,
          ),
        ),
      ),
    );
  }
}
