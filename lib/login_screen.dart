import 'package:flutter/material.dart';
import 'package:flutter_example/idiots.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Container(
                color: Colors.deepPurple,
                height: MediaQuery.of(context).size.height/3,
                width: double.infinity,
                child: Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image(
                      image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Facebook_icon.svg/2048px-Facebook_icon.svg.png'
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.grey[200],
                  height: MediaQuery.of(context).size.height,
                 width: double.infinity,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top:100),
            height: MediaQuery.of(context).size.height/1.5,
            width: MediaQuery.of(context).size.width/1.2,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children:  const [
                       Text('WOW',style: TextStyle(fontSize: 25,color: Colors.blueAccent,fontWeight: FontWeight.bold),),
                       SizedBox(height: 20,),
                       SizedBox(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'User Name',
                            prefixIcon: Icon(Icons.person,size: 30,color: Colors.black,),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey,width: 2),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      SizedBox(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            prefixIcon: Icon(Icons.mail,size: 30,color: Colors.black,),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey,width: 2),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      SizedBox(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.security_rounded,size: 30,color: Colors.black,),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey,width: 2),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: (){
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Fuck You Mai Bich 😍 ',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                          content: Container(
                            height: 300,
                            width: double.infinity,
                            child: Image(
                              image: NetworkImage('https://z-p3-scontent.fpnh5-2.fna.fbcdn.net/v/t39.30808-6/269839754_743342100391121_1753593122633821555_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=174925&_nc_eui2=AeG8lU3wcJf4t4IRtnUHo3DYeAyCSQMhdzd4DIJJAyF3N7p5b5m2O_JrDgbc2TgrZfEK2glnWOCpqcF9JAenWbY_&_nc_ohc=c8w_dH5ji9YAX9pJsQ6&_nc_zt=23&_nc_ht=z-p3-scontent.fpnh5-2.fna&oh=00_AT_Vi4RX02Kyx_8tTebX1V08uPRkJxSzZKDFJdicf-5WnQ&oe=62EB4E44'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Cancel'),
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>MaiBich()));
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text('Login',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
