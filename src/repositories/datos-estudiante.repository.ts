import {DefaultCrudRepository} from '@loopback/repository';
import {DatosEstudiante, DatosEstudianteRelations} from '../models';
import {Tarea3DatasourceDataSource} from '../datasources';
import {inject} from '@loopback/core';

export class DatosEstudianteRepository extends DefaultCrudRepository<
  DatosEstudiante,
  typeof DatosEstudiante.prototype.id,
  DatosEstudianteRelations
> {
  constructor(
    @inject('datasources.tarea3_datasource') dataSource: Tarea3DatasourceDataSource,
  ) {
    super(DatosEstudiante, dataSource);
  }
}
