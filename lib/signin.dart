import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff484bb7),
      body: Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.grid_view_sharp,
                      color: Colors.white, size: 35),
                  onPressed: () {
                    // Add your action here
                  },
                ),
                IconButton(
                  icon:
                      const Icon(Icons.settings, color: Colors.white, size: 39),
                  onPressed: () {
                    // Add your action here
                  },
                ),
              ],
            ),
            const Image(
                image: AssetImage(
                    '/Users/mac/Documents/assignmentsflutter/bank/assets/images/Screenshot 2024-04-02 at 4.17.58 PM.png')),
            RichText(
              text: const TextSpan(
                text: 'Banking',
                style: TextStyle(color: Colors.white, fontSize: 30),
                children: [
                  TextSpan(
                    text: ' App',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(height: 50),
            Container(
              height: 5,
              color: Colors.lightBlue.shade300,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: Column(children: [
                        Container(
                          padding: const EdgeInsets.all(20.0),
                          child: TextField(
                            // controller: email,
                            decoration: decoration(
                              'Your Name',
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20.0),
                          child: TextField(
                            // controller: email,
                            decoration: decoration(
                              'Your Email',
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20.0),
                          child: TextField(
                            // controller: email,
                            decoration: decoration(
                              'Your Password',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          onPressed: () {
                            // Add your action here
                          },
                          color: Colors.blue,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 20.0),
                            child: Text(
                              'Sign In',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextButton(
                          onPressed: () {
                            // Add your action here
                          },
                          child: RichText(
                            text: const TextSpan(
                              text: 'New here?',
                              style: TextStyle(color: Color(0xFFb2b7bd)),
                              children: [
                                TextSpan(
                                  text: ' Create an account',
                                  style: TextStyle(
                                      color: Colors.lightBlue,
                                      ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration decoration(String label) {
    return InputDecoration(
      hintText: label,
      contentPadding:
          const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
      hintStyle: const TextStyle(
        color: Color(0xFFb2b7bd),
        fontSize: 17,
      ),
      // prefixIcon: icon,
      // prefixIconColor: Colors.amber[400],
      // filled: true,
      // fillColor: Colors.white,
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xff484bb7), width: 2.0),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
          bottomLeft: Radius.circular(8.0),
          bottomRight: Radius.circular(8.0),
        ),
      ),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xff484bb7), width: 2.0),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
          bottomLeft: Radius.circular(8.0),
          bottomRight: Radius.circular(8.0),
        ),
      ),
    );
  }
}
      // backgroundColor: Colors.indigo.shade600,
    //  appBar: AppBar(
    //       leading: const Padding(
    //         padding: EdgeInsets.all(15.0), // Add padding to the leading widget
    //         child: Icon(Icons.grid_view_sharp, color: Colors.white, size: 35),
    //       ),
    //       actions: const [
    //         Padding(
    //           padding: EdgeInsets.all(15.0), // Add padding to the actions widget
    //           child: Icon(Icons.settings, color: Colors.white, size: 35),
    //         ),
    //       ],
    //       backgroundColor: Colors.indigo.shade600,
    //     ),
        