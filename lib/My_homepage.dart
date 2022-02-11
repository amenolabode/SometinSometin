import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext Context, int position) {
          Widget content = Container();
          if (position == 0) {
            content = _theView();
          } else if (position == 1) {
            content = _discountView();
          } else if (position == 2) {
            content = _moreView();
          } else {}
          return _theView();
        },
      ),
    );
  }
}

class _theView extends StatelessWidget {
  const _theView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Total Gift Voucher Value",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "GHS 10.00",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "BUY GIFT VOUCHER",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              "images/topImage.jpg",
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}

class _discountView extends StatelessWidget {
  const _discountView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text("Hello"),
      ),
    );
  }
}

class _moreView extends StatelessWidget {
  const _moreView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text("Hello"),
      ),
    );
  }
}

/*
Container for BG
Container(
            padding: const EdgeInsets.only(top: 24),
            child: Container(
              height: 100,
              width: double.infinity * 0.5,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 2,
                      spreadRadius: 2)
                ],
              ),
              child: _theView(),
            ),
          );
          */