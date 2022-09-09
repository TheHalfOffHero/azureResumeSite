param location string
param functionAppName string
param functionAppPlanName string

resource functionAppPlan 'Microsoft.Web/serverFarms@2021-03-01' = {
  name: functionAppPlanName
  location: location
  sku: {
    name: 'F1'
  }
  properties:{}
}

resource functionApp 'Microsoft.Web/sites@2021-03-01' = {
  name: functionAppName
  location: location
  properties: {
    serverFarmId: functionAppPlan.id
    httpsOnly: true
  }
}
