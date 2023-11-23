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
    r'Id_usuario': PropertySchema(
      id: 0,
      name: r'Id_usuario',
      type: IsarType.long,
    ),
    r'contrasena': PropertySchema(
      id: 1,
      name: r'contrasena',
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
    r'Id_usuario': IndexSchema(
      id: 3508711034118398191,
      name: r'Id_usuario',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'Id_usuario',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {
    r'Id_cliente': LinkSchema(
      id: -3595211721418575144,
      name: r'Id_cliente',
      target: r'cliente',
      single: true,
    )
  },
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
  writer.writeLong(offsets[0], object.Id_usuario);
  writer.writeString(offsets[1], object.contrasena);
  writer.writeString(offsets[2], object.nombre_usuario);
}

usuario _usuarioDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = usuario();
  object.Id_usuario = reader.readLongOrNull(offsets[0]);
  object.contrasena = reader.readStringOrNull(offsets[1]);
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
      return (reader.readLongOrNull(offset)) as P;
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
  return [object.Id_cliente];
}

void _usuarioAttach(IsarCollection<dynamic> col, Id id, usuario object) {
  object.id = id;
  object.Id_cliente.attach(
      col, col.isar.collection<cliente>(), r'Id_cliente', id);
}

extension usuarioByIndex on IsarCollection<usuario> {
  Future<usuario?> getById_usuario(int? Id_usuario) {
    return getByIndex(r'Id_usuario', [Id_usuario]);
  }

  usuario? getById_usuarioSync(int? Id_usuario) {
    return getByIndexSync(r'Id_usuario', [Id_usuario]);
  }

  Future<bool> deleteById_usuario(int? Id_usuario) {
    return deleteByIndex(r'Id_usuario', [Id_usuario]);
  }

  bool deleteById_usuarioSync(int? Id_usuario) {
    return deleteByIndexSync(r'Id_usuario', [Id_usuario]);
  }

  Future<List<usuario?>> getAllById_usuario(List<int?> Id_usuarioValues) {
    final values = Id_usuarioValues.map((e) => [e]).toList();
    return getAllByIndex(r'Id_usuario', values);
  }

  List<usuario?> getAllById_usuarioSync(List<int?> Id_usuarioValues) {
    final values = Id_usuarioValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'Id_usuario', values);
  }

  Future<int> deleteAllById_usuario(List<int?> Id_usuarioValues) {
    final values = Id_usuarioValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'Id_usuario', values);
  }

  int deleteAllById_usuarioSync(List<int?> Id_usuarioValues) {
    final values = Id_usuarioValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'Id_usuario', values);
  }

  Future<Id> putById_usuario(usuario object) {
    return putByIndex(r'Id_usuario', object);
  }

  Id putById_usuarioSync(usuario object, {bool saveLinks = true}) {
    return putByIndexSync(r'Id_usuario', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllById_usuario(List<usuario> objects) {
    return putAllByIndex(r'Id_usuario', objects);
  }

  List<Id> putAllById_usuarioSync(List<usuario> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'Id_usuario', objects, saveLinks: saveLinks);
  }
}

extension usuarioQueryWhereSort on QueryBuilder<usuario, usuario, QWhere> {
  QueryBuilder<usuario, usuario, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<usuario, usuario, QAfterWhere> anyId_usuario() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'Id_usuario'),
      );
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

  QueryBuilder<usuario, usuario, QAfterWhereClause> id_usuarioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'Id_usuario',
        value: [null],
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterWhereClause> id_usuarioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'Id_usuario',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterWhereClause> id_usuarioEqualTo(
      int? Id_usuario) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'Id_usuario',
        value: [Id_usuario],
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterWhereClause> id_usuarioNotEqualTo(
      int? Id_usuario) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'Id_usuario',
              lower: [],
              upper: [Id_usuario],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'Id_usuario',
              lower: [Id_usuario],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'Id_usuario',
              lower: [Id_usuario],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'Id_usuario',
              lower: [],
              upper: [Id_usuario],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<usuario, usuario, QAfterWhereClause> id_usuarioGreaterThan(
    int? Id_usuario, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'Id_usuario',
        lower: [Id_usuario],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterWhereClause> id_usuarioLessThan(
    int? Id_usuario, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'Id_usuario',
        lower: [],
        upper: [Id_usuario],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterWhereClause> id_usuarioBetween(
    int? lowerId_usuario,
    int? upperId_usuario, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'Id_usuario',
        lower: [lowerId_usuario],
        includeLower: includeLower,
        upper: [upperId_usuario],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension usuarioQueryFilter
    on QueryBuilder<usuario, usuario, QFilterCondition> {
  QueryBuilder<usuario, usuario, QAfterFilterCondition> id_usuarioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'Id_usuario',
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> id_usuarioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'Id_usuario',
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> id_usuarioEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'Id_usuario',
        value: value,
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> id_usuarioGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'Id_usuario',
        value: value,
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> id_usuarioLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'Id_usuario',
        value: value,
      ));
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> id_usuarioBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'Id_usuario',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

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
    on QueryBuilder<usuario, usuario, QFilterCondition> {
  QueryBuilder<usuario, usuario, QAfterFilterCondition> id_cliente(
      FilterQuery<cliente> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'Id_cliente');
    });
  }

  QueryBuilder<usuario, usuario, QAfterFilterCondition> id_clienteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'Id_cliente', 0, true, 0, true);
    });
  }
}

extension usuarioQuerySortBy on QueryBuilder<usuario, usuario, QSortBy> {
  QueryBuilder<usuario, usuario, QAfterSortBy> sortById_usuario() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'Id_usuario', Sort.asc);
    });
  }

  QueryBuilder<usuario, usuario, QAfterSortBy> sortById_usuarioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'Id_usuario', Sort.desc);
    });
  }

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
  QueryBuilder<usuario, usuario, QAfterSortBy> thenById_usuario() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'Id_usuario', Sort.asc);
    });
  }

  QueryBuilder<usuario, usuario, QAfterSortBy> thenById_usuarioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'Id_usuario', Sort.desc);
    });
  }

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
  QueryBuilder<usuario, usuario, QDistinct> distinctById_usuario() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'Id_usuario');
    });
  }

  QueryBuilder<usuario, usuario, QDistinct> distinctByContrasena(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'contrasena', caseSensitive: caseSensitive);
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

  QueryBuilder<usuario, int?, QQueryOperations> Id_usuarioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'Id_usuario');
    });
  }

  QueryBuilder<usuario, String?, QQueryOperations> contrasenaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'contrasena');
    });
  }

  QueryBuilder<usuario, String?, QQueryOperations> nombre_usuarioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombre_usuario');
    });
  }
}
