import 'package:flutter/material.dart';

class Ledger extends StatefulWidget {
  @override
  _LedgerState createState() => _LedgerState();
}

class _LedgerState extends State<Ledger> {
  @override
  Widget build(BuildContext context) {
    Widget _addSmallImageWidget(
        String image, String text, int size, int width) {
      return Stack(children: <Widget>[
        GestureDetector(
            onTap: () {},
            child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                    height: MediaQuery.of(context).size.height * size / 10,
                    width: MediaQuery.of(context).size.width * width / 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.cover, image: NetworkImage(image))),
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(bottom: 30.0, left: 30),
                        child: Text(text,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)))))),
      ]);
    }

    Widget _horizontalImage(List<String> image, List<String> text,
        List<int> height, List<int> width) {
      return Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0),
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              for (int i = 0; i < image.length; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Container(
                    // padding: const EdgeInsets.all(20),
                    child: _addSmallImageWidget(
                        image[i], text[i], height[i], width[i]),
                  ),
                )
            ],
          ));
    }

    Widget _iconWithRounded() {
      return Padding(
        padding: EdgeInsets.only(right:20),
        child: Container(
          height: 50.0,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.indigo.shade900
          ),
          child: Icon(Icons.ring_volume,color: Colors.white,)));
    }

    Widget _recentActivities(){
      return Padding(padding: EdgeInsets.only(top:3,bottom: 3),
      child:Row(
               children: <Widget>[
                 _iconWithRounded(),
                Expanded(
                  child: Text(
                    "John",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                Text(
                    '''40,0000''',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
              ],
            ));
    }
    return Scaffold(
        body: Container(
      color: Colors.indigo.shade700,
      child: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Bank Banktut",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                Icon(
                  Icons.ring_volume,
                  color: Colors.white,
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'Your Card',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            _horizontalImage([
              'https://moneymint.com/wp-content/uploads/2020/01/HSBC-Visa-Platinum-Credit-Card-Review-2.png',
              'https://moneymint.com/wp-content/uploads/2020/01/HSBC-Visa-Platinum-Credit-Card-Review-2.png',
            ], [
              '',
              '',
            ], [
              5,
              5
            ], [
              8,
              8
            ]),
            Padding(padding: EdgeInsets.all(10),
            child:Row(
              children: [
                _iconWithRounded(),
                _iconWithRounded(),_iconWithRounded(),_iconWithRounded()],
            )),

            Padding(padding: EdgeInsets.all(10),
            child:Row(
               children: <Widget>[
                Expanded(
                  child: Text(
                    "Recent activities",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                Icon(
                  Icons.arrow_right,
                  color: Colors.white,
                )
              ],
            )),
             _recentActivities(),
             _recentActivities(),
             _recentActivities(),
             _recentActivities(),
             _recentActivities(),
             _recentActivities(),
             _recentActivities(),
             _recentActivities(),
             _recentActivities(),

            
          ],
        ),
      ),
    ));
  }
}
