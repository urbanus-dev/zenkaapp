import 'package:flutter/material.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();
  final _emailController=TextEditingController();
  final _passwordController=TextEditingController();
  var currentState;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('login here'),
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
        child: Column(
              children: [
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return 'enter email';
                    }
                    if(!value!.contains("@")){
                      return'invalid email';
                    }
                    return null;
                  }
                ),
               const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'password',
                    hintText: 'Enter your password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.cyan,
                      ),
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return 'please enter password';
                    }
                    if(value!.length<6){
                      return 'please enter a strong password';
                    }
                    return null;
                  }
                ),
                const SizedBox(height: 20,),
                OutlinedButton(
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(200, 50)),
                  ),
                  child: Text('login'),
                    onPressed:(){
                    if (_formKey.currentState!.validate()) {
                          _login();
                         }
e
                    }
                ),
              ],


            ),
      ),
      ),
    );
  }

  void _login() {
    String email = _emailController.text;
    String password = _passwordController.text;

  }
}
