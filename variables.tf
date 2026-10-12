variable "jira_cloud_account_mapping_rules" {
  description = <<EOT
Map of jira_cloud_account_mapping_rules, attributes below
Required:
    - account_mapping
    - name
Optional:
    - enabled
    - config (block):
        - jira (optional, block):
            - autocreate_jql (optional)
            - create_issue_on_incident_trigger (optional)
            - custom_fields (optional, block):
                - source_incident_field (optional)
                - target_issue_field (required)
                - target_issue_field_name (required)
                - type (required)
                - value (optional)
            - issue_type (optional, block):
                - id (required)
                - name (required)
            - priorities (optional, block):
                - jira_id (required)
                - pagerduty_id (required)
            - project (optional, block):
                - id (required)
                - key (required)
                - name (required)
            - status_mapping (optional, block):
                - acknowledged (optional, block):
                    - id (optional)
                    - name (optional)
                - resolved (optional, block):
                    - id (optional)
                    - name (optional)
                - triggered (optional, block):
                    - id (required)
                    - name (required)
            - sync_notes_user (optional)
        - service (required)
EOT

  type = map(object({
    account_mapping = string
    name            = string
    enabled         = optional(bool)
    config = optional(list(object({
      jira = optional(list(object({
        autocreate_jql                   = optional(string)
        create_issue_on_incident_trigger = optional(bool)
        custom_fields = optional(list(object({
          source_incident_field   = optional(string)
          target_issue_field      = string
          target_issue_field_name = string
          type                    = string
          value                   = optional(string)
        })))
        issue_type = optional(list(object({
          id   = string
          name = string
        })))
        priorities = optional(list(object({
          jira_id      = string
          pagerduty_id = string
        })))
        project = optional(list(object({
          id   = string
          key  = string
          name = string
        })))
        status_mapping = optional(list(object({
          acknowledged = optional(list(object({
            id   = optional(string)
            name = optional(string)
          })))
          resolved = optional(list(object({
            id   = optional(string)
            name = optional(string)
          })))
          triggered = optional(list(object({
            id   = string
            name = string
          })))
        })))
        sync_notes_user = optional(string)
      })))
      service = string
    })))
  }))
}

