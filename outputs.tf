output "site_recovery_replicated_vms" {
  description = "All site_recovery_replicated_vm resources"
  value       = azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms
}
output "site_recovery_replicated_vms_managed_disk" {
  description = "List of managed_disk values across all site_recovery_replicated_vms"
  value       = [for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : v.managed_disk]
}
output "site_recovery_replicated_vms_multi_vm_group_name" {
  description = "List of multi_vm_group_name values across all site_recovery_replicated_vms"
  value       = [for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : v.multi_vm_group_name]
}
output "site_recovery_replicated_vms_name" {
  description = "List of name values across all site_recovery_replicated_vms"
  value       = [for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : v.name]
}
output "site_recovery_replicated_vms_network_interface" {
  description = "List of network_interface values across all site_recovery_replicated_vms"
  value       = [for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : v.network_interface]
}
output "site_recovery_replicated_vms_recovery_replication_policy_id" {
  description = "List of recovery_replication_policy_id values across all site_recovery_replicated_vms"
  value       = [for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : v.recovery_replication_policy_id]
}
output "site_recovery_replicated_vms_recovery_vault_name" {
  description = "List of recovery_vault_name values across all site_recovery_replicated_vms"
  value       = [for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : v.recovery_vault_name]
}
output "site_recovery_replicated_vms_resource_group_name" {
  description = "List of resource_group_name values across all site_recovery_replicated_vms"
  value       = [for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : v.resource_group_name]
}
output "site_recovery_replicated_vms_source_recovery_fabric_name" {
  description = "List of source_recovery_fabric_name values across all site_recovery_replicated_vms"
  value       = [for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : v.source_recovery_fabric_name]
}
output "site_recovery_replicated_vms_source_recovery_protection_container_name" {
  description = "List of source_recovery_protection_container_name values across all site_recovery_replicated_vms"
  value       = [for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : v.source_recovery_protection_container_name]
}
output "site_recovery_replicated_vms_source_vm_id" {
  description = "List of source_vm_id values across all site_recovery_replicated_vms"
  value       = [for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : v.source_vm_id]
}
output "site_recovery_replicated_vms_target_availability_set_id" {
  description = "List of target_availability_set_id values across all site_recovery_replicated_vms"
  value       = [for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : v.target_availability_set_id]
}
output "site_recovery_replicated_vms_target_boot_diagnostic_storage_account_id" {
  description = "List of target_boot_diagnostic_storage_account_id values across all site_recovery_replicated_vms"
  value       = [for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : v.target_boot_diagnostic_storage_account_id]
}
output "site_recovery_replicated_vms_target_capacity_reservation_group_id" {
  description = "List of target_capacity_reservation_group_id values across all site_recovery_replicated_vms"
  value       = [for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : v.target_capacity_reservation_group_id]
}
output "site_recovery_replicated_vms_target_edge_zone" {
  description = "List of target_edge_zone values across all site_recovery_replicated_vms"
  value       = [for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : v.target_edge_zone]
}
output "site_recovery_replicated_vms_target_network_id" {
  description = "List of target_network_id values across all site_recovery_replicated_vms"
  value       = [for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : v.target_network_id]
}
output "site_recovery_replicated_vms_target_proximity_placement_group_id" {
  description = "List of target_proximity_placement_group_id values across all site_recovery_replicated_vms"
  value       = [for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : v.target_proximity_placement_group_id]
}
output "site_recovery_replicated_vms_target_recovery_fabric_id" {
  description = "List of target_recovery_fabric_id values across all site_recovery_replicated_vms"
  value       = [for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : v.target_recovery_fabric_id]
}
output "site_recovery_replicated_vms_target_recovery_protection_container_id" {
  description = "List of target_recovery_protection_container_id values across all site_recovery_replicated_vms"
  value       = [for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : v.target_recovery_protection_container_id]
}
output "site_recovery_replicated_vms_target_resource_group_id" {
  description = "List of target_resource_group_id values across all site_recovery_replicated_vms"
  value       = [for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : v.target_resource_group_id]
}
output "site_recovery_replicated_vms_target_virtual_machine_scale_set_id" {
  description = "List of target_virtual_machine_scale_set_id values across all site_recovery_replicated_vms"
  value       = [for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : v.target_virtual_machine_scale_set_id]
}
output "site_recovery_replicated_vms_target_virtual_machine_size" {
  description = "List of target_virtual_machine_size values across all site_recovery_replicated_vms"
  value       = [for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : v.target_virtual_machine_size]
}
output "site_recovery_replicated_vms_target_zone" {
  description = "List of target_zone values across all site_recovery_replicated_vms"
  value       = [for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : v.target_zone]
}
output "site_recovery_replicated_vms_test_network_id" {
  description = "List of test_network_id values across all site_recovery_replicated_vms"
  value       = [for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : v.test_network_id]
}
output "site_recovery_replicated_vms_unmanaged_disk" {
  description = "List of unmanaged_disk values across all site_recovery_replicated_vms"
  value       = [for k, v in azurerm_site_recovery_replicated_vm.site_recovery_replicated_vms : v.unmanaged_disk]
}

