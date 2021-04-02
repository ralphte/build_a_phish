resource "azurerm_resource_group" "azure_resource" {
  name     = var.op
  location = "East US"
}

resource "azurerm_cdn_profile" "cdn_profile" {
  name                = var.cdn_profile_name
  location            = azurerm_resource_group.azure_resource.location
  resource_group_name = azurerm_resource_group.azure_resource.name
  sku                 = "Standard_Microsoft"
}

resource "azurerm_cdn_endpoint" "cdn_endpoint_gophish" {
  name                = var.cdn_endpoint_name_gophish
  profile_name        = azurerm_cdn_profile.cdn_profile.name
  location            = azurerm_resource_group.azure_resource.location
  resource_group_name = azurerm_resource_group.azure_resource.name
  origin_host_header  = var.cdn_origin_host_gophish
  querystring_caching_behaviour = "BypassCaching"

  origin {
    name      = var.cdn_endpoint_name_gophish
    host_name = var.cdn_origin_host_gophish
  }

  delivery_rule{
    name = "nocache"
    order = 1
    
    query_string_condition {
      operator = "Any"
    }

    
    url_path_condition {
      operator = "Any"
    }

    cache_expiration_action {
      behavior =  "BypassCache"
    }
  }
}

resource "azurerm_cdn_endpoint" "cdn_endpoint_evilginx1" {
  name                = var.cdn_endpoint_name_evilginx1
  profile_name        = azurerm_cdn_profile.cdn_profile.name
  location            = azurerm_resource_group.azure_resource.location
  resource_group_name = azurerm_resource_group.azure_resource.name
  origin_host_header  = var.cdn_origin_hostheader_evilginx1
  querystring_caching_behaviour = "BypassCaching"

  origin {
    name      = var.cdn_endpoint_name_evilginx1
    host_name = var.cdn_origin_host_evilginx1
  }

  delivery_rule{
    name = "nocache"
    order = 1
    
    query_string_condition {
      operator = "Any"
    }

    
    url_path_condition {
      operator = "Any"
    }

    cache_expiration_action {
      behavior =  "BypassCache"
    }
  }
}

resource "azurerm_cdn_endpoint" "cdn_endpoint_evilginx2" {
  name                = var.cdn_endpoint_name_evilginx2
  profile_name        = azurerm_cdn_profile.cdn_profile.name
  location            = azurerm_resource_group.azure_resource.location
  resource_group_name = azurerm_resource_group.azure_resource.name
  origin_host_header  = var.cdn_origin_hostheader_evilginx2
  querystring_caching_behaviour = "BypassCaching"

  origin {
    name      = var.cdn_endpoint_name_evilginx2
    host_name = var.cdn_origin_host_evilginx2
  }

  delivery_rule{
    name = "nocache"
    order = 1
    
    query_string_condition {
      operator = "Any"
    }

    
    url_path_condition {
      operator = "Any"
    }

    cache_expiration_action {
      behavior =  "BypassCache"
    }
  }
}