provider microsoftGraph

resource TestGroupBicepGraph 'Microsoft.Graph/groups@v1.0' = {
  displayName: 'MKU First Bicep Graph Group'
  mailEnabled: false
  mailNickname: 'first-bicep-graph-group'
  securityEnabled: true
  uniqueName: 'MKUFirstBicepGraphGroup'
}
