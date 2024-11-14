# Step 1: Connect to Azure
Connect-AzAccount

# Step 2: Define variables
$resourceGroupName = "example-resources"
$location = "West Europe"
$storageAccountName = "examplestorageacc"

# Step 3: Create a resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Step 4: Create a storage account
New-AzStorageAccount -ResourceGroupName $resourceGroupName `
                     -Name $storageAccountName `
                     -Location $location `
                     -SkuName Standard_LRS `
                     -Kind StorageV2

# Step 5: Output the storage account name
Write-Output "Storage account '$storageAccountName' created successfully in resource group '$resourceGroupName' at location '$location'."