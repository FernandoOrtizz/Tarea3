import {DefaultCrudRepository} from '@loopback/repository';
import {Materias, MateriasRelations} from '../models';
import {Tarea3DatasourceDataSource} from '../datasources';
import {inject} from '@loopback/core';

export class MateriasRepository extends DefaultCrudRepository<
  Materias,
  typeof Materias.prototype.id,
  MateriasRelations
> {
  constructor(
    @inject('datasources.tarea3_datasource') dataSource: Tarea3DatasourceDataSource,
  ) {
    super(Materias, dataSource);
  }
}
