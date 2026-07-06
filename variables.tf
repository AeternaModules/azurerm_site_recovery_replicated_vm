variable "site_recovery_replicated_vms" {
  description = <<EOT
Map of site_recovery_replicated_vms, attributes below
Required:
    - name
    - recovery_replication_policy_id
    - recovery_vault_name
    - resource_group_name
    - source_recovery_fabric_name
    - source_recovery_protection_container_name
    - source_vm_id
    - target_recovery_fabric_id
    - target_recovery_protection_container_id
    - target_resource_group_id
Optional:
    - multi_vm_group_name
    - target_availability_set_id
    - target_boot_diagnostic_storage_account_id
    - target_capacity_reservation_group_id
    - target_edge_zone
    - target_network_id
    - target_proximity_placement_group_id
    - target_virtual_machine_scale_set_id
    - target_virtual_machine_size
    - target_zone
    - test_network_id
    - managed_disk (block):
        - disk_id (required)
        - staging_storage_account_id (required)
        - target_disk_encryption (optional, block):
            - disk_encryption_key (required, block):
                - secret_url (required)
                - vault_id (required)
            - key_encryption_key (optional, block):
                - key_url (required)
                - vault_id (required)
        - target_disk_encryption_set_id (optional)
        - target_disk_type (required)
        - target_replica_disk_type (required)
        - target_resource_group_id (required)
    - network_interface (block):
        - failover_test_public_ip_address_id (optional)
        - failover_test_static_ip (optional)
        - failover_test_subnet_name (optional)
        - recovery_load_balancer_backend_address_pool_ids (optional)
        - recovery_public_ip_address_id (optional)
        - source_network_interface_id (optional)
        - target_static_ip (optional)
        - target_subnet_name (optional)
    - unmanaged_disk (block):
        - disk_uri (required)
        - staging_storage_account_id (required)
        - target_storage_account_id (required)
EOT

  type = map(object({
    name                                      = string
    recovery_replication_policy_id            = string
    recovery_vault_name                       = string
    resource_group_name                       = string
    source_recovery_fabric_name               = string
    source_recovery_protection_container_name = string
    source_vm_id                              = string
    target_recovery_fabric_id                 = string
    target_recovery_protection_container_id   = string
    target_resource_group_id                  = string
    target_virtual_machine_size               = optional(string)
    target_virtual_machine_scale_set_id       = optional(string)
    target_proximity_placement_group_id       = optional(string)
    target_network_id                         = optional(string)
    multi_vm_group_name                       = optional(string)
    target_capacity_reservation_group_id      = optional(string)
    target_boot_diagnostic_storage_account_id = optional(string)
    target_availability_set_id                = optional(string)
    target_zone                               = optional(string)
    target_edge_zone                          = optional(string)
    test_network_id                           = optional(string)
    managed_disk = optional(object({
      disk_id                    = string
      staging_storage_account_id = string
      target_disk_encryption = optional(object({
        disk_encryption_key = object({
          secret_url = string
          vault_id   = string
        })
        key_encryption_key = optional(object({
          key_url  = string
          vault_id = string
        }))
      }))
      target_disk_encryption_set_id = optional(string)
      target_disk_type              = string
      target_replica_disk_type      = string
      target_resource_group_id      = string
    }))
    network_interface = optional(object({
      failover_test_public_ip_address_id              = optional(string)
      failover_test_static_ip                         = optional(string)
      failover_test_subnet_name                       = optional(string)
      recovery_load_balancer_backend_address_pool_ids = optional(set(string))
      recovery_public_ip_address_id                   = optional(string)
      source_network_interface_id                     = optional(string)
      target_static_ip                                = optional(string)
      target_subnet_name                              = optional(string)
    }))
    unmanaged_disk = optional(object({
      disk_uri                   = string
      staging_storage_account_id = string
      target_storage_account_id  = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_replicated_vms : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_replicated_vms : (
        length(v.source_recovery_fabric_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_replicated_vms : (
        length(v.source_recovery_protection_container_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_replicated_vms : (
        v.target_zone == null || (length(v.target_zone) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_replicated_vms : (
        v.target_edge_zone == null || (length(v.target_edge_zone) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_replicated_vms : (
        v.unmanaged_disk == null || (length(v.unmanaged_disk.disk_uri) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_replicated_vms : (
        v.multi_vm_group_name == null || (length(v.multi_vm_group_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_replicated_vms : (
        v.managed_disk == null || (length(v.managed_disk.disk_id) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_replicated_vms : (
        v.target_virtual_machine_size == null || (length(v.target_virtual_machine_size) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_site_recovery_replicated_vm's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: recovery_vault_name
  #   source:    validate.RecoveryServicesVaultName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: source_vm_id
  #   source:    [from azure.ValidateResourceID] !ok
  # path: source_vm_id
  #   source:    [from azure.ValidateResourceID] err != nil
  # path: target_recovery_fabric_id
  #   source:    [from replicationfabrics.ValidateReplicationFabricID] !ok
  # path: target_recovery_fabric_id
  #   source:    [from replicationfabrics.ValidateReplicationFabricID] err != nil
  # path: recovery_replication_policy_id
  #   source:    [from replicationpolicies.ValidateReplicationPolicyID] !ok
  # path: recovery_replication_policy_id
  #   source:    [from replicationpolicies.ValidateReplicationPolicyID] err != nil
  # path: target_recovery_protection_container_id
  #   source:    [from replicationprotectioncontainers.ValidateReplicationProtectionContainerID] !ok
  # path: target_recovery_protection_container_id
  #   source:    [from replicationprotectioncontainers.ValidateReplicationProtectionContainerID] err != nil
  # path: target_resource_group_id
  #   source:    [from commonids.ValidateResourceGroupID] !ok
  # path: target_resource_group_id
  #   source:    [from commonids.ValidateResourceGroupID] err != nil
  # path: target_availability_set_id
  #   source:    [from commonids.ValidateAvailabilitySetID] !ok
  # path: target_availability_set_id
  #   source:    [from commonids.ValidateAvailabilitySetID] err != nil
  # path: target_network_id
  #   source:    [from commonids.ValidateVirtualNetworkID] !ok
  # path: target_network_id
  #   source:    [from commonids.ValidateVirtualNetworkID] err != nil
  # path: test_network_id
  #   source:    [from commonids.ValidateVirtualNetworkID] !ok
  # path: test_network_id
  #   source:    [from commonids.ValidateVirtualNetworkID] err != nil
  # path: unmanaged_disk.staging_storage_account_id
  #   source:    [from azure.ValidateResourceID] !ok
  # path: unmanaged_disk.staging_storage_account_id
  #   source:    [from azure.ValidateResourceID] err != nil
  # path: unmanaged_disk.target_storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] !ok
  # path: unmanaged_disk.target_storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] err != nil
  # path: managed_disk.staging_storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] !ok
  # path: managed_disk.staging_storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] err != nil
  # path: managed_disk.target_resource_group_id
  #   source:    [from commonids.ValidateResourceGroupID] !ok
  # path: managed_disk.target_resource_group_id
  #   source:    [from commonids.ValidateResourceGroupID] err != nil
  # path: managed_disk.target_disk_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: managed_disk.target_replica_disk_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: managed_disk.target_disk_encryption_set_id
  #   source:    [from commonids.ValidateDiskEncryptionSetID] !ok
  # path: managed_disk.target_disk_encryption_set_id
  #   source:    [from commonids.ValidateDiskEncryptionSetID] err != nil
  # path: target_proximity_placement_group_id
  #   source:    [from proximityplacementgroups.ValidateProximityPlacementGroupID] !ok
  # path: target_proximity_placement_group_id
  #   source:    [from proximityplacementgroups.ValidateProximityPlacementGroupID] err != nil
  # path: target_boot_diagnostic_storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] !ok
  # path: target_boot_diagnostic_storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] err != nil
  # path: target_capacity_reservation_group_id
  #   source:    [from capacityreservationgroups.ValidateCapacityReservationGroupID] !ok
  # path: target_capacity_reservation_group_id
  #   source:    [from capacityreservationgroups.ValidateCapacityReservationGroupID] err != nil
  # path: target_virtual_machine_scale_set_id
  #   source:    [from commonids.ValidateVirtualMachineScaleSetID] !ok
  # path: target_virtual_machine_scale_set_id
  #   source:    [from commonids.ValidateVirtualMachineScaleSetID] err != nil
}

