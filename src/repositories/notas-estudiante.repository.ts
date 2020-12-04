import {DefaultCrudRepository} from '@loopback/repository';
import {NotasEstudiante, NotasEstudianteRelations} from '../models';
import {Tarea3DatasourceDataSource} from '../datasources';
import {inject} from '@loopback/core';

export class NotasEstudianteRepository extends DefaultCrudRepository<
  NotasEstudiante,
  typeof NotasEstudiante.prototype.id,
  NotasEstudianteRelations
> {
  constructor(
    @inject('datasources.tarea3_datasource') dataSource: Tarea3DatasourceDataSource,
  ) {
    super(NotasEstudiante, dataSource);
  }
}
