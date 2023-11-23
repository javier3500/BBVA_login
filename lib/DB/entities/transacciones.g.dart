// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transacciones.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GettransaccionCollection on Isar {
  IsarCollection<transaccion> get transaccions => this.collection();
}

const TransaccionSchema = CollectionSchema(
  name: r'transaccion',
  id: 7579506806846216019,
  properties: {
    r'concepto': PropertySchema(
      id: 0,
      name: r'concepto',
      type: IsarType.string,
    ),
    r'fecha': PropertySchema(
      id: 1,
      name: r'fecha',
      type: IsarType.string,
    ),
    r'monto': PropertySchema(
      id: 2,
      name: r'monto',
      type: IsarType.string,
    )
  },
  estimateSize: _transaccionEstimateSize,
  serialize: _transaccionSerialize,
  deserialize: _transaccionDeserialize,
  deserializeProp: _transaccionDeserializeProp,
  idName: r'id_transaccion',
  indexes: {},
  links: {
    r'Id_cliente': LinkSchema(
      id: 6310084906718950114,
      name: r'Id_cliente',
      target: r'cliente',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _transaccionGetId,
  getLinks: _transaccionGetLinks,
  attach: _transaccionAttach,
  version: '3.1.0+1',
);

int _transaccionEstimateSize(
  transaccion object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.concepto;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.fecha;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.monto;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _transaccionSerialize(
  transaccion object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.concepto);
  writer.writeString(offsets[1], object.fecha);
  writer.writeString(offsets[2], object.monto);
}

transaccion _transaccionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = transaccion();
  object.concepto = reader.readStringOrNull(offsets[0]);
  object.fecha = reader.readStringOrNull(offsets[1]);
  object.id_transaccion = id;
  object.monto = reader.readStringOrNull(offsets[2]);
  return object;
}

P _transaccionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _transaccionGetId(transaccion object) {
  return object.id_transaccion;
}

List<IsarLinkBase<dynamic>> _transaccionGetLinks(transaccion object) {
  return [object.Id_cliente];
}

void _transaccionAttach(
    IsarCollection<dynamic> col, Id id, transaccion object) {
  object.id_transaccion = id;
  object.Id_cliente.attach(
      col, col.isar.collection<cliente>(), r'Id_cliente', id);
}

extension transaccionQueryWhereSort
    on QueryBuilder<transaccion, transaccion, QWhere> {
  QueryBuilder<transaccion, transaccion, QAfterWhere> anyId_transaccion() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension transaccionQueryWhere
    on QueryBuilder<transaccion, transaccion, QWhereClause> {
  QueryBuilder<transaccion, transaccion, QAfterWhereClause>
      id_transaccionEqualTo(Id id_transaccion) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id_transaccion,
        upper: id_transaccion,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterWhereClause>
      id_transaccionNotEqualTo(Id id_transaccion) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(
                  upper: id_transaccion, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: id_transaccion, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: id_transaccion, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(
                  upper: id_transaccion, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterWhereClause>
      id_transaccionGreaterThan(Id id_transaccion, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id_transaccion, includeLower: include),
      );
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterWhereClause>
      id_transaccionLessThan(Id id_transaccion, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id_transaccion, includeUpper: include),
      );
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterWhereClause>
      id_transaccionBetween(
    Id lowerId_transaccion,
    Id upperId_transaccion, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId_transaccion,
        includeLower: includeLower,
        upper: upperId_transaccion,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension transaccionQueryFilter
    on QueryBuilder<transaccion, transaccion, QFilterCondition> {
  QueryBuilder<transaccion, transaccion, QAfterFilterCondition>
      conceptoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'concepto',
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition>
      conceptoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'concepto',
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition> conceptoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'concepto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition>
      conceptoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'concepto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition>
      conceptoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'concepto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition> conceptoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'concepto',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition>
      conceptoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'concepto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition>
      conceptoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'concepto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition>
      conceptoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'concepto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition> conceptoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'concepto',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition>
      conceptoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'concepto',
        value: '',
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition>
      conceptoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'concepto',
        value: '',
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition> fechaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fecha',
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition>
      fechaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fecha',
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition> fechaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fecha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition>
      fechaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fecha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition> fechaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fecha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition> fechaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fecha',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition> fechaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fecha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition> fechaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fecha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition> fechaContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fecha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition> fechaMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fecha',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition> fechaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fecha',
        value: '',
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition>
      fechaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fecha',
        value: '',
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition>
      id_transaccionEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id_transaccion',
        value: value,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition>
      id_transaccionGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id_transaccion',
        value: value,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition>
      id_transaccionLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id_transaccion',
        value: value,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition>
      id_transaccionBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id_transaccion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition> montoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'monto',
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition>
      montoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'monto',
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition> montoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'monto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition>
      montoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'monto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition> montoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'monto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition> montoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'monto',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition> montoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'monto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition> montoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'monto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition> montoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'monto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition> montoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'monto',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition> montoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'monto',
        value: '',
      ));
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition>
      montoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'monto',
        value: '',
      ));
    });
  }
}

