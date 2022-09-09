param location string = resourceGroup().location

@description('storage account resource name')
param stgAccountName string = 'stglabtest'

@description('function app resource name')
param functionAppName string = 'fncAppLabtest'

@description('Name for the function app plan')
param functionAppPlanName string = 'fncAppPlanLabtest'

@description('name for application database')
param dbName string = 'cosmosdblabtest'
/*

  -Made resource group manually to start. Want to see if I can automate down the road

  resource group: matt_cloud_resume

  Goal: create storage blob to host static website. add functions app to send API requests to and database to
        store a field in.

        ** -> secondary goal

        Content -------
          - azure storage static website
          - Azure CDN for https***
          - Azure DNS***
          - CosmosDB to store some field
          - Azure functions to send data back and forth between site and DB
          - 
*/

module stg 'modules/storage.bicep' = {
  name: stgAccountName
  params: {
    stgAccountName: stgAccountName
    location: location
  }
}

/*
module fncApp 'modules/functionsapp.bicep' = {
   name: functionAppName
   params:{
     location: location
     functionAppName: functionAppName
     functionAppPlanName: functionAppPlanName
   }
 }

 module appDb 'modules/database.bicep' = {
   name: dbName
   params: {
     location: location
   }
 }
*/
