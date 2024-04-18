import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      routes: {
        '/login':(context) => LoginScreen(),
      },
    );
  }
}
  class SplashScreen extends StatefulWidget{
    @override
    _SplashScreenState createState() => _SplashScreenState();

}

  class _SplashScreenState extends State<SplashScreen>{
  @override
    void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
      Navigator.restorablePushReplacementNamed(context, '/login');
    });
  }
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Splash Screen'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/logo.png'),
            fit: BoxFit.cover,
          )
        ),
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}


