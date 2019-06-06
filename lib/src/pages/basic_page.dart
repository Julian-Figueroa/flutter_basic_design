import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final _titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final _subtitleStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _createImage(),
            _createTitle(),
            _createActions(),
            _createTextArea(),
          ],
        ),
      ),
    );
  }

  Widget _createImage() {
    return Image(
      image: NetworkImage(
          'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg'),
          fit: BoxFit.cover,
      // alignment: Alignment.center,
    );
  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 20.0,
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Dead road',
                    style: _titleStyle,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Dead road with a huge mountain',
                    style: _subtitleStyle,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _action(Icons.call, 'CALL'),
        _action(Icons.near_me, 'ROUTE'),
        _action(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _action(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }

  Widget _createTextArea() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Enim nisi velit laboris commodo officia aliqua sint. Exercitation deserunt veniam id veniam exercitation. Minim commodo anim laborum aute consequat proident eiusmod quis ut. Elit dolore et eiusmod pariatur ea mollit velit non irure non ullamco ut sint elit. Minim velit fugiat laborum ad aute magna cupidatat veniam sunt anim officia ipsum Lorem. Anim excepteur aliqua eu magna magna ullamco do ullamco. Reprehenderit adipisicing magna ea magna irure nisi eu cillum esse eiusmod duis et ipsum.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
