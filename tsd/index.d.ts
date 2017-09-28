/// <reference types="@jbeard/scion-core" />

import * as scion from '@jbeard/scion-core';

export interface ModelFactoryFactory {
  prepare : (cb : (err : Error, modelFactory : scion.ModelFactory) => any, executionContext? : any, hostContext? : any) => void;
}

export function urlToModel(url : string, cb : (err : Error, modelFactoryFactory : ModelFactoryFactory) => any, context? : any);
export function pathToModel(url : string, cb : (err : Error, modelFactoryFactory : ModelFactoryFactory) => any, context? : any);
export function documentStringToModel(url : string, scxmlDocString : string, cb : (err : Error, modelFactoryFactory : ModelFactoryFactory) => any, context? : any);
export namespace ext {
  export namespace compilerInternals {
    export const scxmlToScjson : (scxmlContents : string) => scion.SCState;
  }
}

export { scion }
