import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PerfilForm extends StatefulWidget {
  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<PerfilForm> with SingleTickerProviderStateMixin {
  bool _status = true;
  final FocusNode myFocusNode = FocusNode();

  TextEditingController _nombre = new TextEditingController();
  TextEditingController _correo = new TextEditingController();
  TextEditingController _numero = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _nombre = TextEditingController(text: 'Grupo TLK');
    _correo = TextEditingController(text: 'gpotlk@gmail.com');
    _numero = TextEditingController(text: '8187773131');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(205, 92, 92, 1),
        title: Text(
          'Perfil',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.white), onPressed: ()=> Navigator.pop(context))
      ),
      body: Container(
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 250,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Stack(fit: StackFit.loose, children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 155,
                              height: 155,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: ExactAssetImage(
                                    'assets/user-defauld.png'
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              )
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 95, right: 100),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: Color.fromRGBO(205, 92, 92, 1),
                                radius: 25,
                                child: Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ),
                      ]),
                    )
                  ],
                ),
              ),
              Container(
                color: Color(0xffFFFFFF),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 25, right: 25, top: 9),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Informacion Personal',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                _status ? _getEditIcon() : Container(),
                              ],
                            )
                          ],
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25, right: 25, top: 25),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    'Nombre',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ),
                        Padding(
                          padding: EdgeInsets.only( left: 25, right: 25, top: 2),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Flexible(
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: "Escriba su nombre",
                                  ),
                                  enabled: !_status,
                                  autofocus: !_status,
                                  controller: _nombre,
                                ),
                              ),
                            ],
                          )
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25, right: 25, top: 25),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    'Correo',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25, right: 25, top: 2),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Flexible(
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: "gpotlk@gmail.com"
                                  ),
                                  enabled: !_status,
                                  controller: _correo,
                                ),
                              ),
                            ],
                          )
                        ),
                        Padding(
                          padding: EdgeInsets.only( left: 25, right: 25, top: 25),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    'Celular',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25, right: 25, top: 2),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Flexible(
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: "Escriba su celular"
                                  ),
                                  enabled: !_status,
                                  controller: _numero,
                                ),
                              ),
                            ],
                          )
                        ),
                      !_status ? _getActionButtons() : Container(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myFocusNode.dispose();
    super.dispose();
  }

  Widget _getActionButtons() {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25, top: 45),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 10),
              child: Container(
                child: RaisedButton(
                  child: Text("Guardar"),
                  textColor: Colors.white,
                  color: Color.fromRGBO(44, 197, 94, 1),
                  onPressed: () {
                    setState(() {
                      _status = true;
                      FocusScope.of(context).requestFocus(FocusNode());
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                )
              ),
            ),
            flex: 2,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                child: RaisedButton(
                  child: Text("Cancelar"),
                  textColor: Colors.white,
                  color: Colors.red[600],
                  onPressed: () {
                    setState(() {
                      _status = true;
                      FocusScope.of(context).requestFocus(FocusNode());
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                )
              ),
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }

  Widget _getEditIcon() {
    return GestureDetector(
      child: CircleAvatar(
        backgroundColor: Color.fromRGBO(205, 92, 92, 1),
        radius: 14,
        child: Icon(
          Icons.edit,
          color: Colors.white,
          size: 16,
        ),
      ),
      onTap: () {
        setState(() {
          _status = false;
        });
      },
    );
  }
}
