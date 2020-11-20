class ParticipantModel {
  int idParticipant;
  int idEvenement;
  int idUser;

  ParticipantModel({this.idParticipant, this.idEvenement, this.idUser});

  ParticipantModel.fromJson(dynamic json) {
    idParticipant = json['id_participant'];
    idEvenement = json['id_evenement'];
    idUser = json['id_user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_participant'] = this.idParticipant;
    data['id_evenement'] = this.idEvenement;
    data['id_user'] = this.idUser;
    return data;
  }
}
