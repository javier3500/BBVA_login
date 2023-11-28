// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetclienteCollection on Isar {
  IsarCollection<cliente> get clientes => this.collection();
}

const ClienteSchema = CollectionSchema(
  name: r'cliente',
  id: 6226935461345587899,
  properties: {
    r'CURP': PropertySchema(
      id: 0,
      name: r'CURP',
      type: IsarType.string,
    ),
    r'correo': PropertySchema(
      id: 1,
      name: r'correo',
      type: IsarType.string,
    ),
    r'domicilio': PropertySchema(
      id: 2,
      name: r'domicilio',
      type: IsarType.string,
    ),
    r'noCuenta': PropertySchema(
      id: 3,
      name: r'noCuenta',
      type: IsarType.string,
    ),
    r'nombre_completo': PropertySchema(
      id: 4,
      name: r'nombre_completo',
      type: IsarType.string,
    ),
    r'saldo': PropertySchema(
      id: 5,
      name: r'saldo',
      type: IsarType.long,
    ),
    r'telefono': PropertySchema(
      id: 6,
      name: r'telefono',
      type: IsarType.string,
    )
  },
  estimateSize: _clienteEstimateSize,
  serialize: _clienteSerialize,
  deserialize: _clienteDeserialize,
  deserializeProp: _clienteDeserializeProp,
  idName: r'id',
  indexes: {
    r'noCuenta': IndexSchema(
      id: 6560556139511464361,
      name: r'noCuenta',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'noCuenta',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'correo': IndexSchema(
      id: -6928770995677321851,
      name: r'correo',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'correo',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _clienteGetId,
  getLinks: _clienteGetLinks,
  attach: _clienteAttach,
  version: '3.1.0+1',
);

int _clienteEstimateSize(
  cliente object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.CURP;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.correo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.domicilio;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.noCuenta;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.nombre_completo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.telefono;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _clienteSerialize(
  cliente object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.CURP);
  writer.writeString(offsets[1], object.correo);
  writer.writeString(offsets[2], object.domicilio);
  writer.writeString(offsets[3], object.noCuenta);
  writer.writeString(offsets[4], object.nombre_completo);
  writer.writeLong(offsets[5], object.saldo);
  writer.writeString(offsets[6], object.telefono);
}

cliente _clienteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = cliente();
  object.CURP = reader.readStringOrNull(offsets[0]);
  object.correo = reader.readStringOrNull(offsets[1]);
  object.domicilio = reader.readStringOrNull(offsets[2]);
  object.id = id;
  object.noCuenta = reader.readStringOrNull(offsets[3]);
  object.nombre_completo = reader.readStringOrNull(offsets[4]);
  object.saldo = reader.readLongOrNull(offsets[5]);
  object.telefono = reader.readStringOrNull(offsets[6]);
  return object;
}

P _clienteDeserializeProp<P>(
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
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _clienteGetId(cliente object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _clienteGetLinks(cliente object) {
  return [];
}

void _clienteAttach(IsarCollection<dynamic> col, Id id, cliente object) {
  object.id = id;
}

extension clienteByIndex on IsarCollection<cliente> {
  Future<cliente?> getByNoCuenta(String? noCuenta) {
    return getByIndex(r'noCuenta', [noCuenta]);
  }

  cliente? getByNoCuentaSync(String? noCuenta) {
    return getByIndexSync(r'noCuenta', [noCuenta]);
  }

  Future<bool> deleteByNoCuenta(String? noCuenta) {
    return deleteByIndex(r'noCuenta', [noCuenta]);
  }

  bool deleteByNoCuentaSync(String? noCuenta) {
    return deleteByIndexSync(r'noCuenta', [noCuenta]);
  }

  Future<List<cliente?>> getAllByNoCuenta(List<String?> noCuentaValues) {
    final values = noCuentaValues.map((e) => [e]).toList();
    return getAllByIndex(r'noCuenta', values);
  }

  List<cliente?> getAllByNoCuentaSync(List<String?> noCuentaValues) {
    final values = noCuentaValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'noCuenta', values);
  }

  Future<int> deleteAllByNoCuenta(List<String?> noCuentaValues) {
    final values = noCuentaValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'noCuenta', values);
  }

  int deleteAllByNoCuentaSync(List<String?> noCuentaValues) {
    final values = noCuentaValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'noCuenta', values);
  }

  Future<Id> putByNoCuenta(cliente object) {
    return putByIndex(r'noCuenta', object);
  }

  Id putByNoCuentaSync(cliente object, {bool saveLinks = true}) {
    return putByIndexSync(r'noCuenta', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByNoCuenta(List<cliente> objects) {
    return putAllByIndex(r'noCuenta', objects);
  }

  List<Id> putAllByNoCuentaSync(List<cliente> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'noCuenta', objects, saveLinks: saveLinks);
  }

  Future<cliente?> getByCorreo(String? correo) {
    return getByIndex(r'correo', [correo]);
  }

  cliente? getByCorreoSync(String? correo) {
    return getByIndexSync(r'correo', [correo]);
  }

  Future<bool> deleteByCorreo(String? correo) {
    return deleteByIndex(r'correo', [correo]);
  }

  bool deleteByCorreoSync(String? correo) {
    return deleteByIndexSync(r'correo', [correo]);
  }

  Future<List<cliente?>> getAllByCorreo(List<String?> correoValues) {
    final values = correoValues.map((e) => [e]).toList();
    return getAllByIndex(r'correo', values);
  }

  List<cliente?> getAllByCorreoSync(List<String?> correoValues) {
    final values = correoValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'correo', values);
  }

  Future<int> deleteAllByCorreo(List<String?> correoValues) {
    final values = correoValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'correo', values);
  }

  int deleteAllByCorreoSync(List<String?> correoValues) {
    final values = correoValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'correo', values);
  }

  Future<Id> putByCorreo(cliente object) {
    return putByIndex(r'correo', object);
  }

  Id putByCorreoSync(cliente object, {bool saveLinks = true}) {
    return putByIndexSync(r'correo', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByCorreo(List<cliente> objects) {
    return putAllByIndex(r'correo', objects);
  }

  List<Id> putAllByCorreoSync(List<cliente> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'correo', objects, saveLinks: saveLinks);
  }
}

