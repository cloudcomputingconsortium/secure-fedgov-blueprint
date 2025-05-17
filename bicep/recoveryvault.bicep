resource backupVault 'Microsoft.RecoveryServices/vaults@2022-10-01' = {
  name: 'core-backupvault'
  location: resourceGroup().location
  properties: {}
  sku: {
    name: 'Standard'
  }
}
