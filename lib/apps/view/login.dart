import 'package:expense_tracker/apps/controller/auth/bloc/bloc/auth_bloc.dart';
import 'package:expense_tracker/apps/view/home/homescreen.dart';
import 'package:expense_tracker/apps/widgets/assetfolder.dart';
import 'package:expense_tracker/apps/widgets/signinbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});

  final emailController = TextEditingController();
  final passcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();

  // void signinuser() {}

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is RegisterPageNavigatedState) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Login Successfull completed")));
        } else if (state is LoggedInErrorState) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.error)));
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.network(
                  "https://play-lh.googleusercontent.com/1iukd3WQv6HTWfLQeWiXlqgYaCG89LVy7jLI7lB1LWv0gdV42WMKLRhMPY1OR-2egI8",
                  width: 150,
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Welcome back you've been missed!",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 25.0),
                //   child: TextField(
                //     controller: namecontroller,
                //     decoration: InputDecoration(
                //         hintText: "Username",
                //         enabledBorder: OutlineInputBorder(
                //           borderSide: BorderSide(color: Colors.black),
                //         ),
                //         filled: true,
                //         fillColor: Colors.grey.shade200),
                //   ),
                // ),
                // const SizedBox(
                //   height: 25,
                // ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        hintText: "Enter Your Email",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade200),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    controller: passcontroller,
                    decoration: InputDecoration(
                        hintText: "Enter Your Password",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade200),
                  ),
                ),
                // const SizedBox(
                //   height: 25,
                // ),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 25.0),
                //   child: TextField(
                //     controller: passcontroller,
                //     decoration: InputDecoration(
                //         hintText: "Blood group",
                //         enabledBorder: OutlineInputBorder(
                //           borderSide: BorderSide(color: Colors.black),
                //         ),
                //         filled: true,
                //         fillColor: Colors.grey.shade200),
                //   ),
                // ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          BlocProvider.of<AuthBloc>(context)
                              .add(RegisterPageNavigateEvent());
                        },
                        child: Text(
                          "Already have an account?",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      // const SizedBox(
                      //   width: 4,
                      // ),
                      // GestureDetector(
                      //   onTap: () {
                      //     BlocProvider.of<AuthBloc>(context)
                      //         .add(RegisterPageNavigateEvent());
                      //   },
                      // )
                    ],
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),
                SignInButton(
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      BlocProvider.of<AuthBloc>(context).add(
                        LoginButtonClickedEvent(
                            email: emailController.text,
                            password: passcontroller.text),
                      );
                    }
                    // Navigator.pushReplacement(context,
                    //     MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                      Text("Or continue with"),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Assetfolder(imageside: "assets/google.png"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