extension transaccionQueryObject
    on QueryBuilder<transaccion, transaccion, QFilterCondition> {}

extension transaccionQueryLinks
    on QueryBuilder<transaccion, transaccion, QFilterCondition> {
  QueryBuilder<transaccion, transaccion, QAfterFilterCondition> id_cliente(
      FilterQuery<cliente> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'Id_cliente');
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterFilterCondition>
      id_clienteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'Id_cliente', 0, true, 0, true);
    });
  }
}

extension transaccionQuerySortBy
    on QueryBuilder<transaccion, transaccion, QSortBy> {
  QueryBuilder<transaccion, transaccion, QAfterSortBy> sortByConcepto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'concepto', Sort.asc);
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterSortBy> sortByConceptoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'concepto', Sort.desc);
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterSortBy> sortByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterSortBy> sortByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterSortBy> sortByMonto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'monto', Sort.asc);
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterSortBy> sortByMontoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'monto', Sort.desc);
    });
  }
}

extension transaccionQuerySortThenBy
    on QueryBuilder<transaccion, transaccion, QSortThenBy> {
  QueryBuilder<transaccion, transaccion, QAfterSortBy> thenByConcepto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'concepto', Sort.asc);
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterSortBy> thenByConceptoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'concepto', Sort.desc);
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterSortBy> thenByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterSortBy> thenByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterSortBy> thenById_transaccion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_transaccion', Sort.asc);
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterSortBy>
      thenById_transaccionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_transaccion', Sort.desc);
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterSortBy> thenByMonto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'monto', Sort.asc);
    });
  }

  QueryBuilder<transaccion, transaccion, QAfterSortBy> thenByMontoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'monto', Sort.desc);
    });
  }
}

extension transaccionQueryWhereDistinct
    on QueryBuilder<transaccion, transaccion, QDistinct> {
  QueryBuilder<transaccion, transaccion, QDistinct> distinctByConcepto(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'concepto', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<transaccion, transaccion, QDistinct> distinctByFecha(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fecha', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<transaccion, transaccion, QDistinct> distinctByMonto(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'monto', caseSensitive: caseSensitive);
    });
  }
}

extension transaccionQueryProperty
    on QueryBuilder<transaccion, transaccion, QQueryProperty> {
  QueryBuilder<transaccion, int, QQueryOperations> id_transaccionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id_transaccion');
    });
  }

  QueryBuilder<transaccion, String?, QQueryOperations> conceptoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'concepto');
    });
  }

  QueryBuilder<transaccion, String?, QQueryOperations> fechaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fecha');
    });
  }

  QueryBuilder<transaccion, String?, QQueryOperations> montoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'monto');
    });
  }
}
