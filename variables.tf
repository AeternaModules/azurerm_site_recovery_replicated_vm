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
        - disk_id (optional)
        - staging_storage_account_id (optional)
        - target_disk_encryption (optional, block):
            - disk_encryption_key (optional, block):
                - secret_url (optional)
                - vault_id (optional)
            - key_encryption_key (optional, block):
                - key_url (optional)
                - vault_id (optional)
        - target_disk_encryption_set_id (optional)
        - target_disk_type (optional)
        - target_replica_disk_type (optional)
        - target_resource_group_id (optional)
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
        - disk_uri (optional)
        - staging_storage_account_id (optional)
        - target_storage_account_id (optional)
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
    managed_disk = optional(list(object({
      disk_id                    = optional(string)
      staging_storage_account_id = optional(string)
      target_disk_encryption = optional(list(object({
        disk_encryption_key = optional(list(object({
          secret_url = optional(string)
          vault_id   = optional(string)
        })))
        key_encryption_key = optional(list(object({
          key_url  = optional(string)
          vault_id = optional(string)
        })))
      })))
      target_disk_encryption_set_id = optional(string)
      target_disk_type              = optional(string)
      target_replica_disk_type      = optional(string)
      target_resource_group_id      = optional(string)
    })))
    network_interface = optional(list(object({
      failover_test_public_ip_address_id              = optional(string)
      failover_test_static_ip                         = optional(string)
      failover_test_subnet_name                       = optional(string)
      recovery_load_balancer_backend_address_pool_ids = optional(set(string))
      recovery_public_ip_address_id                   = optional(string)
      source_network_interface_id                     = optional(string)
      target_static_ip                                = optional(string)
      target_subnet_name                              = optional(string)
    })))
    unmanaged_disk = optional(list(object({
      disk_uri                   = optional(string)
      staging_storage_account_id = optional(string)
      target_storage_account_id  = optional(string)
    })))
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
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_replicated_vms : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_replicated_vms : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
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
        v.unmanaged_disk == null || alltrue([for item in v.unmanaged_disk : (item.disk_uri == null || (length(item.disk_uri) > 0))])
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
        v.managed_disk == null || alltrue([for item in v.managed_disk : (item.disk_id == null || (length(item.disk_id) > 0))])
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
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_replicated_vms : (
        v.network_interface == null || alltrue([for item in v.network_interface : (item.failover_test_static_ip == null || (length(item.failover_test_static_ip) > 0))])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_replicated_vms : (
        v.network_interface == null || alltrue([for item in v.network_interface : (item.target_static_ip == null || (length(item.target_static_ip) > 0))])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_replicated_vms : (
        v.network_interface == null || alltrue([for item in v.network_interface : (item.failover_test_subnet_name == null || (length(item.failover_test_subnet_name) > 0))])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_replicated_vms : (
        v.network_interface == null || alltrue([for item in v.network_interface : (item.target_subnet_name == null || (length(item.target_subnet_name) > 0))])
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 46 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

