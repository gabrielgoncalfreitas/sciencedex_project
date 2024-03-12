class PeriodoEntity {
  final String nomeDoPeriodo;
  final DateTime comeca;
  final DateTime termina;
  final String categoria;
  final String meta1;
  final String meta2;

  const PeriodoEntity({
    required this.nomeDoPeriodo,
    required this.comeca,
    required this.termina,
    required this.categoria,
    required this.meta1,
    required this.meta2,
  });

  factory PeriodoEntity.init() {
    return PeriodoEntity(
      nomeDoPeriodo: "",
      comeca: DateTime.now(),
      termina: DateTime.now(),
      categoria: "Categoria 1",
      meta1: "",
      meta2: "",
    );
  }

  PeriodoEntity copyWith({
    String? nomeDoPeriodo,
    String? comeca,
    String? termina,
    String? categoria,
    String? meta1,
    String? meta2,
  }) {
    return PeriodoEntity(
      nomeDoPeriodo: nomeDoPeriodo ?? this.nomeDoPeriodo,
      comeca: comeca == null ? this.comeca : DateTime.parse(comeca),
      termina: termina == null ? this.termina : DateTime.parse(termina),
      categoria: categoria ?? this.categoria,
      meta1: meta1 ?? this.meta1,
      meta2: meta2 ?? this.meta2,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nomeDoPeriodo': nomeDoPeriodo,
      'comeca': comeca.toString(),
      'termina': termina.toString(),
      'categoria': categoria,
      'meta1': meta1,
      'meta2': meta2,
    };
  }

  factory PeriodoEntity.fromMap(Map<dynamic, dynamic> element) {
    return PeriodoEntity(
      nomeDoPeriodo: element['nomeDoPeriodo'],
      comeca: DateTime.parse(element['comeca']),
      termina: DateTime.parse(element['termina']),
      categoria: element['categoria'],
      meta1: element['meta1'],
      meta2: element['meta2'],
    );
  }
}
