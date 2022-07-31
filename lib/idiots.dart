import 'package:flutter/material.dart';

class MaiBich extends StatefulWidget {
  const MaiBich({Key? key}) : super(key: key);

  @override
  State<MaiBich> createState() => _MaiBichState();
}

class _MaiBichState extends State<MaiBich> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text("Mai Pich"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 200,
              width: double.infinity,
              color: Colors.deepPurple,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20,top: 50),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50)
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Icon(Icons.settings,color: Colors.black,size: 30,),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Veha Want To Fuck Mai Bich",style: TextStyle(fontSize: 18),)
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
