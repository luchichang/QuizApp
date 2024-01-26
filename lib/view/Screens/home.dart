import 'package:flutter/material.dart';
import 'package:quiz_app/Utils/utils.dart';
import 'package:quiz_app/main.dart';

class Home extends StatelessWidget {
  Utils utils = Utils();
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    final height = mq.height;
    final width = mq.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: height * 0.025),
      child: Column(
        children: <Widget>[
          utils.spacerSizedBox(height: height * 0.025),
          Container(
            height: height * 0.15,
            width: width,
            padding: const EdgeInsets.all(20.0),
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
              color: Color(0xffFEDFAE),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    Text(
                      'Progress!!',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      'Volume Part 3',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.075,
                  width: width * 0.15,
                  child: CircularProgressIndicator(
                    color: Colors.orange,
                    backgroundColor: Colors.orange[300],
                    strokeWidth: 6,
                    value: 0.7,
                  ),
                )
              ],
            ),
          ),
          utils.spacerSizedBox(height: height * 0.025),
          Container(
            height: height * 0.3,
            width: width,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Color(0xffE4D7FF),
            ),
            child: Stack(children: <Widget>[
              Positioned(
                bottom: 0,
                left: 0,
                top: 0,
                right: 0,
                child: Image.asset(
                  'assets/images/discountIllustration.png',
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Coupon',
                      style: TextStyle(
                        color: Colors.purple[200],
                        fontSize: 18.0,
                      ),
                    ),
                    utils.spacerSizedBox(height: height * 0.001),
                    const Text(
                      'Get 50% Discount for Prime Subscription',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 22.0,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          utils.spacerSizedBox(height: height * 0.025),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'LeaderBoard of Level 3',
              // textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 5.0),
              color: const Color(0xffE4D7FF),
              child: ListView(
                children: [
                  _listItem(context, 0, 998,
                      'https://randomuser.me/api/portraits/women/40.jpg'),
                  _listItem(context, 1, 976,
                      'https://randomuser.me/api/portraits/men/61.jpg'),
                ],
              ),
            ),
          )
          //
        ],
      ),
    );
  }

  Widget _listItem(BuildContext context, int index, int point, String imgPath) {
    return 1 > 0
        ? Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${index + 1}',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  utils.spacerSizedBox(width: 20.0),
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    height: 70.0,
                    width: 70.0,
                    clipBehavior: Clip.antiAlias,
                    child: Image.network(imgPath),
                  ),
                  utils.spacerSizedBox(width: 50.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Name',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        '$point Points',
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 18.0),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        : ListTile(
            leading: SizedBox(
              width: 230.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '${index + 1}',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100.0))),
                    child: Image.network(imgPath),
                  ),
                ],
              ),
            ),
            title: Text(
              'Name 1',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            subtitle: Text('$point Points'),
          );
  }
}
