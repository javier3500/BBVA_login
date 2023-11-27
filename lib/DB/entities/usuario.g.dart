// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetusuarioCollection on Isar {
  IsarCollection<usuario> get usuarios => this.collection();
}

const UsuarioSchema = CollectionSchema(
  name: r'usuario',
  id: 5509211092415108114,
  properties: {
    r'contrasena': PropertySchema(
      id: 0,
      name: r'contrasena',
      type: IsarType.string,
    ),
    r'correo': PropertySchema(
      id: 1,
      name: r'correo',
      type: IsarType.string,
    ),
    r'nombre_usuario': PropertySchema(
      id: 2,
      name: r'nombre_usuario',
      type: IsarType.string,
    )
  },
  estimateSize: _usuarioEstimateSize,
  serialize: _usuarioSerialize,
  deserialize: _usuarioDeserialize,
  deserializeProp: _usuarioDeserializeProp,
  idName: r'id',
  indexes: {
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
  getId: _usuarioGetId,
  getLinks: _usuarioGetLinks,
  attach: _usuarioAttach,
  version: '3.1.0+1',
);

int _usuarioEstimateSize(
  usuario object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.contrasena;
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
    final value = object.nombre_usuario;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _usuarioSerialize(
  usuario object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.contrasena);
  writer.writeString(offsets[1], object.correo);
  writer.writeString(offsets[2], object.nombre_usuario);
}

usuario _usuarioDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = usuario();
  object.contrasena = reader.readStringOrNull(offsets[0]);
  object.correo = reader.readStringOrNull(offsets[1]);
  object.id = id;
  object.nombre_usuario = reader.readStringOrNull(offsets[2]);
  return object;
}

P _usuarioDeserializeProp<P>(
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

Id _usuarioGetId(usuario object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _usuarioGetLinks(usuario object) {
  return [];
}

void _usuarioAttach(IsarCollection<dynamic> col, Id id, usuario object) {
  object.id = id;
}

extension usuarioByIndex on IsarCollection<usuario> {
  Future<usuario?> getByCorreo(String? correo) {
    return getByIndex(r'correo', [correo]);
  }

  usuario? getByCorreoSync(String? correo) {
    return getByIndexSync(r'correo', [correo]);
  }

  Future<bool> deleteByCorreo(String? correo) {
    return deleteByIndex(r'correo', [correo]);
  }

  bool deleteByCorreoSync(String? correo) {
    return deleteByIndexSync(r'correo', [correo]);
  }

  Future<List<usuario?>> getAllByCorreo(List<String?> correoValues) {
    final values = correoValues.map((e) => [e]).toList();
    return getAllByIndex(r'correo', values);
  }

  List<usuario?> getAllByCorreoSync(List<String?> correoValues) {
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

  Future<Id> putByCorreo(usuario object) {
    return putByIndex(r'correo', object);
  }

  Id putByCorreoSync(usuario object, {bool saveLinks = true}) {
    return putByIndexSync(r'correo', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByCorreo(List<usuario> objects) {
    return putAllByIndex(r'correo', objects);
  }

  List<Id> putAllByCorreoSync(List<usuario> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'correo', objects, saveLinks: saveLinks);
  }
}

extension usuarioQueryWhereSort on QueryBuilder<usuario, usuario, QWhere> {
  QueryBuilder<usuario, usuario, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension usuarioQueryWhere on QueryBuilder<usuario, usuario, QWhereClause> {
  QueryBuilder<usuario, usuario, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<usuario, usuario, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<usuario, usuario, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<usuario, usuario, QAfterWhereClause> idBetween(
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

  QueryBuilder<usuario, usuario, QAfterWhereClause> correoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'correo',
        value: [null],
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterWhereClause> correoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'correo',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterWhereClause> correoEqualTo(
      String? correo) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'correo',
        value: [correo],
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterWhereClause> correoNotEqualTo(
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

extension usuarioQueryFilter
    on QueryBuilder<usuario, usuario, QFilterCondition> {
  QueryBuilder<usuario, usuario, QAfterFilterCondition> contrasenaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'contrasena',
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> contrasenaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'contrasena',
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> contrasenaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contrasena',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> contrasenaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'contrasena',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> contrasenaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'contrasena',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> contrasenaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'contrasena',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> contrasenaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'contrasena',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> contrasenaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'contrasena',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> contrasenaContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'contrasena',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> contrasenaMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'contrasena',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> contrasenaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contrasena',
        value: '',
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> contrasenaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'contrasena',
        value: '',
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> correoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'correo',
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> correoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'correo',
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> correoEqualTo(
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

  QueryBuilder<usuario, usuario, QAfterFilterCondition> correoGreaterThan(
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

  QueryBuilder<usuario, usuario, QAfterFilterCondition> correoLessThan(
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

  QueryBuilder<usuario, usuario, QAfterFilterCondition> correoBetween(
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

  QueryBuilder<usuario, usuario, QAfterFilterCondition> correoStartsWith(
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

  QueryBuilder<usuario, usuario, QAfterFilterCondition> correoEndsWith(
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

  QueryBuilder<usuario, usuario, QAfterFilterCondition> correoContains(
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

  QueryBuilder<usuario, usuario, QAfterFilterCondition> correoMatches(
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

  QueryBuilder<usuario, usuario, QAfterFilterCondition> correoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correo',
        value: '',
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> correoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'correo',
        value: '',
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<usuario, usuario, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<usuario, usuario, QAfterFilterCondition> idBetween(
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

  QueryBuilder<usuario, usuario, QAfterFilterCondition> nombre_usuarioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nombre_usuario',
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition>
      nombre_usuarioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nombre_usuario',
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> nombre_usuarioEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombre_usuario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition>
      nombre_usuarioGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nombre_usuario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> nombre_usuarioLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nombre_usuario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> nombre_usuarioBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nombre_usuario',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition>
      nombre_usuarioStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nombre_usuario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> nombre_usuarioEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nombre_usuario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> nombre_usuarioContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nombre_usuario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> nombre_usuarioMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nombre_usuario',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition>
      nombre_usuarioIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombre_usuario',
        value: '',
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition>
      nombre_usuarioIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombre_usuario',
        value: '',
      ));
    });
  }
}

extension usuarioQueryObject
    on QueryBuilder<usuario, usuario, QFilterCondition> {}

extension usuarioQueryLinks
    on QueryBuilder<usuario, usuario, QFilterCondition> {}

extension usuarioQuerySortBy on QueryBuilder<usuario, usuario, QSortBy> {
  QueryBuilder<usuario, usuario, QAfterSortBy> sortByContrasena() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contrasena', Sort.asc);
    });
  }

  QueryBuilder<usuario, usuario, QAfterSortBy> sortByContrasenaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contrasena', Sort.desc);
    });
  }

  QueryBuilder<usuario, usuario, QAfterSortBy> sortByCorreo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correo', Sort.asc);
    });
  }

  QueryBuilder<usuario, usuario, QAfterSortBy> sortByCorreoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correo', Sort.desc);
    });
  }

  QueryBuilder<usuario, usuario, QAfterSortBy> sortByNombre_usuario() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre_usuario', Sort.asc);
    });
  }

  QueryBuilder<usuario, usuario, QAfterSortBy> sortByNombre_usuarioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre_usuario', Sort.desc);
    });
  }
}

