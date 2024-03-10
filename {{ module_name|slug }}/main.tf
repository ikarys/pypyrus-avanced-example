provider "azurerm" {
  features = {}
}

resource "azurerm_storage_account" "example" {
  name                     = "{{ storage_account_name|slug }}"
  resource_group_name      = "{{ resource_group_name|slug }}"
  location                 = "{{ location }}"
  account_tier             = "Standard"
  {% if replication_enabled %}account_replication_type = "{{ replication_type }}"{% endif %}
}