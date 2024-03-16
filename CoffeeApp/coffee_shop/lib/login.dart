import 'package:coffee_shop/home_screen.dart';
import 'package:coffee_shop/taskbar/taskmain.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

//GLOBAL KEYS
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//Save all data in controllers
final TextEditingController _nameController = TextEditingController();
final FocusNode _nameNode = FocusNode();

final TextEditingController _emailController = TextEditingController();
final FocusNode _emailNode = FocusNode();

//Save all data in controllers
final TextEditingController _passController = TextEditingController();
final FocusNode _passNode = FocusNode();

final TextEditingController _confirmPassController = TextEditingController();
final FocusNode _confirmPassNode = FocusNode();

//Register function to add credential
void registerCredential() {
  if (_nameController.text.isEmpty ||
      _emailController.text.isEmpty ||
      _passController.text.isEmpty ||
      _confirmPassController.text.isEmpty) {
    _formKey.currentState?.validate();
  }else{
    _nameController.clear();
    _emailController.clear();
    _passController.clear();
    _confirmPassController.clear();
  }
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              opacity: 0.6,
              image: AssetImage(
                'assets/cofee.jpg',
              ), // Replace this with your image path
              fit: BoxFit.cover,
            ),
          ),
          child: const HomeScreen()),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          TabBar(
            isScrollable: true,
            controller: _tabController,
            indicatorColor: Colors.brown,
            labelColor: Colors.brown,
            unselectedLabelColor: Colors.grey,
            tabs: const [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 25.0), // Adjust the horizontal spacing
                child: Tab(
                  child: Text(
                    "SignIn",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 35.0), // Adjust the horizontal spacing
                child: Tab(
                  child: Text(
                    "SignUp",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                SingleChildScrollView(child: SignIn()),
                SingleChildScrollView(child: SignUp())
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
           
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    // controller: _emailController,
                    // focusNode: _emailNode,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        hintText: "EmailAddress",
                        suffixIcon: Icon(Icons.email_rounded),
                        suffixIconColor: Color.fromARGB(255, 70, 56, 50),
                        enabled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(width: 1, color: Colors.brown)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(width: 1.5, color: Colors.brown))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "*all fields are fill mandatory";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    // controller: _passController,
                    // focusNode: _passNode,
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        hintText: "Password",
                        suffixIcon: Icon(Icons.password_rounded),
                        suffixIconColor: Color.fromARGB(255, 70, 56, 50),
                        enabled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(width: 1, color: Colors.brown)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(width: 1.5, color: Colors.brown))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "*all fields are fill mandatory";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Colors.brown),
                          minimumSize: MaterialStatePropertyAll(Size(300, 60))),
                      onPressed: () {
                        // registerCredential();
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const TaskMain()));
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 28, color: Colors.white),
                      )),
                ],
              ),
            )),
      ],
    );
  }
}

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _nameController,
                    focusNode: _nameNode,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        hintText: "Enter Name",
                        suffixIcon: Icon(Icons.account_circle_rounded),
                        suffixIconColor: Color.fromARGB(255, 70, 56, 50),
                        enabled: true,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide:
                                BorderSide(width: 1, color: Colors.brown)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide:
                                BorderSide(width: 1.5, color: Colors.brown))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "*all fields are fill mandatory";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _emailController,
                    focusNode: _emailNode,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        hintText: "EmailAddress",
                        suffixIcon: Icon(Icons.email_rounded),
                        suffixIconColor: Color.fromARGB(255, 70, 56, 50),
                        enabled: true,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide:
                                BorderSide(width: 1, color: Colors.brown)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide:
                                BorderSide(width: 1.5, color: Colors.brown))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "*all fields are fill mandatory";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _passController,
                    focusNode: _passNode,
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        hintText: "Password",
                        suffixIcon: Icon(Icons.password_rounded),
                        suffixIconColor: Color.fromARGB(255, 70, 56, 50),
                        enabled: true,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide:
                                BorderSide(width: 1, color: Colors.brown)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide:
                                BorderSide(width: 1.5, color: Colors.brown))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "*all fields are fill mandatory";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _confirmPassController,
                    focusNode: _confirmPassNode,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        hintText: "Confirm Password",
                        suffixIcon: Icon(Icons.password_rounded),
                        suffixIconColor: Color.fromARGB(255, 70, 56, 50),
                        enabled: true,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide:
                                BorderSide(width: 1, color: Colors.brown)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide:
                                BorderSide(width: 1.5, color: Colors.brown))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "*all fields are fill mandatory";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Colors.brown),
                          minimumSize: MaterialStatePropertyAll(Size(300, 60))),
                      onPressed: () {
                        registerCredential();
                      },
                      child: const Text(
                        "Submit",
                        style: TextStyle(fontSize: 28, color: Colors.white),
                      )),
                ],
              ),
            ))
      ],
    );
  }
}
