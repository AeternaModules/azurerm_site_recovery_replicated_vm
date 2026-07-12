output "site_recovery_replicated_vms_managed_disk" {
  description = "Map of managed_disk values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.managed_disk }
}
output "site_recovery_replicated_vms_multi_vm_group_name" {
  description = "Map of multi_vm_group_name values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.multi_vm_group_name }
}
output "site_recovery_replicated_vms_name" {
  description = "Map of name values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.name }
}
output "site_recovery_replicated_vms_network_interface" {
  description = "Map of network_interface values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.network_interface }
}
output "site_recovery_replicated_vms_recovery_replication_policy_id" {
  description = "Map of recovery_replication_policy_id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.recovery_replication_policy_id }
}
output "site_recovery_replicated_vms_recovery_vault_name" {
  description = "Map of recovery_vault_name values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.recovery_vault_name }
}
output "site_recovery_replicated_vms_resource_group_name" {
  description = "Map of resource_group_name values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.resource_group_name }
}
output "site_recovery_replicated_vms_source_recovery_fabric_name" {
  description = "Map of source_recovery_fabric_name values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.source_recovery_fabric_name }
}
output "site_recovery_replicated_vms_source_recovery_protection_container_name" {
  description = "Map of source_recovery_protection_container_name values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.source_recovery_protection_container_name }
}
output "site_recovery_replicated_vms_source_vm_id" {
  description = "Map of source_vm_id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.source_vm_id }
}
output "site_recovery_replicated_vms_target_availability_set_id" {
  description = "Map of target_availability_set_id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.target_availability_set_id }
}
output "site_recovery_replicated_vms_target_boot_diagnostic_storage_account_id" {
  description = "Map of target_boot_diagnostic_storage_account_id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.target_boot_diagnostic_storage_account_id }
}
output "site_recovery_replicated_vms_target_capacity_reservation_group_id" {
  description = "Map of target_capacity_reservation_group_id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.target_capacity_reservation_group_id }
}
output "site_recovery_replicated_vms_target_edge_zone" {
  description = "Map of target_edge_zone values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.target_edge_zone }
}
output "site_recovery_replicated_vms_target_network_id" {
  description = "Map of target_network_id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.target_network_id }
}
output "site_recovery_replicated_vms_target_proximity_placement_group_id" {
  description = "Map of target_proximity_placement_group_id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.target_proximity_placement_group_id }
}
output "site_recovery_replicated_vms_target_recovery_fabric_id" {
  description = "Map of target_recovery_fabric_id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.target_recovery_fabric_id }
}
output "site_recovery_replicated_vms_target_recovery_protection_container_id" {
  description = "Map of target_recovery_protection_container_id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.target_recovery_protection_container_id }
}
output "site_recovery_replicated_vms_target_resource_group_id" {
  description = "Map of target_resource_group_id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.target_resource_group_id }
}
output "site_recovery_replicated_vms_target_virtual_machine_scale_set_id" {
  description = "Map of target_virtual_machine_scale_set_id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.target_virtual_machine_scale_set_id }
}
output "site_recovery_replicated_vms_target_virtual_machine_size" {
  description = "Map of target_virtual_machine_size values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.target_virtual_machine_size }
}
output "site_recovery_replicated_vms_target_zone" {
  description = "Map of target_zone values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.target_zone }
}
output "site_recovery_replicated_vms_test_network_id" {
  description = "Map of test_network_id values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.test_network_id }
}
output "site_recovery_replicated_vms_unmanaged_disk" {
  description = "Map of unmanaged_disk values across all site_recovery_replicated_vms, keyed the same as var.site_recovery_replicated_vms"
  value       = { for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : k => v.unmanaged_disk }
}

