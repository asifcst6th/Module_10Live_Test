import 'package:flutter/material.dart';

// To run this code, you'd typically run it inside a StatelessWidget or
// StatefulWidget's build method, wrapped by a MaterialApp.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List'),
        backgroundColor: const Color(0xFF607D8B), // Slate/blue-gray color
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            // --- Input Fields (TextFormField) ---
             TextFormField(
              initialValue: 'Hasan',
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.name,
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              initialValue: '01745-777777',
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 15.0),

            // --- Add Button (ElevatedButton) ---
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Functionality not required
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF607D8B),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),
                ),
                child: const Text(
                  'Add',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 20.0),

            // --- Contact List (ListView.builder with ListTile) ---
            Expanded(
              child: ListView.separated(
                itemCount: 5,
                separatorBuilder: (context, index) => const Divider(height: 1),
                itemBuilder: (context, index) {
                  final names = ['Jawad', 'Ferdous', 'Hasan', 'Hasan', 'Hasan'];
                  final numbers = ['01877-777777', '01673-777777', '01745-777777', '01745-777777', '01745-777777'];
                  
                  return Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Color.fromARGB(255, 230, 230, 230), width: 1.0),
                      ),
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.person, color: Color(0xFF607D8B), size: 30.0),
                      title: Text(
                        names[index],
                        style: const TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text(numbers[index]),
                      trailing: const Icon(
                        Icons.call,
                        color: Colors.blue,
                      ),
                      onTap: () {},
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}