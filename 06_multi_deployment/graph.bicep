provider microsoftGraph

param location string = resourceGroup().location

resource exampleGroup 'Microsoft.Graph/groups@v1.0' = {
  displayName: 'My example group'
  mailEnabled: false
  mailNickname: 'my-example-group'
  securityEnabled: true
  uniqueName: 'myExampleGroup'
  owners: [managedIdentity.properties.principalId]
}

resource managedIdentity 'Microsoft.ManagedIdentity/userAssignedIdentities@2018-11-30' = {
  name: 'exampleManagedIdentity'
  location: location
}
