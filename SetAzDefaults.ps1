<#
    SetAzDefaults

    SetAzDefaults logs me into Azure and then sets up my default Azure Subscription and sets my default resource group.
    Initially just a way to get straight to labbing rather than doing this each time.

    Should write to console the default resource group name and the default azure subscription name
#>

$defaultResourceGroup = 'rg-lab-DvAd'

Connect-AzAccount

$defaultSubscription = Get-AzSubscription -SubscriptionName 'Dv-AD-Sdbx2'

Set-AzContext $defaultSubscription
Set-AzDefault -ResourceGroupName $defaultResourceGroup
