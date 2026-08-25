import 'package:flutter/material.dart';

class ChildScreen extends StatefulWidget {
  const ChildScreen({super.key});

  @override
  State<ChildScreen> createState() => _ChildScreenState();
}

class _ChildScreenState extends State<ChildScreen> {
  final TextEditingController _codeController = TextEditingController();
  bool _isConnected = false;

  void _verifyCode() {
    if (_codeController.text.length == 6) {
      setState(() {
        _isConnected = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("إعداد جوال الطفل")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: _isConnected
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.check_circle, color: Colors.green, size: 80),
                    SizedBox(height: 15),
                    Text(
                      "تم الاتصال بجوال الأم بنجاح!",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text("البث يعمل الآن في الخلفية..."),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("أدخل رمز الربط المكون من 6 أرقام:"),
                    const SizedBox(height: 15),
                    TextField(
                      controller: _codeController,
                      keyboardType: TextInputType.number,
                      maxLength: 6,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 24, letterSpacing: 4),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "000000",
                      ),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: _verifyCode,
                      child: const Text("تأكيد والاقتران"),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
