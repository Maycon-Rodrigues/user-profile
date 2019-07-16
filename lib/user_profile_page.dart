import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  final height = MediaQuery.of(context).size.height;

    return Material(
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _text(
                    text: 'Profile',
                    color: Colors.grey[100],
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                  ),
                  FlatButton.icon(
                    onPressed: (){},
                    icon: Icon(Icons.edit),
                    label: Text('Edit'),
                  )
                ],
              ),
              SizedBox(height: 20),
              ClipOval(
                child: Image.asset('assets/FakeDP.jpeg',
                height: height*0.35,
                fit: BoxFit.cover,),
              ),
              SizedBox(height: 10),
              _text(
                text: 'Jhon Doe',
                color: Colors.grey,
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
              SizedBox(height: 5),
              _text(
                text: 'jhondoe@flutter.com',
                color: Colors.grey[400],
                fontSize: 18,
                fontWeight: FontWeight.w300
              ),
              SizedBox(height: 40),
              _row(),
              Row(
                children: <Widget>[
                  Icon(Icons.bookmark_border, color: Colors.green,),
                  Text('BIO:', style: TextStyle(color: Colors.green),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _text({String text, Color color,
    double fontSize, FontWeight fontWeight}){
      return Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight
        ),
      );
  }

  Widget _row(){
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: <Widget>[
          Icon(Icons.person_pin_circle, color: Colors.green,),
          Text('San Diego - CA', style: TextStyle(color: Colors.green),),
          Spacer(),
          Icon(Icons.phone_iphone, color: Colors.green,),
          Text('(800) 279-1455', style: TextStyle(color: Colors.green),)
        ],
      ),
    );
  }
}