extension usuarioQuerySortThenBy
    on QueryBuilder<usuario, usuario, QSortThenBy> {
  QueryBuilder<usuario, usuario, QAfterSortBy> thenByContrasena() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contrasena', Sort.asc);
    });
  }

  QueryBuilder<usuario, usuario, QAfterSortBy> thenByContrasenaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contrasena', Sort.desc);
    });
  }

  QueryBuilder<usuario, usuario, QAfterSortBy> thenByCorreo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correo', Sort.asc);
    });
  }

  QueryBuilder<usuario, usuario, QAfterSortBy> thenByCorreoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correo', Sort.desc);
    });
  }

  QueryBuilder<usuario, usuario, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<usuario, usuario, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<usuario, usuario, QAfterSortBy> thenByNombre_usuario() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre_usuario', Sort.asc);
    });
  }

  QueryBuilder<usuario, usuario, QAfterSortBy> thenByNombre_usuarioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre_usuario', Sort.desc);
    });
  }
}

extension usuarioQueryWhereDistinct
    on QueryBuilder<usuario, usuario, QDistinct> {
  QueryBuilder<usuario, usuario, QDistinct> distinctByContrasena(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'contrasena', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<usuario, usuario, QDistinct> distinctByCorreo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'correo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<usuario, usuario, QDistinct> distinctByNombre_usuario(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nombre_usuario',
          caseSensitive: caseSensitive);
    });
  }
}

extension usuarioQueryProperty
    on QueryBuilder<usuario, usuario, QQueryProperty> {
  QueryBuilder<usuario, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<usuario, String?, QQueryOperations> contrasenaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'contrasena');
    });
  }

  QueryBuilder<usuario, String?, QQueryOperations> correoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'correo');
    });
  }

  QueryBuilder<usuario, String?, QQueryOperations> nombre_usuarioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombre_usuario');
    });
  }
}
