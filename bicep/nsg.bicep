resource nsg 'Microsoft.Network/networkSecurityGroups@2022-05-01' = {
  name: 'core-nsg'
  location: resourceGroup().location
  properties: {
    securityRules: [
      {
        name: 'deny-internet-inbound'
        properties: {
          priority: 100
          direction: 'Inbound'
          access: 'Deny'
          protocol: '*'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          sourcePortRange: '*'
          destinationPortRange: '*'
        }
      }
    ]
  }
}
