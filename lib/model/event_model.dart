class EventModel {
  int idEvenement;
  String nomEvenement;
  String typeEvenement;
  String dateDebutEvenement;
  String dateFinEvenement;
  String distanceEvenement;
  String photoEvenement;
  String lieuxEvenement;
  String infoline;
  int difficulteEvenement;
  int prixEvenement;
  int idUser;
  String descriptionEvenement;
  int nbplaceEvenement;

  EventModel(
      {this.idEvenement,
      this.nomEvenement,
      this.typeEvenement,
      this.dateDebutEvenement,
      this.dateFinEvenement,
      this.distanceEvenement,
      this.photoEvenement,
      this.lieuxEvenement,
      this.infoline,
      this.difficulteEvenement,
      this.prixEvenement,
      this.idUser,
      this.descriptionEvenement,
      this.nbplaceEvenement});

  EventModel.fromJson(dynamic json) {
    idEvenement = json['id_evenement'];
    nomEvenement = json['nom_evenement'];
    typeEvenement = json['type_evenement'];
    dateDebutEvenement = json['date_debut_evenement'];
    dateFinEvenement = json['date_fin_evenement'];
    distanceEvenement = json['distance_evenement'];
    photoEvenement = 'images/camp4.jpg';
    lieuxEvenement = json['lieux_evenement'];
    infoline = json['infoline'];
    difficulteEvenement = json['difficulte_evenement'];
    prixEvenement = json['prix_evenement'];
    idUser = json['id_user'];
    descriptionEvenement = json['description_evenement'];
    nbplaceEvenement = json['nbplace_evenement'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_evenement'] = this.idEvenement;
    data['nom_evenement'] = this.nomEvenement;
    data['type_evenement'] = this.typeEvenement;
    data['date_debut_evenement'] = this.dateDebutEvenement;
    data['date_fin_evenement'] = this.dateFinEvenement;
    data['distance_evenement'] = this.distanceEvenement;
    data['photo_evenement'] = this.photoEvenement;
    data['lieux_evenement'] = this.lieuxEvenement;
    data['infoline'] = this.infoline;
    data['difficulte_evenement'] = this.difficulteEvenement;
    data['prix_evenement'] = this.prixEvenement;
    data['id_user'] = this.idUser;
    data['description_evenement'] = this.descriptionEvenement;
    data['nbplace_evenement'] = this.nbplaceEvenement;
    return data;
  }
}
