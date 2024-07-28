import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  bool _visible = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _visible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                AnimatedOpacity(
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,
                  opacity: _visible ? 1.0 : 0.0,
                  child: Container(
                    height: 320,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/assets/background.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 30,
                          width: 80,
                          height: 200,
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('lib/assets/light-1.png')),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 140,
                          width: 80,
                          height: 150,
                          child: Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('lib/assets/light-2.png'))),
                          ),
                        ),
                        Positioned(
                          right: 40,
                          top: 40,
                          width: 40,
                          height: 150,
                          child: Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('lib/assets/clock.png'))),
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width,
                          child: Container(
                            margin: const EdgeInsets.only(top: 100),
                            child: const Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                AnimatedOpacity(
                    duration: const Duration(seconds: 2),
                    curve: Curves.easeInOut,
                    opacity: _visible ? 1.0 : 0.0,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(143, 148, 151, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10),
                                )
                              ]),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.grey))),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Email',
                                    hintStyle: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                child: const TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Password',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    suffixIcon:
                                        Icon(Icons.remove_red_eye_outlined),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(colors: [
                              Color.fromRGBO(143, 148, 151, .2),
                              Color.fromRGBO(143, 148, 151, .2),
                            ]),
                          ),
                          child: const Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Divider(
                                color: Color.fromRGBO(143, 148, 151, .2),
                                height: 36,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                'Forget Password?',
                                style: TextStyle(
                                    color: Color.fromRGBO(143, 148, 151, .6),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: Color.fromRGBO(143, 148, 151, .2),
                                height: 36,
                              ),
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.facebook_outlined,
                                size: 50,
                                color: Colors.blueAccent,
                              ), // Replace with Google icon
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.apple_outlined,
                                size: 50,
                                color: Colors.black,
                              ), // Replace with Apple icon
                            ),
                          ],
                        ),

                        const SizedBox(
                            height:
                                8), // Add some space between the icons and the text
                        const Text(
                          "Don't have an account? SignUp",
                          style: TextStyle(
                            color: Color.fromRGBO(143, 148, 151, .6),
                            fontSize: 13,
                          ),
                        ),
                      ]
                      ),
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
