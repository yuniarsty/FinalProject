class Sistem{
  Sistem({
            required this.idPencernaan,
            required this.nama,
            required this.foto,
            required this.proses,
            required this.enzim,
            required this.fungsi,
            required this.createdAt,
            required this.updatedAt,
      });
    int idPencernaan;
    String nama;
    String foto;
    String proses;
    String enzim;
    String fungsi;
    String createdAt;
    String updatedAt;

    factory Sistem.fromJson(Map<String, dynamic> json) => Sistem(
        idPencernaan: json["id"],
        nama: json["nama"].toString(),
        foto: json["foto"].toString(),
        proses: json["proses"].toString(),
        enzim: json["enzim"].toString(),
        fungsi: json["fungsi"].toString(),
        createdAt: json["createdAt"].toString(),
        updatedAt: json["updateDat"].toString(),
    );
}