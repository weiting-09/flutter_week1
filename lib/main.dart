//ctrl+alt+L 自動排版
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
//update
//加入main()
void main() {
  runApp(Myapp());
}

//stless建立靜態頁面 stful建立動態頁面
class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // floatingActionButton: FloatingActionButton(//button
        //   onPressed: () {
        //     //匿名函式
        //     setState(() {
        //       //update app state
        //       counter++;
        //     });
        //     print('on pressed');
        //   },
        //   child: Icon(Icons.add),
        // ),
        appBar: AppBar(
          title: Center(
            child: Text(
              'Flutter WEEK 1',
              style: TextStyle(
                fontSize: 35,
                color: Color(0xFF693DAF),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            //children後要加List[]
            const Gap(30),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/image.jpg'),
                radius: 130,
              ),
            ),
            const Gap(30),
            Text('Weiting', style: GoogleFonts.alkatra(fontSize: 45)),
            Container(color: Colors.black, height: 0.5, width: 250),
            const Gap(5),
            Text('NTUE CS', style: GoogleFonts.alikeAngular(fontSize: 30)),
            const Gap(50),
            Container(
              height: 65,
              width: 300,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 232, 219, 253),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: Container(child: Icon(Icons.email))),
                  Expanded(
                    child: Text('123456@gmail.com', style: TextStyle(fontSize: 20),),
                    flex: 4,
                  ),
                ],
              ),
            ),
            const Gap(20),
            Container(
              height: 65,
              width: 300,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 232, 219, 253),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: Container(child: Icon(Icons.phone))),
                  Expanded(
                    child: Text('0987654321', style: TextStyle(fontSize: 20)),
                    flex: 4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
