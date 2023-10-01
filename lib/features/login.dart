import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample/router/appRoutesEnum.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _LoginView();
  }
}

class _LoginView extends StatelessWidget {
  const _LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text('Login'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Padding(
            //   padding: const EdgeInsets.only(top: 30.0),
            //   child: Center(
            //     child: Container(
            //       width: 120,
            //       height: 120,
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(40),
            //           border: Border.all(color: Colors.blueGrey)),
            //       child: Image.asset('assets/logo.png'),
            //     ),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 35),
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: TextFormField(
                                // validator: MultiValidator([
                                //   RequiredValidator(
                                //       errorText: 'Enter email address'),
                                //   EmailValidator(
                                //       errorText:
                                //       'Please correct email filled'),
                                // ]),
                                decoration: InputDecoration(
                                    hintText: 'Mobile Number',
                                    labelText: 'Mobile Number',
                                    prefixIcon: Icon(
                                      Icons.phone_android_outlined,
                                      //color: Colors.green,
                                    ),
                                    errorStyle: TextStyle(fontSize: 18.0),
                                    border: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.red),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(9.0)))))),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextFormField(
                            // validator: MultiValidator([
                            //   RequiredValidator(
                            //       errorText: 'Please enter Password'),
                            //   MinLengthValidator(8,
                            //       errorText:
                            //       'Password must be atlist 8 digit'),
                            //   PatternValidator(r'(?=.*?[#!@$%^&*-])',
                            //       errorText:
                            //       'Password must be atlist one special character')
                            // ]),
                            decoration: InputDecoration(
                              hintText: 'Password',
                              labelText: 'Password',
                              prefixIcon: Icon(
                                Icons.key,
                                color: Colors.green,
                              ),
                              errorStyle: TextStyle(fontSize: 18.0),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(9.0))),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(180, 0, 0, 0),
                          child: Text('Forget Password!'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: Container(
                            child: ElevatedButton(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              ),
                              onPressed: () {
                                // if (_formkey.currentState!.validate()) {
                                //   print('form submiitted');
                                // }
                              },
                              // style: RoundedRectangleBorder(
                              //     borderRadius: BorderRadius.circular(30)),
                              // child: Colors.blue,
                            ),
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                          ),
                        ),
                        Center(
                          child: Container(
                            padding: EdgeInsets.only(top: 50),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'or ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black26,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    context.go(AppRoutes.register.routePath);
                                  },
                                  child: Text(
                                    'Create Account',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.lightBlue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ])),
            ),
          ],
        ),
      ),
    );
  }
}