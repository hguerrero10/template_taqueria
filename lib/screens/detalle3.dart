import 'package:flutter/material.dart';
import 'package:flutter_foodybite/screens/detalle_entrega.dart';

class DetalleForm3 extends StatefulWidget {
  _DetalleForm3State createState() => _DetalleForm3State();
}

class _DetalleForm3State extends State<DetalleForm3> {

  int _counter = 1;
  int _counterTotal = 80;
  int result;

  void _increase() {
    setState(() {
      _counter++;
      result = _counterTotal * _counter;
    });
  }

  void _decrease() {
    setState(() {
      _counter--;
       result =  result - _counterTotal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Detalles'),
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: BackButton(
            color: Colors.grey[600],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 32.0, top: 16),
            child: Container(
              height: 50,
              width: 50,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(205, 92, 92, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      height: 22,
                      width: 22,
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.shopping_cart),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
         child: Column(
        children: [
          Image.asset(
            'assets/tacos-al-pastor.jpg',
            height: 300,
            width: 400,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            width: 130,
            decoration: BoxDecoration(
              color: Color.fromRGBO(205, 92, 92, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: _decrease,
                    child: Icon(
                      Icons.remove,
                      size: 28,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    _counter.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  GestureDetector(
                    onTap: _increase,
                    child: Icon(
                      Icons.add,
                      size: 28,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 200,
                      child: Text(
                        'Tacos al pastor',
                        style: TextStyle(
                          fontSize: 22, 
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '\$ ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(205, 92, 92, 1),
                          ),
                        ),
                        TextSpan(
                          text: result != null ? result.toString() + '.00' : '80.00',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  children: [
                    Text(
                      '',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      '',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      '',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Detalles',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
   
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Text(
                  'Trompo, Bisteck, Cebolla',
                  style: TextStyle(fontSize: 16, color: Colors.grey[400]),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        gradient: LinearGradient(colors: [
                            Color.fromRGBO(205, 92, 92, 1),
                           Color.fromRGBO(205, 92, 92, 1),
                        ])),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                     
                        Container(
                            height: 50,
                            width: 10,
                                child: Icon(
                                Icons.credit_card,
                                color: Colors.white,
                              ),
                             
                            ),
                    
                          
                    
                          SizedBox(width: 30),
                          Text(
                            'Comprar con \ntarjeta',
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          )
                        ])),

                                 onTap: () {
                                 Navigator.of(context).push(MaterialPageRoute(builder: (context) { return DetalleEntrega();}));
                              },
              ),
        
              
              SizedBox(height: 20)
            ],
          )
        ],
    )
        ),
      ),

    );
  }
  Widget divider() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
    child: Container(
      width: 0.8,
      color: Colors.black,
    ),
  );
}
}
