import 'package:flutter/material.dart';

class Direcciones extends StatefulWidget {
  Direcciones({Key key}) : super(key: key);

  @override
  _DireccionesState createState() => _DireccionesState();
}

class _DireccionesState extends State<Direcciones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black), onPressed: ()=> Navigator.pop(context)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            SizedBox(height: 20),
            Row(
              children: <Widget>[
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 230,
                  child: Text(
                    'Agregar o escoge una direccion',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 15),

            Container(
              
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 60,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 30,
                  ),
                  hintText: 'Ingresa una direccion',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(205, 92, 92, 1),
                    boxShadow: [
                      BoxShadow( ),
                    ],
                  ),
       
                width: 50,
                height: 50,
                  child: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(10),
              
                  child: Text(
                    'Activar la ubicacion actual',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),


              ],
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                SizedBox(width: 20),
                Column(
                  children: <Widget>[
                    Container(
                      width: 220,
                      child: Text(
                        'Direccion de entrega',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Container(
                      width: 220,
                      child: Text(
                        'Jesus Martinez Martinez #120',
                        style: TextStyle(
                          fontSize: 16,
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
      ),
    );
  }
}