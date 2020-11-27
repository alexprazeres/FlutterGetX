class Slider {
  String id;
  String imagem;

  Slider({this.id, this.imagem});

  Slider.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imagem = json['imagem'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['imagem'] = this.imagem;
    return data;
  }
}
