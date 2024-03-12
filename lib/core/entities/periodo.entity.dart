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

  factory PeriodoEntity.initial() {
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
    DateTime? comeca,
    DateTime? termina,
    String? categoria,
    String? meta1,
    String? meta2,
  }) {
    return PeriodoEntity(
      nomeDoPeriodo: nomeDoPeriodo ?? this.nomeDoPeriodo,
      comeca: comeca ?? this.comeca,
      termina: termina ?? this.termina,
      categoria: categoria ?? this.categoria,
      meta1: meta1 ?? this.meta1,
      meta2: meta2 ?? this.meta2,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nomeDoPeriodo': nomeDoPeriodo,
      'comeca': comeca,
      'termina': termina,
      'categoria': categoria,
      'meta1': meta1,
      'meta2': meta2,
    };
  }

  factory PeriodoEntity.fromMap(Map<dynamic, dynamic> element) {
    return PeriodoEntity(
      nomeDoPeriodo: element['nomeDoPeriodo'],
      comeca: element['comeca'],
      termina: element['termina'],
      categoria: element['categoria'],
      meta1: element['meta1'],
      meta2: element['meta2'],
    );
  }
}
