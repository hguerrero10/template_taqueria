import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class DetalleEntrega extends StatefulWidget {
  DetalleEntrega({Key key}) : super(key: key);

  @override
  _DetalleEntregaState createState() => _DetalleEntregaState();
}

class _DetalleEntregaState extends State<DetalleEntrega> {
  
  CountDownController _controller = CountDownController();
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(205, 92, 92, 1),
        title: Text(
          '',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.white), onPressed: ()=> Navigator.pop(context))
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            SizedBox(height: 15),

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 2,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        child: CircularCountDownTimer(
                          duration: 1000,
                          controller: _controller,
                          width: 80,
                          height: 80,
                          color: Colors.white,
                          fillColor: Color.fromRGBO(205, 92, 92, 1),
                          backgroundColor: null,
                          strokeWidth: 5.0,
                          textStyle: TextStyle(fontSize: 22.0, color: Colors.black, fontWeight: FontWeight.bold),
                          isReverse: true,
                          isTimerTextShown: true,
                          onComplete: ()  {
                             
                          },
                        )
                      ),
                      // Container(
                      //   child: CircularCountDownTimer(
                      //     duration: 90,
                      //     controller: _controller1,
                      //     width: 76,
                      //     height: 76,
                      //     color: Colors.white,
                      //     fillColor: Colors.red,
                      //     backgroundColor: null,
                      //     strokeWidth: 5.0,
                      //     textStyle: TextStyle(fontSize: 22.0, color: Colors.black, fontWeight: FontWeight.bold),
                      //     isReverse: false,
                      //     isTimerTextShown: true,

                      //     onComplete: ()  {

                                
                      //     },
                      //   )
                      // ),
                      // Container(
                      //   child: CircularCountDownTimer(
                      //     duration: 30,
                      //     controller: _controller,
                      //     width: 76,
                      //     height: 76,
                      //     color: Colors.white,
                      //     fillColor: Colors.red,
                      //     backgroundColor: null,
                      //     strokeWidth: 5.0,
                      //     textStyle: TextStyle(fontSize: 22.0, color: Colors.black, fontWeight: FontWeight.bold),
                      //     isReverse: false,
                      //     isTimerTextShown: false,

                      //     onComplete: ()  {

                                
                      //     },
                      //   )
                      // ),
                      // Container(
                      //   child: CircularCountDownTimer(
                      //     duration: 30,
                      //     controller: _controller,
                      //     width: 76,
                      //     height: 76,
                      //     color: Colors.white,
                      //     fillColor: Colors.red,
                      //     backgroundColor: null,
                      //     strokeWidth: 5.0,
                      //     textStyle: TextStyle(fontSize: 22.0, color: Colors.black, fontWeight: FontWeight.bold),
                      //     isReverse: false,
                      //     isTimerTextShown: false,

                      //     onComplete: ()  {

                                
                      //     },
                      //   )
                      // ),

                      Container(
                         padding: EdgeInsets.all(10),
                        width: 230,
                        child: Text(
                          'Tu orden ha sido recibida y pronto sera confirmada',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 10),
                       
                    ],
                  ),

                ],
              ),
            ),

            SizedBox(height: 20),

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 2,
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading:  Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage (
                          fit: BoxFit.fill,
                          image: AssetImage('assets/logos/logo t&t.jpg')
                        )
                      )    
                    ),
                    title: Text(
                      'T&T ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                      ),
                    ),
                    subtitle: Text('Carretera Ciudad Victoria-Monterrey'),
                  ),

                  Divider(),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[

                      SizedBox(width: 20),
                      Column(
                        children: <Widget>[
                          Container(
                            width: 190,
                            child: Text(
                              'Direccion de entrega',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          Container(
                            width: 190,
                            child: Text(
                              'Jesus Martinez Martinez #120',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      
                    ],
                  ),

                  Divider(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[

                      SizedBox(width: 20),
                      Column(
                        children: <Widget>[
                          Container(
                            width: 205,
                            child: Text(
                              'Metodo de pago',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.attach_money,
                                size: 16,
                              ),
                              Container(
                                width: 201,
                                child: Text(
                                  'Efectivo',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      
                    ],
                  ),

                  Divider(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[

                      SizedBox(width: 20),
                      Column(
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Tu pedido',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                         
                        ],
                      ),
                      
                    ],
                  ),

                  Row(
                    children: <Widget>[
                      SizedBox(width: 20),
                      Container(
                        child: Text(
                          '1 Producto',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(width: 200),
                       Container(
                        child: Image.asset(
                          'assets/food3.jpeg',
                          width: 45,
                          height: 45,
                        ),
                      )
                    ],
                  ),

                  Divider(),

                  Row(
                    children: <Widget>[
                          SizedBox(width: 20),
                      Container(
                        child: Text(
                          'Tu Cobro',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 205),
                       Container(
                        child: Text(
                          '\$30.00',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  // ListTile(
                  //   title: Text(
                  //     contenido,
                  //     style: TextStyle(   
                  //       fontSize: 15
                  //     ),
                  //   ),
                  // ),
                  // Card(
                  //   child: Image.asset(
                  //     publicacion,
                  //   ),
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: <Widget>[
                  //     FlatButton(
                  //       child: Text(
                  //         "Facebook",
                  //         style: TextStyle(
                  //           color: Color.fromRGBO(59, 89, 152, 1),
                  //           fontSize: 15
                  //         ) 
                  //       ),
                  //       onPressed: () {
                  //         _launchURL(link);
                  //       },
                  //     ),  
                  //   ],
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}