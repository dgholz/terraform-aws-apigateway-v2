variable "create" {
  description = "Controls if API Gateway resources should be created"
  type        = bool
  default     = true
}

variable "create_api_gateway" {
  description = "Whether to create API Gateway"
  type        = bool
  default     = true
}

variable "create_default_stage" {
  description = "Whether to create default stage"
  type        = bool
  default     = true
}

variable "create_default_stage_api_mapping" {
  description = "Whether to create default stage API mapping"
  type        = bool
  default     = true
}

//variable "create_stage" {
//  description = "Whether to create custom stage"
//  type        = bool
//  default     = false
//}
//
//variable "create_stage_api_mapping" {
//  description = "Whether to create stage API mapping"
//  type        = bool
//  default     = false
//}

variable "create_api_domain_name" {
  description = "Whether to create API domain name resource"
  type        = bool
  default     = true
}

variable "create_routes_and_integrations" {
  description = "Whether to create routes and integrations resources"
  type        = bool
  default     = true
}


# API Gateway
variable "name" {
  description = "The name of the API"
  type        = string
  default     = ""
}

variable "description" {
  description = "The description of the API."
  type        = string
  default     = null
}

variable "protocol_type" {
  description = "The API protocol. Valid values: HTTP, WEBSOCKET"
  type        = string
  default     = "HTTP"
}

variable "api_key_selection_expression" {
  description = "An API key selection expression. Valid values: $context.authorizer.usageIdentifierKey, $request.header.x-api-key."
  type        = string
  default     = "$request.header.x-api-key"
}

variable "route_key" {
  description = "Part of quick create. Specifies any route key. Applicable for HTTP APIs."
  type        = string
  default     = null
}

variable "route_selection_expression" {
  description = "The route selection expression for the API."
  type        = string
  default     = "$request.method $request.path"
}

variable "cors_configuration" {
  description = "The cross-origin resource sharing (CORS) configuration. Applicable for HTTP APIs."
  type        = any
  default     = {}
}

variable "credentials_arn" {
  description = "Part of quick create. Specifies any credentials required for the integration. Applicable for HTTP APIs."
  type        = string
  default     = null
}

variable "target" {
  description = "Part of quick create. Quick create produces an API with an integration, a default catch-all route, and a default stage which is configured to automatically deploy changes. For HTTP integrations, specify a fully qualified URL. For Lambda integrations, specify a function ARN. The type of the integration will be HTTP_PROXY or AWS_PROXY, respectively. Applicable for HTTP APIs."
  type        = string
  default     = null
}

variable "api_version" {
  description = "A version identifier for the API"
  type        = string
  default     = null
}

variable "tags" {
  description = "A mapping of tags to assign to API gateway resources."
  type        = map(string)
  default     = {}
}

#####
# default stage


#####
# default stage API mapping

####
# domain name
variable "domain_name" {
  description = "The domain name to use for API gateway"
  type        = string
  default     = null
}

variable "domain_name_certificate_arn" {
  description = "The ARN of an AWS-managed certificate that will be used by the endpoint for the domain name"
  type        = string
  default     = null
}

variable "domain_name_tags" {
  description = "A mapping of tags to assign to API domain name resource."
  type        = map(string)
  default     = {}
}

####
# routes and integrations
variable "integrations" {
  description = "Map of API gateway routes with integrations"
  type        = map(any)
  default     = {}
}


//variable "" {
//  description = ""
//  type        = string
//  default     = null
//}