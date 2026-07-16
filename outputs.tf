output "site_recovery_replicated_vms_id" {
  description = "Map of id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.id if v.id != null && length(v.id) > 0 }
}
output "site_recovery_replicated_vms_managed_disk" {
  description = "Map of managed_disk values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.managed_disk if v.managed_disk != null && length(v.managed_disk) > 0 }
}
output "site_recovery_replicated_vms_multi_vm_group_name" {
  description = "Map of multi_vm_group_name values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.multi_vm_group_name if v.multi_vm_group_name != null && length(v.multi_vm_group_name) > 0 }
}
output "site_recovery_replicated_vms_name" {
  description = "Map of name values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.name if v.name != null && length(v.name) > 0 }
}
output "site_recovery_replicated_vms_network_interface" {
  description = "Map of network_interface values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.network_interface if v.network_interface != null && length(v.network_interface) > 0 }
}
output "site_recovery_replicated_vms_recovery_replication_policy_id" {
  description = "Map of recovery_replication_policy_id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.recovery_replication_policy_id if v.recovery_replication_policy_id != null && length(v.recovery_replication_policy_id) > 0 }
}
output "site_recovery_replicated_vms_recovery_vault_name" {
  description = "Map of recovery_vault_name values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.recovery_vault_name if v.recovery_vault_name != null && length(v.recovery_vault_name) > 0 }
}
output "site_recovery_replicated_vms_resource_group_name" {
  description = "Map of resource_group_name values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "site_recovery_replicated_vms_source_recovery_fabric_name" {
  description = "Map of source_recovery_fabric_name values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.source_recovery_fabric_name if v.source_recovery_fabric_name != null && length(v.source_recovery_fabric_name) > 0 }
}
output "site_recovery_replicated_vms_source_recovery_protection_container_name" {
  description = "Map of source_recovery_protection_container_name values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.source_recovery_protection_container_name if v.source_recovery_protection_container_name != null && length(v.source_recovery_protection_container_name) > 0 }
}
output "site_recovery_replicated_vms_source_vm_id" {
  description = "Map of source_vm_id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.source_vm_id if v.source_vm_id != null && length(v.source_vm_id) > 0 }
}
output "site_recovery_replicated_vms_target_availability_set_id" {
  description = "Map of target_availability_set_id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.target_availability_set_id if v.target_availability_set_id != null && length(v.target_availability_set_id) > 0 }
}
output "site_recovery_replicated_vms_target_boot_diagnostic_storage_account_id" {
  description = "Map of target_boot_diagnostic_storage_account_id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.target_boot_diagnostic_storage_account_id if v.target_boot_diagnostic_storage_account_id != null && length(v.target_boot_diagnostic_storage_account_id) > 0 }
}
output "site_recovery_replicated_vms_target_capacity_reservation_group_id" {
  description = "Map of target_capacity_reservation_group_id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.target_capacity_reservation_group_id if v.target_capacity_reservation_group_id != null && length(v.target_capacity_reservation_group_id) > 0 }
}
output "site_recovery_replicated_vms_target_edge_zone" {
  description = "Map of target_edge_zone values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.target_edge_zone if v.target_edge_zone != null && length(v.target_edge_zone) > 0 }
}
output "site_recovery_replicated_vms_target_network_id" {
  description = "Map of target_network_id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.target_network_id if v.target_network_id != null && length(v.target_network_id) > 0 }
}
output "site_recovery_replicated_vms_target_proximity_placement_group_id" {
  description = "Map of target_proximity_placement_group_id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.target_proximity_placement_group_id if v.target_proximity_placement_group_id != null && length(v.target_proximity_placement_group_id) > 0 }
}
output "site_recovery_replicated_vms_target_recovery_fabric_id" {
  description = "Map of target_recovery_fabric_id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.target_recovery_fabric_id if v.target_recovery_fabric_id != null && length(v.target_recovery_fabric_id) > 0 }
}
output "site_recovery_replicated_vms_target_recovery_protection_container_id" {
  description = "Map of target_recovery_protection_container_id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.target_recovery_protection_container_id if v.target_recovery_protection_container_id != null && length(v.target_recovery_protection_container_id) > 0 }
}
output "site_recovery_replicated_vms_target_resource_group_id" {
  description = "Map of target_resource_group_id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.target_resource_group_id if v.target_resource_group_id != null && length(v.target_resource_group_id) > 0 }
}
output "site_recovery_replicated_vms_target_virtual_machine_scale_set_id" {
  description = "Map of target_virtual_machine_scale_set_id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.target_virtual_machine_scale_set_id if v.target_virtual_machine_scale_set_id != null && length(v.target_virtual_machine_scale_set_id) > 0 }
}
output "site_recovery_replicated_vms_target_virtual_machine_size" {
  description = "Map of target_virtual_machine_size values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.target_virtual_machine_size if v.target_virtual_machine_size != null && length(v.target_virtual_machine_size) > 0 }
}
output "site_recovery_replicated_vms_target_zone" {
  description = "Map of target_zone values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.target_zone if v.target_zone != null && length(v.target_zone) > 0 }
}
output "site_recovery_replicated_vms_test_network_id" {
  description = "Map of test_network_id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.test_network_id if v.test_network_id != null && length(v.test_network_id) > 0 }
}
output "site_recovery_replicated_vms_unmanaged_disk" {
  description = "Map of unmanaged_disk values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.unmanaged_disk if v.unmanaged_disk != null && length(v.unmanaged_disk) > 0 }
}

