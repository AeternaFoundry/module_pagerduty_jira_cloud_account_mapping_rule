output "jira_cloud_account_mapping_rules_id" {
  description = "Map of id values across all jira_cloud_account_mapping_rules, keyed the same as var.jira_cloud_account_mapping_rules"
  value       = { for k, v in pagerduty_jira_cloud_account_mapping_rule.jira_cloud_account_mapping_rules : k => v.id }
}
output "jira_cloud_account_mapping_rules_account_mapping" {
  description = "Map of account_mapping values across all jira_cloud_account_mapping_rules, keyed the same as var.jira_cloud_account_mapping_rules"
  value       = { for k, v in pagerduty_jira_cloud_account_mapping_rule.jira_cloud_account_mapping_rules : k => v.account_mapping }
}
output "jira_cloud_account_mapping_rules_autocreate_jql_disabled_reason" {
  description = "Map of autocreate_jql_disabled_reason values across all jira_cloud_account_mapping_rules, keyed the same as var.jira_cloud_account_mapping_rules"
  value       = { for k, v in pagerduty_jira_cloud_account_mapping_rule.jira_cloud_account_mapping_rules : k => v.autocreate_jql_disabled_reason }
}
output "jira_cloud_account_mapping_rules_autocreate_jql_disabled_until" {
  description = "Map of autocreate_jql_disabled_until values across all jira_cloud_account_mapping_rules, keyed the same as var.jira_cloud_account_mapping_rules"
  value       = { for k, v in pagerduty_jira_cloud_account_mapping_rule.jira_cloud_account_mapping_rules : k => v.autocreate_jql_disabled_until }
}
output "jira_cloud_account_mapping_rules_config" {
  description = "Map of config values across all jira_cloud_account_mapping_rules, keyed the same as var.jira_cloud_account_mapping_rules"
  value       = { for k, v in pagerduty_jira_cloud_account_mapping_rule.jira_cloud_account_mapping_rules : k => v.config }
}
output "jira_cloud_account_mapping_rules_enabled" {
  description = "Map of enabled values across all jira_cloud_account_mapping_rules, keyed the same as var.jira_cloud_account_mapping_rules"
  value       = { for k, v in pagerduty_jira_cloud_account_mapping_rule.jira_cloud_account_mapping_rules : k => v.enabled }
}
output "jira_cloud_account_mapping_rules_name" {
  description = "Map of name values across all jira_cloud_account_mapping_rules, keyed the same as var.jira_cloud_account_mapping_rules"
  value       = { for k, v in pagerduty_jira_cloud_account_mapping_rule.jira_cloud_account_mapping_rules : k => v.name }
}

