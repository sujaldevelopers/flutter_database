class Note {
  final int? id;
  final String? title, contect, desc, date;
  final bool done;

  Note({
    this.id,
    required this.title,
    required this.contect,
    required this.desc,
    required this.date,
    required this.done,
  });

  factory Note.fromJson(Map<String, dynamic> json) => Note(
        id: json["id"],
        title: json["title"],
        contect: json["contect"],
        desc: json["desc"],
        date: json["date"],
        done: json["done"] == 1 ? true : false,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "contect": contect,
        "desc": desc,
        "date": date,
        "done": done ? 1 : 0,
      };
}
