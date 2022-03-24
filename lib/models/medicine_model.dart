class MedicineModel {
  int id;
  String code_posologie;
  String designation;
  String? dci;
  String? descrip;
  String? favoris;
  String? hospital;
  String? posuseul;
  String? unite;
  String? contre_ind;
  String? posologi;
  String? voie_administration;

  MedicineModel({
    required this.id,
    required this.code_posologie,
    required this.designation,
    this.dci,
    this.descrip,
    this.favoris,
    this.hospital,
    this.posuseul,
    this.unite,
    this.contre_ind,
    this.posologi,
    this.voie_administration,
  });

  factory MedicineModel.fromJson(Map json) {
    return MedicineModel(
      id: json['id'],
      code_posologie: json['Code_Posologie'],
      designation: json['designation'],
      dci: json['DCI'],
      descrip: json['Discript_contre_ind'],
      favoris: json['Favoris'],
      hospital: json['Hopital'],
      posuseul: json['Posuseul'],
      unite: json['Unite'],
      contre_ind: json['contre_ind'],
      posologi: json['posologi'],
      voie_administration: json['voie_administration'],
    );
  }
}
