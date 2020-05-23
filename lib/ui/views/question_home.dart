import 'package:flutter/material.dart';
import 'package:quiz_tec_demo/ui/shared/widgets_utils.dart';
import 'package:quiz_tec_demo/ui/views/question_first.dart';

class QuestionHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return QuestionHomeState();
  }
}
//YA NO SE USA
class QuestionHomeState extends State<QuestionHome>{//YA NO SE USA
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplicacion Estres ITM"),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
          _createHeader(),
          _createDrawerItem(icon: Icons.bookmark_border, text: "Cuestionarios",onTap: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=> QuestionHome()))),
          _createDrawerItem(icon: Icons.contacts, text: 'Contactos',onTap:(){}),

          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(15.0),
          child: Column(  
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              height: 50.0,
              color: Colors.green,
              onPressed: startQuiz,
              child: Text("Cuestionario 1",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white
                ),
              )
            )
          ],
        ),
      ),
  );
}

Widget _createHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image:  AssetImage('assets/itm.png')
        )
      ),
      child: Stack(children: <Widget>[
        Positioned(
          bottom: 12.0,
          left: 16.0,
          child: Text("ITMexicali",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w500)
          )
        ),
      ]
    )
  );
}

  Widget _createDrawerItem({IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }

  void startQuiz() {
    setState(() {
    Navigator.push(context, new MaterialPageRoute(builder: (context)=> QuestionFirst()));
    });
  }
}

