resource "pagerduty_jira_cloud_account_mapping_rule" "jira_cloud_account_mapping_rules" {
  for_each = var.jira_cloud_account_mapping_rules

  account_mapping = each.value.account_mapping
  name            = each.value.name
  enabled         = each.value.enabled

  dynamic "config" {
    for_each = each.value.config != null ? each.value.config : []
    content {
      dynamic "jira" {
        for_each = config.value.jira != null ? config.value.jira : []
        content {
          autocreate_jql                   = jira.value.autocreate_jql
          create_issue_on_incident_trigger = jira.value.create_issue_on_incident_trigger
          dynamic "custom_fields" {
            for_each = jira.value.custom_fields != null ? jira.value.custom_fields : []
            content {
              source_incident_field   = custom_fields.value.source_incident_field
              target_issue_field      = custom_fields.value.target_issue_field
              target_issue_field_name = custom_fields.value.target_issue_field_name
              type                    = custom_fields.value.type
              value                   = custom_fields.value.value
            }
          }
          dynamic "issue_type" {
            for_each = jira.value.issue_type != null ? jira.value.issue_type : []
            content {
              id   = issue_type.value.id
              name = issue_type.value.name
            }
          }
          dynamic "priorities" {
            for_each = jira.value.priorities != null ? jira.value.priorities : []
            content {
              jira_id      = priorities.value.jira_id
              pagerduty_id = priorities.value.pagerduty_id
            }
          }
          dynamic "project" {
            for_each = jira.value.project != null ? jira.value.project : []
            content {
              id   = project.value.id
              key  = project.value.key
              name = project.value.name
            }
          }
          dynamic "status_mapping" {
            for_each = jira.value.status_mapping != null ? jira.value.status_mapping : []
            content {
              dynamic "acknowledged" {
                for_each = status_mapping.value.acknowledged != null ? status_mapping.value.acknowledged : []
                content {
                  id   = acknowledged.value.id
                  name = acknowledged.value.name
                }
              }
              dynamic "resolved" {
                for_each = status_mapping.value.resolved != null ? status_mapping.value.resolved : []
                content {
                  id   = resolved.value.id
                  name = resolved.value.name
                }
              }
              dynamic "triggered" {
                for_each = status_mapping.value.triggered != null ? status_mapping.value.triggered : []
                content {
                  id   = triggered.value.id
                  name = triggered.value.name
                }
              }
            }
          }
          sync_notes_user = jira.value.sync_notes_user
        }
      }
      service = config.value.service
    }
  }
}

