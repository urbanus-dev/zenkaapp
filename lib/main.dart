import 'package:flutter/material.dart';
import 'package:zenka/login.dart';
import 'package:zenka/register.dart';
void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: equity(),
  ));
}
class equity extends StatefulWidget {
  const equity({Key? key}) : super(key: key);

  @override
  State<equity> createState() => _equityState();
}

class _equityState extends State<equity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
        decoration: const BoxDecoration(
        gradient:  LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
               Colors.blue,
              Colors.purple,
                ],
             ),
        ),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  Icon(Icons.food_bank_outlined),
                  Text("zenka"),
                ],
              ),
              Row(
                children: const[
                  SizedBox(
                    width: 75,
                    height: 75,
                  ),
                  Text(
                    "Your finance in perfect "
                        "harmony",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.red),
                  ),
                ],
              ),
              Row(
                children: const[
                  SizedBox(
                    width: 75,
                    height: 200,
                  ),
                  Text(
                    "New customer?Register here:",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),
                  ),
                ],
              ),
            Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all<Size>(
                            Size(200, 50), // set the desired size
                          ),
                        ),
                      child: const Text("register"),
                        onPressed:(){
                        Navigator.push(
                            context,
                          MaterialPageRoute(builder: (context)=>RegistrationPage()),
                            );
                        }


                    ),
                  ],
                ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  Text("already have any account?"),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
             Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all<Size>(
                        const Size(200, 50),
                        ),
                      ),
                        child: const Text("login"),
                        onPressed:(){
                        Navigator.push(
                            context,
                        MaterialPageRoute(builder: (context)=>login()),
                        );
                        }


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
