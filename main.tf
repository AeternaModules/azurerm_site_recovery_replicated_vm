resource "azurerm_site_recovery_replicated_vm" "site_recovery_replicated_vms" {
  for_each = var.site_recovery_replicated_vms

  name                                      = each.value.name
  recovery_replication_policy_id            = each.value.recovery_replication_policy_id
  recovery_vault_name                       = each.value.recovery_vault_name
  resource_group_name                       = each.value.resource_group_name
  source_recovery_fabric_name               = each.value.source_recovery_fabric_name
  source_recovery_protection_container_name = each.value.source_recovery_protection_container_name
  source_vm_id                              = each.value.source_vm_id
  target_recovery_fabric_id                 = each.value.target_recovery_fabric_id
  target_recovery_protection_container_id   = each.value.target_recovery_protection_container_id
  target_resource_group_id                  = each.value.target_resource_group_id
  target_virtual_machine_size               = each.value.target_virtual_machine_size
  target_virtual_machine_scale_set_id       = each.value.target_virtual_machine_scale_set_id
  target_proximity_placement_group_id       = each.value.target_proximity_placement_group_id
  target_network_id                         = each.value.target_network_id
  multi_vm_group_name                       = each.value.multi_vm_group_name
  target_capacity_reservation_group_id      = each.value.target_capacity_reservation_group_id
  target_boot_diagnostic_storage_account_id = each.value.target_boot_diagnostic_storage_account_id
  target_availability_set_id                = each.value.target_availability_set_id
  target_zone                               = each.value.target_zone
  target_edge_zone                          = each.value.target_edge_zone
  test_network_id                           = each.value.test_network_id

  dynamic "managed_disk" {
    for_each = each.value.managed_disk != null ? [each.value.managed_disk] : []
    content {
      disk_id                    = managed_disk.value.disk_id
      staging_storage_account_id = managed_disk.value.staging_storage_account_id
      dynamic "target_disk_encryption" {
        for_each = managed_disk.value.target_disk_encryption != null ? [managed_disk.value.target_disk_encryption] : []
        content {
          disk_encryption_key {
            secret_url = target_disk_encryption.value.disk_encryption_key.secret_url
            vault_id   = target_disk_encryption.value.disk_encryption_key.vault_id
          }
          dynamic "key_encryption_key" {
            for_each = target_disk_encryption.value.key_encryption_key != null ? [target_disk_encryption.value.key_encryption_key] : []
            content {
              key_url  = key_encryption_key.value.key_url
              vault_id = key_encryption_key.value.vault_id
            }
          }
        }
      }
      target_disk_encryption_set_id = managed_disk.value.target_disk_encryption_set_id
      target_disk_type              = managed_disk.value.target_disk_type
      target_replica_disk_type      = managed_disk.value.target_replica_disk_type
      target_resource_group_id      = managed_disk.value.target_resource_group_id
    }
  }

  dynamic "network_interface" {
    for_each = each.value.network_interface != null ? [each.value.network_interface] : []
    content {
      failover_test_public_ip_address_id              = network_interface.value.failover_test_public_ip_address_id
      failover_test_static_ip                         = network_interface.value.failover_test_static_ip
      failover_test_subnet_name                       = network_interface.value.failover_test_subnet_name
      recovery_load_balancer_backend_address_pool_ids = network_interface.value.recovery_load_balancer_backend_address_pool_ids
      recovery_public_ip_address_id                   = network_interface.value.recovery_public_ip_address_id
      source_network_interface_id                     = network_interface.value.source_network_interface_id
      target_static_ip                                = network_interface.value.target_static_ip
      target_subnet_name                              = network_interface.value.target_subnet_name
    }
  }

  dynamic "unmanaged_disk" {
    for_each = each.value.unmanaged_disk != null ? [each.value.unmanaged_disk] : []
    content {
      disk_uri                   = unmanaged_disk.value.disk_uri
      staging_storage_account_id = unmanaged_disk.value.staging_storage_account_id
      target_storage_account_id  = unmanaged_disk.value.target_storage_account_id
    }
  }
}

