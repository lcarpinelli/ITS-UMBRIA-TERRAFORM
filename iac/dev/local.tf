  locals {
    storage_account_name         = lower("${var.prefix}st${var.environment}${var.region}${var.instance}")
    app_service_plan_name        = "${var.prefix}-asp-${var.environment}-${var.region}-${var.instance}"
    resource_group_name          = "${var.prefix}-rg-${var.environment}-${var.region}-${var.instance}"
    application_insights_name    = "${var.prefix}-appi-${var.environment}-${var.region}-${var.instance}"
    log_analytics_workspace_name = "${var.prefix}-log-${var.environment}-${var.region}-${var.instance}"
    function_app_name            = "${var.prefix}-funci-${var.environment}-${var.region}-${var.instance}"
    keyvault_name                ="${var.prefix}-kv-${var.environment}-${var.region}-${var.instance}"

    subresource = {
      app_service     = "sites"
      storage_account = "blob"
    }
}
