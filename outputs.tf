output "jira_cloud_account_mapping_rules_id" {
  description = "Map of id values across all jira_cloud_account_mapping_rules, keyed the same as var.jira_cloud_account_mapping_rules except keys with no id are omitted"
  value       = { for k, v in pagerduty_jira_cloud_account_mapping_rule.jira_cloud_account_mapping_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "jira_cloud_account_mapping_rules_account_mapping" {
  description = "Map of account_mapping values across all jira_cloud_account_mapping_rules, keyed the same as var.jira_cloud_account_mapping_rules except keys with no account_mapping are omitted"
  value       = { for k, v in pagerduty_jira_cloud_account_mapping_rule.jira_cloud_account_mapping_rules : k => v.account_mapping if v.account_mapping != null && length(v.account_mapping) > 0 }
}
output "jira_cloud_account_mapping_rules_autocreate_jql_disabled_reason" {
  description = "Map of autocreate_jql_disabled_reason values across all jira_cloud_account_mapping_rules, keyed the same as var.jira_cloud_account_mapping_rules except keys with no autocreate_jql_disabled_reason are omitted"
  value       = { for k, v in pagerduty_jira_cloud_account_mapping_rule.jira_cloud_account_mapping_rules : k => v.autocreate_jql_disabled_reason if v.autocreate_jql_disabled_reason != null && length(v.autocreate_jql_disabled_reason) > 0 }
}
output "jira_cloud_account_mapping_rules_autocreate_jql_disabled_until" {
  description = "Map of autocreate_jql_disabled_until values across all jira_cloud_account_mapping_rules, keyed the same as var.jira_cloud_account_mapping_rules except keys with no autocreate_jql_disabled_until are omitted"
  value       = { for k, v in pagerduty_jira_cloud_account_mapping_rule.jira_cloud_account_mapping_rules : k => v.autocreate_jql_disabled_until if v.autocreate_jql_disabled_until != null && length(v.autocreate_jql_disabled_until) > 0 }
}
output "jira_cloud_account_mapping_rules_config" {
  description = "Map of config values across all jira_cloud_account_mapping_rules, keyed the same as var.jira_cloud_account_mapping_rules except keys with no config are omitted"
  value       = { for k, v in pagerduty_jira_cloud_account_mapping_rule.jira_cloud_account_mapping_rules : k => v.config if v.config != null && length(v.config) > 0 }
}
output "jira_cloud_account_mapping_rules_enabled" {
  description = "Map of enabled values across all jira_cloud_account_mapping_rules, keyed the same as var.jira_cloud_account_mapping_rules except keys with no enabled are omitted"
  value       = { for k, v in pagerduty_jira_cloud_account_mapping_rule.jira_cloud_account_mapping_rules : k => v.enabled if v.enabled != null }
}
output "jira_cloud_account_mapping_rules_name" {
  description = "Map of name values across all jira_cloud_account_mapping_rules, keyed the same as var.jira_cloud_account_mapping_rules except keys with no name are omitted"
  value       = { for k, v in pagerduty_jira_cloud_account_mapping_rule.jira_cloud_account_mapping_rules : k => v.name if v.name != null && length(v.name) > 0 }
}

