import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //Imagen
        Image(image: AssetImage('assets/landscape.png')),

        //Titulo
        Title(),

        //Button Section
        ButtonSection(),

        //Description
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              'Sunt aute aliqua minim laborum eu ipsum elit dolore duis enim fugiat irure. Nostrud occaecat nisi nostrud enim dolore ea veniam et minim. Enim nulla deserunt pariatur quis incididunt elit cupidatat anim officia in officia.',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.justify,
            ))
      ],
    ));
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Deschine Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45, fontSize: 20),
              )
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(
            icon: Icons.call,
            text: 'CALL',
          ),
          CustomButton(
            icon: Icons.near_me,
            text: 'ROUTE',
          ),
          CustomButton(
            icon: Icons.share,
            text: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          this.icon,
          color: Colors.blue,
        ),
        Text(this.text,
            style: TextStyle(
              color: Colors.blue,
            ))
      ],
    );
  }
}