extension clienteQueryWhereSort on QueryBuilder<cliente, cliente, QWhere> {
  QueryBuilder<cliente, cliente, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension clienteQueryWhere on QueryBuilder<cliente, cliente, QWhereClause> {
  QueryBuilder<cliente, cliente, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<cliente, cliente, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<cliente, cliente, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<cliente, cliente, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterWhereClause> noCuentaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'noCuenta',
        value: [null],
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterWhereClause> noCuentaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'noCuenta',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterWhereClause> noCuentaEqualTo(
      String? noCuenta) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'noCuenta',
        value: [noCuenta],
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterWhereClause> noCuentaNotEqualTo(
      String? noCuenta) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'noCuenta',
              lower: [],
              upper: [noCuenta],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'noCuenta',
              lower: [noCuenta],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'noCuenta',
              lower: [noCuenta],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'noCuenta',
              lower: [],
              upper: [noCuenta],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<cliente, cliente, QAfterWhereClause> correoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'correo',
        value: [null],
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterWhereClause> correoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'correo',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterWhereClause> correoEqualTo(
      String? correo) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'correo',
        value: [correo],
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterWhereClause> correoNotEqualTo(
      String? correo) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'correo',
              lower: [],
              upper: [correo],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'correo',
              lower: [correo],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'correo',
              lower: [correo],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'correo',
              lower: [],
              upper: [correo],
              includeUpper: false,
            ));
      }
    });
  }
}

extension clienteQueryFilter
    on QueryBuilder<cliente, cliente, QFilterCondition> {
  QueryBuilder<cliente, cliente, QAfterFilterCondition> cURPIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'CURP',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> cURPIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'CURP',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> cURPEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'CURP',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> cURPGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'CURP',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> cURPLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'CURP',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> cURPBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'CURP',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> cURPStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'CURP',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> cURPEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'CURP',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> cURPContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'CURP',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> cURPMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'CURP',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> cURPIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'CURP',
        value: '',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> cURPIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'CURP',
        value: '',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> correoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'correo',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> correoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'correo',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> correoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> correoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'correo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> correoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'correo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> correoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'correo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> correoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'correo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> correoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'correo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> correoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'correo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> correoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'correo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> correoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correo',
        value: '',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> correoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'correo',
        value: '',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> domicilioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'domicilio',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> domicilioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'domicilio',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> domicilioEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'domicilio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> domicilioGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'domicilio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> domicilioLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'domicilio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> domicilioBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'domicilio',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> domicilioStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'domicilio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> domicilioEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'domicilio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> domicilioContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'domicilio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> domicilioMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'domicilio',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> domicilioIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'domicilio',
        value: '',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> domicilioIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'domicilio',
        value: '',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> noCuentaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'noCuenta',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> noCuentaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'noCuenta',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> noCuentaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noCuenta',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> noCuentaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'noCuenta',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> noCuentaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'noCuenta',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> noCuentaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'noCuenta',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> noCuentaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'noCuenta',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> noCuentaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'noCuenta',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> noCuentaContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'noCuenta',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> noCuentaMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'noCuenta',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> noCuentaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noCuenta',
        value: '',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> noCuentaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'noCuenta',
        value: '',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition>
      nombre_completoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nombre_completo',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition>
      nombre_completoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nombre_completo',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> nombre_completoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombre_completo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition>
      nombre_completoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nombre_completo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> nombre_completoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nombre_completo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> nombre_completoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nombre_completo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition>
      nombre_completoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nombre_completo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> nombre_completoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nombre_completo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> nombre_completoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nombre_completo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> nombre_completoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nombre_completo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition>
      nombre_completoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombre_completo',
        value: '',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition>
      nombre_completoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombre_completo',
        value: '',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> saldoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'saldo',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> saldoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'saldo',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> saldoEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'saldo',
        value: value,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> saldoGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'saldo',
        value: value,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> saldoLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'saldo',
        value: value,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> saldoBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'saldo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> telefonoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'telefono',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> telefonoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'telefono',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> telefonoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'telefono',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> telefonoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'telefono',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> telefonoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'telefono',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> telefonoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'telefono',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> telefonoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'telefono',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> telefonoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'telefono',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> telefonoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'telefono',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> telefonoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'telefono',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> telefonoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'telefono',
        value: '',
      ));
    });
  }

  QueryBuilder<cliente, cliente, QAfterFilterCondition> telefonoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'telefono',
        value: '',
      ));
    });
  }
}

