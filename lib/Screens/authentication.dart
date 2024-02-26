import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Functions/colors.dart';
import '../Widgets/loginbutton.dart';
import '../Widgets/textfieldform.dart';

class Authentication_Screen extends StatefulWidget {
  const Authentication_Screen({super.key});

  @override
  State<Authentication_Screen> createState() => _Authentication_ScreenState();
}

class _Authentication_ScreenState extends State<Authentication_Screen> {
  @override
  final GlobalKey<FormState> loginform = GlobalKey();
  String email="";
  String pswd="";
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bgd,
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 150,),
              Container(
                child: Text("SCANFLOW",style:GoogleFonts.signikaNegative(
                    fontSize: 40, color: Palette.main, height: 0.99,fontWeight: FontWeight.w700),),
              ),
              const SizedBox(height: 75,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                child: Form(
                    key: loginform,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 10,),
                        TextFieldForm2(
                          icon: Icon(Icons.email_outlined,color: Palette.textd,),
                            obscuretext:false,
                            hintText:"EMAIL" ,
                            validatefunction:(input) {
                              if (input == null || input.isEmpty|| input.contains("@")==false) {
                                return 'Please enter a valid Email';
                              }  else {
                                email = input;
                              }
                              return null;
                            }),
                        const SizedBox(height: 20,),
                        TextFieldForm2(
                            icon: Icon(Icons.lock_outline_rounded,color: Palette.textd,),
                            obscuretext: true,
                            hintText:"PASSWORD" ,
                            validatefunction:(input) {
                              if (input == null || input.isEmpty || input.length<5) {
                                return 'Please enter a valid password';
                              } else {
                                pswd = input;
                              }
                              return null;
                            }),
                        SizedBox(height: 10,),

                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(child: Container()),
                            // ButtonText(text: "Back", onTap: (){ Navigator.of(context).pop();}),
                            SizedBox(width: 10,),
                            LoginButton(onTap: (){
                              if(loginform.currentState!.validate()){
                              //   TODO: LOGIN FUNCTION HERE
                              }

                            },text:Text("Login",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.white),),backgroundColor:Palette.main,),
                            SizedBox(width: 5,),

                          ],

                        ),
                        SizedBox(height: 20,),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
