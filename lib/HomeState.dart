import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Contato> contatos = [
    Contato(name: 'Nome1', phoneNumber: '123456789', photo: 'url_da_foto1'),
    Contato(name: 'Nome2', phoneNumber: '987654321', photo: 'url_da_foto2'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text('MEUS CONTATOS'),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text('${contatos.length} contatos com número de telefone'),
                ),
              ],
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Adicionar');
                  },
                  child: Icon(Icons.add),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/buscar');
                  },
                  child: Icon(Icons.manage_search_outlined),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/configuracoes');
                  },
                  child: Icon(Icons.phone_iphone_sharp),
                ),
              ],
            ),
            SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              itemCount: contatos.length,
              itemBuilder: (context, index) {
                Contato contato = contatos[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(contato.photo),
                  ),
                  title: Text(contato.name),
                  subtitle: Text(contato.phoneNumber),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Contato {
  final String name;
  final String phoneNumber;
  final String photo;

  Contato({
    required this.name,
    required this.phoneNumber,
    required this.photo,
  });
}
