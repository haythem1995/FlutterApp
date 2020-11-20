class UserModel {
  int _id;
  String _uniqueId;
  String _name;
  String _email;
  String _encryptedPassword;
  String _salt;
  String _createdAt;
  String _updatedAt;
  String _prenom;
  String _telUser;
  String _imageUser;

  UserModel(
      {int id,
      String uniqueId,
      String name,
      String email,
      String encryptedPassword,
      String salt,
      String createdAt,
      String updatedAt,
      String prenom,
      String telUser,
      String imageUser}) {
    this._id = id;
    this._uniqueId = uniqueId;
    this._name = name;
    this._email = email;
    this._encryptedPassword = encryptedPassword;
    this._salt = salt;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
    this._prenom = prenom;
    this._telUser = telUser;
    this._imageUser = imageUser;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get uniqueId => _uniqueId;
  set uniqueId(String uniqueId) => _uniqueId = uniqueId;
  String get name => _name;
  set name(String name) => _name = name;
  String get email => _email;
  set email(String email) => _email = email;
  String get encryptedPassword => _encryptedPassword;
  set encryptedPassword(String encryptedPassword) =>
      _encryptedPassword = encryptedPassword;
  String get salt => _salt;
  set salt(String salt) => _salt = salt;
  String get createdAt => _createdAt;
  set createdAt(String createdAt) => _createdAt = createdAt;
  String get updatedAt => _updatedAt;
  set updatedAt(String updatedAt) => _updatedAt = updatedAt;
  String get prenom => _prenom;
  set prenom(String prenom) => _prenom = prenom;
  String get telUser => _telUser;
  set telUser(String telUser) => _telUser = telUser;
  String get imageUser => _imageUser;
  set imageUser(String imageUser) => _imageUser = imageUser;

  UserModel.fromJson(dynamic json) {
    _id = json['id'];
    _uniqueId = json['unique_id'];
    _name = json['name'];
    _email = json['email'];
    _encryptedPassword = json['encrypted_password'];
    _salt = json['salt'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _prenom = json['prenom'];
    _telUser = json['tel_user'];
    _imageUser = json['image_user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['unique_id'] = this._uniqueId;
    data['name'] = this._name;
    data['email'] = this._email;
    data['encrypted_password'] = this._encryptedPassword;
    data['salt'] = this._salt;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['prenom'] = this._prenom;
    data['tel_user'] = this._telUser;
    data['image_user'] = this._imageUser;
    return data;
  }
}
