import 'package:flutter/material.dart';
import 'package:shopy/ppage.dart';

class Homee extends StatefulWidget {
  @override
  _HomeeState createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Builder(
                builder: (context) => IconButton(
                  icon: Icon(
                    Icons.auto_awesome_mosaic_rounded,
                    color: Colors.black,
                    size: 25,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 20),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductPage()));
                    },
                    icon: Icon(
                      Icons.shopping_cart_sharp,
                      color: Colors.black,
                      size: 25,
                    )),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 50,
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200]),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        fillColor: Colors.grey[200],
                        filled: true,
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      onChanged: (val) {
                        setState(() {
                          String a = val;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 35, right: 30),
                    child: Text(
                      'Discover ',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 10,
                child: Container(
                  height: MediaQuery.of(context).size.height * .6,
                  child: CustomScrollView(
                    slivers: <Widget>[
                      SliverGrid(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200.0,
                          mainAxisSpacing: 0,
                          crossAxisSpacing: 0,
                          childAspectRatio: 0.8,
                        ),
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            return Container(
                              margin: EdgeInsets.only(
                                  left: 20, right: 20, top: 10, bottom: 10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 15,
                                        spreadRadius: 0,
                                        offset: Offset(5, 5)),
                                    BoxShadow(
                                        color: Colors.white,
                                        blurRadius: 15,
                                        spreadRadius: 0,
                                        offset: Offset(-5, -5))
                                  ]),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ProductPage()));
                                },
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        flex: 5,
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Container(
                                            child: Image.network(
                                              'https://miro.medium.com/max/8320/1*JDjLpVVKD7chukLWguInhA.jpeg',
                                              fit: BoxFit.cover,
                                            ),
                                            color: Colors.grey[200],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Expanded(
                                          flex: 1,
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                left: 5, right: 5),
                                            child: Text('Produxt a Name'),
                                          )),
                                      Expanded(
                                          child: Container(
                                        padding:
                                            EdgeInsets.only(left: 15, right: 5),
                                        child: Row(
                                          children: [
                                            Expanded(
                                                flex: 3, child: Text('4.9\km')),
                                            Expanded(child: Text('8/10')),
                                          ],
                                        ),
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          childCount: 40,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * .75,
                top: MediaQuery.of(context).size.height * .75),
            height: 60,
            width: 60,
            child: FloatingActionButton(
              backgroundColor: Colors.grey[200],
              onPressed: () async {},
              child: Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
          )
        ]));
  }
}
