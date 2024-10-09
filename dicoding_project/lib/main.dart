import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catatan Kecil :)',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

// Halaman Stateful Widget: Home Page
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: 500,
            height: 500,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 147, 147, 145).withOpacity(0.5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "Catatan Kecil",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    // Navigasi ke halaman NotePage dan tunggu hasilnya
                    // ignore: unused_local_variable
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotePage(),
                      ),
                    );

                    // Hasilnya tidak digunakan di sini, jadi tidak ada aksi tambahan
                  },
                  child: Text('Ke Halaman Catatan'),
                  style: ElevatedButton.styleFrom(minimumSize: Size(200, 50)),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Navigasi ke halaman InfoPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InfoPage()),
                    );
                  },
                  child: Text('Ke Halaman Info'),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Halaman Stateful Widget: Note Page
class NotePage extends StatefulWidget {
  @override
  _NotePageState createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  final TextEditingController _noteController = TextEditingController();
  final List<String> _notes = [];

  void _addNote() {
    if (_noteController.text.isNotEmpty) {
      setState(() {
        _notes.add(_noteController.text);
        _noteController.clear(); // Kosongkan input setelah menambahkan
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Catatan'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        height: 1000,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.red, Colors.blue])),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
                color:
                    const Color.fromARGB(255, 196, 195, 192).withOpacity(0.5)),
            child: Column(
              children: [
                TextField(
                  controller: _noteController,
                  decoration: InputDecoration(
                    labelText: 'Masukkan catatan Anda',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: null, // Multiline
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: _addNote,
                  child: Text('Tambahkan Catatan'),
                ),
                SizedBox(height: 20),
                // Menampilkan catatan yang telah ditambahkan
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Nonaktifkan scroll
                  itemCount: _notes.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_notes[index]),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Halaman Stateless Widget: Info Page
class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info Page'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue, Colors.red])),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dibuat pada 9 September 2024.\n Oleh Aprian (dibantu google dikit :)',
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
