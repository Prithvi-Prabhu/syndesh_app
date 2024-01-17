import 'package:flutter/material.dart';
import 'screens/intro';
void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Syndesh",
      home: buildPageWithBlackTextAndPurpleBackground(),
    );
  }
} 

/* import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Signup Page with Location',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignupPage(),
    );
  }
} */

/* class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _locationController,
              decoration: InputDecoration(labelText: 'Location'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async {
                // Retrieve location using Geolocator package
                Position position = await Geolocator.getCurrentPosition(
                  desiredAccuracy: LocationAccuracy.high,
                );
                String location = '${position.latitude}, ${position.longitude}';

                // Use the location data as needed
                print('Location: $location');
              },
              child: Text('Get Location'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle signup logic with _usernameController.text and _locationController.text
                String username = _usernameController.text;
                String location = _locationController.text;

                // Use the signup data as needed
                print('Username: $username, Location: $location');
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
} */

// HAVE TO RE DO */
/*
import 'package:flutter/material.dart';
import 'package:syndesh_mockup/components/sign_up_button.dart';
import 'package:syndesh_mockup/components/locator_button.dart';
import 'package:syndesh_mockup/components/my_textfield.dart';
import 'package:syndesh_mockup/components/square_tile.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  // text editing controllers
  final nameController = TextEditingController();
  final numberController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  final locationController = TextEditingController();

  // sign user in method
  void main() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // logo
              Image.asset(
            'assets/icons/syndeshlogo.png', // Replace with the path to your logo image
            width: 150, // Adjust the width as needed
            height: 150, 
              ),

              const SizedBox(height: 50),

              // welcome back, you've been missed!
              Text(
                'Welcome to SYNDESH!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

 // username textfield
              MyTextField(
                controller: nameController,
                hintText: 'Name',
                obscureText: false,
              ),

              const SizedBox(height: 10),

               // username textfield
              MyTextField(
                controller: numberController,
                hintText: 'Phone number',
                obscureText: false,
              ),

              const SizedBox(height: 10),


              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Confirm Password:',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // sign in button
             /*  signButton(
                onTap: main
              ),

              const SizedBox(height: 50),*/

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              // google + apple sign in buttons
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google button
                  SquareTile(imagePath: 'assets/icons/google.png'),

                  SizedBox(width: 25),

                  // apple button
                  SquareTile(imagePath: 'assets/icons/apple.png')
                ],
              ),

              const SizedBox(height: 50),

              // not a member? register now
               // password textfield
              MyTextField(
                controller: locationController,
                hintText: 'Enter Location Manually',
                obscureText: true,
              ),

              const SizedBox(height: 10),

               // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // sign in button
             /* locatorButton(
                onTap: main,
              ), 

              const SizedBox(height: 50),*/

              Image.asset(
            'assets/images/map.png.jpg', // Replace with the path to your logo image
            width: 150, // Adjust the width as needed
            height: 150, 
              ),




            ],
          ),
        ),
      ),
    );
  }
} */

/* import 'package:flutter/material.dart';
import 'screens/login';
void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Syndesh",
      home: LoginPage(),
    );
  }
} */