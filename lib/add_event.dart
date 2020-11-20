import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_flutter/Animation/FadeAnimation.dart';
import 'package:hello_flutter/bottom_navigation_view/fitness_app_home_screen.dart';
import 'package:hello_flutter/controllers/currentUserState.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AddEvent extends StatefulWidget {
  const AddEvent({Key key, this.animationController}) : super(key: key);
  final AnimationController animationController;

  @override
  _AddEventState createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  int iduser;
  final currentUserController = Get.put(CurrentUserController());

  @override
  void initState() {
    iduser = currentUserController.currentUser.id;
    super.initState();
  }

  String nomEvenement;
  String typeEvenement;
  String descriptionEvenement;
  String dateDebutEvenement;
  String dateFinEvenement;
  String photoEvenement;
  String lieuxEvenement;
  String infoline;
  int difficulteEvenement;
  int prixEvenement;
  int nbplaceEvenement;

  addEvent() async {
    print(nomEvenement);
    final response =
        await http.post("http://192.168.1.5:1337/evenement/add", body: {
      "nom_evenement": this.nomEvenement,
      "type_evenement": this.typeEvenement,
      "description_evenement": this.descriptionEvenement,
//      "date_debut_evenement": this.dateDebutEvenement,
      //    "date_fin_evenement": this.dateFinEvenement,
      //   "photo_evenement": this.photoEvenement,
      "lieux_evenement": this.lieuxEvenement,
      "infoline": this.infoline.toString(),
      "difficulte_evenement": this.difficulteEvenement.toString(),
      "prix_evenement": this.prixEvenement.toString(),
      "id_user": currentUserController.currentUser.id.toString(),
      "nbplace_evenement": nbplaceEvenement.toString(),
    });

    final data = jsonDecode(response.body);

    if (data == "Check your data please !") {
      print("Check your data please !");
    } else {
      print("successfully adding event");
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => FitnessAppHomeScreen(),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 275,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/camp4.jpg'),
                          fit: BoxFit.fill)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: FadeAnimation(
                            1.6,
                            Container(
                              margin: EdgeInsets.only(top: 50),
                              child: Center(
                                child: Text(
                                  "Add Event",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(
                          1.8,
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, .2),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[100]))),
                                  child: TextField(
                                    onChanged: (nomEvenement) {
                                      this.nomEvenement = nomEvenement;
                                    },
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Event Name",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[100]))),
                                  child: TextField(
                                    onChanged: (typeEvenement) {
                                      this.typeEvenement = typeEvenement;
                                    },
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Event Type",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[100]))),
                                  child: TextField(
                                    onChanged: (descriptionEvenement) {
                                      this.descriptionEvenement =
                                          descriptionEvenement;
                                    },
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Description",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextField(
                                    onChanged: (lieuxEvenement) {
                                      this.lieuxEvenement = lieuxEvenement;
                                    },
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "place of the event",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextField(
                                    onChanged: (nbplaceEvenement) {
                                      this.nbplaceEvenement =
                                          int.parse(nbplaceEvenement);
                                    },
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "places Number",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextField(
                                    onChanged: (prixEvenement) {
                                      this.prixEvenement =
                                          int.parse(prixEvenement);
                                    },
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Event Price",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextField(
                                    onChanged: (difficulteEvenement) {
                                      this.difficulteEvenement =
                                          int.parse(difficulteEvenement);
                                    },
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Event difficalty",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextField(
                                    onChanged: (infoline) {
                                      this.infoline = infoline;
                                    },
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Phone Number",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      FadeAnimation(
                          2,
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [
                                  Color.fromRGBO(143, 148, 251, 1),
                                  Color.fromRGBO(143, 148, 251, .6),
                                ])),
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  addEvent();
                                },
                                child: Text(
                                  "Add",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