extension clienteQueryObject
    on QueryBuilder<cliente, cliente, QFilterCondition> {}

extension clienteQueryLinks
    on QueryBuilder<cliente, cliente, QFilterCondition> {}

extension clienteQuerySortBy on QueryBuilder<cliente, cliente, QSortBy> {
  QueryBuilder<cliente, cliente, QAfterSortBy> sortByCURP() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'CURP', Sort.asc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> sortByCURPDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'CURP', Sort.desc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> sortByCorreo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correo', Sort.asc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> sortByCorreoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correo', Sort.desc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> sortByDomicilio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domicilio', Sort.asc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> sortByDomicilioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domicilio', Sort.desc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> sortByNoCuenta() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noCuenta', Sort.asc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> sortByNoCuentaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noCuenta', Sort.desc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> sortByNombre_completo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre_completo', Sort.asc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> sortByNombre_completoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre_completo', Sort.desc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> sortBySaldo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saldo', Sort.asc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> sortBySaldoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saldo', Sort.desc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> sortByTelefono() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telefono', Sort.asc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> sortByTelefonoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telefono', Sort.desc);
    });
  }
}

extension clienteQuerySortThenBy
    on QueryBuilder<cliente, cliente, QSortThenBy> {
  QueryBuilder<cliente, cliente, QAfterSortBy> thenByCURP() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'CURP', Sort.asc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> thenByCURPDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'CURP', Sort.desc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> thenByCorreo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correo', Sort.asc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> thenByCorreoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correo', Sort.desc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> thenByDomicilio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domicilio', Sort.asc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> thenByDomicilioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'domicilio', Sort.desc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> thenByNoCuenta() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noCuenta', Sort.asc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> thenByNoCuentaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noCuenta', Sort.desc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> thenByNombre_completo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre_completo', Sort.asc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> thenByNombre_completoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre_completo', Sort.desc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> thenBySaldo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saldo', Sort.asc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> thenBySaldoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saldo', Sort.desc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> thenByTelefono() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telefono', Sort.asc);
    });
  }

  QueryBuilder<cliente, cliente, QAfterSortBy> thenByTelefonoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telefono', Sort.desc);
    });
  }
}

extension clienteQueryWhereDistinct
    on QueryBuilder<cliente, cliente, QDistinct> {
  QueryBuilder<cliente, cliente, QDistinct> distinctByCURP(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'CURP', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<cliente, cliente, QDistinct> distinctByCorreo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'correo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<cliente, cliente, QDistinct> distinctByDomicilio(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'domicilio', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<cliente, cliente, QDistinct> distinctByNoCuenta(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'noCuenta', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<cliente, cliente, QDistinct> distinctByNombre_completo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nombre_completo',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<cliente, cliente, QDistinct> distinctBySaldo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'saldo');
    });
  }

  QueryBuilder<cliente, cliente, QDistinct> distinctByTelefono(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'telefono', caseSensitive: caseSensitive);
    });
  }
}

extension clienteQueryProperty
    on QueryBuilder<cliente, cliente, QQueryProperty> {
  QueryBuilder<cliente, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<cliente, String?, QQueryOperations> CURPProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'CURP');
    });
  }

  QueryBuilder<cliente, String?, QQueryOperations> correoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'correo');
    });
  }

  QueryBuilder<cliente, String?, QQueryOperations> domicilioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'domicilio');
    });
  }

  QueryBuilder<cliente, String?, QQueryOperations> noCuentaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'noCuenta');
    });
  }

  QueryBuilder<cliente, String?, QQueryOperations> nombre_completoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombre_completo');
    });
  }

  QueryBuilder<cliente, int?, QQueryOperations> saldoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'saldo');
    });
  }

  QueryBuilder<cliente, String?, QQueryOperations> telefonoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'telefono');
    });
  }
}
