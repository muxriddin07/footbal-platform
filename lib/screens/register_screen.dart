
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
const RegisterScreen({super.key});

@override
State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
bool _isPasswordHidden = true;
bool _isConfirmPasswordHidden = true;

final TextEditingController _nameController = TextEditingController();
final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
final TextEditingController _confirmPasswordController = TextEditingController();


@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.white,
body: SafeArea(
child: Padding(
padding: const EdgeInsets.all(20),
child: Column(
children: [
const SizedBox(height: 30),

    const Icon(
      Icons.sports_soccer,
      size: 80,
      color: Color(0xFF6A0DAD),
    ),

    const SizedBox(height: 20),

    const Text(
      "Football Platform",
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Color(0xFF6A0DAD),
      ),
    ),

    const SizedBox(height: 10),

    const Text(
      "Join the Football Community",
      style: TextStyle(
        fontSize: 16,
        color: Colors.grey,
      ),
    ),

    const SizedBox(height: 40),
TextField(
controller: _nameController,
    decoration: InputDecoration(
hintText: "Full Name",
prefixIcon: const Icon(Icons.person_outline),
  filled: true,
  fillColor: Colors.grey.shade100,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide.none,
  ),
),
),

  const SizedBox(height: 20),
  TextField(
    controller: _emailController,
    keyboardType: TextInputType.emailAddress,
decoration: InputDecoration(
hintText: "Email",
    prefixIcon: const Icon(Icons.email_outlined),
  filled: true,
  fillColor: Colors.grey.shade100,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide.none,
  ),
),
),

  const SizedBox(height: 20),
TextField(
controller: _passwordController,
obscureText: _isPasswordHidden,
decoration: InputDecoration(
hintText: "Password",
prefixIcon: const Icon(Icons.lock_outline),
  suffixIcon: IconButton(
    icon: Icon(
      _isPasswordHidden
          ? Icons.visibility_off
          : Icons.visibility,
    ),
    onPressed: () {
      setState(() {
        _isPasswordHidden = !_isPasswordHidden;
      });
    },
  ),
  filled: true,
  fillColor: Colors.grey.shade100,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide.none,
  ),
),
),

  const SizedBox(height: 20),
  TextField(
    controller: _confirmPasswordController,
    obscureText: _isConfirmPasswordHidden,
decoration: InputDecoration(
hintText: "Confirm Password",
prefixIcon: const Icon(Icons.lock_outline),
  suffixIcon: IconButton(
    icon: Icon(
      _isConfirmPasswordHidden
          ? Icons.visibility_off
          : Icons.visibility,
    ),
    onPressed: () {
      setState(() {
        _isConfirmPasswordHidden =
        !_isConfirmPasswordHidden;
      });
    },
  ),
  filled: true,
  fillColor: Colors.grey.shade100,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide.none,
  ),
),
),

  const SizedBox(height: 30),
SizedBox(
width: double.infinity,
height: 50,
child: ElevatedButton(
style: ElevatedButton.styleFrom(
backgroundColor: const Color(0xFF6A0DAD),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
  ),
),
    onPressed: () {
if (_nameController.text.trim().isEmpty) {
ScaffoldMessenger.of(context).showSnackBar(
const SnackBar(
content: Text("Please enter your full name"),
),
);
return;
}

if (_emailController.text.trim().isEmpty) {
ScaffoldMessenger.of(context).showSnackBar(
const SnackBar(
content: Text("Please enter your email"),
),
);
return;
}

if (_confirmPasswordController.text.trim().isEmpty) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text("Please confirm your password"),
    ),
  );
  return;
}

if (_passwordController.text != _confirmPasswordController.text) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text("Passwords do not match"),
    ),
  );
  return;
}

ScaffoldMessenger.of(context).showSnackBar(
const SnackBar(
content: Text("Good! Full name, email and password entered."),
),
);
},

  child: const Text(
    "CREATE ACCOUNT",
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
),
  ),

  const SizedBox(height: 20),





  ],

),
),
),
);
}
}
