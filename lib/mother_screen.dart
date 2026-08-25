import 'package:flutter/material.dart';

class MotherScreen extends StatefulWidget {
  const MotherScreen({super.key});

  @override
  State<MotherScreen> createState() => _MotherScreenState();
}

class _MotherScreenState extends State<MotherScreen> {
  final String _pairingCode = "482901";

  void _showCodeDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("رمز ربط الكاميرا"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("أدخل هذا الرمز في جوال الطفل للربط:"),
            const SizedBox(height: 15),
            Text(
              _pairingCode,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.indigo),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("إغلاق"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("لوحة مراقبة الأم"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_a_photo),
            onPressed: _showCodeDialog,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  "[ بث الفيديو المباشر من غرفة الطفل ]",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.mic, size: 32),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.flash_on, size: 32),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.camera_alt, size: 32),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
