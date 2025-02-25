import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:moreonlife/assessment_detail_screen.dart';
import 'package:moreonlife/sign_up.dart';
import 'package:moreonlife/user_controller.dart';
import 'package:moreonlife/utils.dart';
// import 'package:moreonlife/sign_up_email_screen.dart';

class LoginScreen extends StatefulWidget {

  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final UserControllerProvider userAuth = UserControllerProvider();
  final TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  Future<bool> signInWithEmailAndPassword() async {
    try {
      setState(()=> isLoading = true);
      //Check if field contains '@' symbol that means it is an email
      //else it is username
      if(emailController.text.contains("@")){
        await userAuth.signInWithEmail(emailController.text, passwordController.text);
      }
      else {
        if(!await userAuth.signInWithUsername(emailController.text, passwordController.text)){
          throw "The username & password must be valid.";
        }
      }
      return true;
    } on FirebaseAuthException catch (exception) {
      setState(() {
        // emailController.errorText = "Invalid Username or Email";
        // _passwordField.errorText = "Invalid Password";
        Utils.showAlertPopup(context, "Something went wrong", exception.code.toString());
      });
      return false;
    } catch(e){
      setState(() {
        // _emailField.errorText = "Invalid Username or Email";
        // _passwordField.errorText = "Invalid Password";
        Utils.showAlertPopup(context, "Something went wrong", e.toString());
      });
      return false;
    }finally{
      setState(()=> isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Updated background color
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16), // Rounded corners
                child: Image.asset('assets/loginImage.png', width: 342),
              ),
              SizedBox(height: 30),
              Text("Log in", style: TextStyle(color: Color(0xFF36454F), fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Johndoe@example.com',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  contentPadding: EdgeInsets.all(12),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16),
              // Text("Password", style: TextStyle(color: Color(0xFF36454F), fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  contentPadding: EdgeInsets.all(12),
                ),
                obscureText: true,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  String email = emailController.text.trim();
                  String password = passwordController.text.trim();

                  if (email.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please enter your email')));
                  } else if (password.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please enter your password')));
                  } else {
                    // Navigator.pushNamed(
                      // context,
                      // '/otp',
                      // arguments: {'email': email},
                    // );
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                  }
                },
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF3181E5), minimumSize: Size(double.infinity, 50)),
                child: Text("Log in", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 30),
              Text("Log in with", style: TextStyle(color: Color(0xFF36454F), fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Image.asset('assets/google.png', width: 28, height: 28),
              SizedBox(height: 31),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("No account?", style: TextStyle(color: Color(0xFF36454F), fontSize: 14)),
                  GestureDetector(
                    onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                      // Navigator.pushNamed(context, '/sign_up');()
                    },
                    child: Text(" Sign up", style: TextStyle(color: Color(0xFF3181E5), fontWeight: FontWeight.bold, fontSize: 14)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
