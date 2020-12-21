class language {
  final int id;
  final String name;
  final String languageCode;

  language(this.id, this.name, this.languageCode);

  static List<language> languageList() {
    return <language>[
      language(1, "العربية", "ar"),
      language(2, "English", "en"),
    ];
  }
}
