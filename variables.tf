variable "service_directory_service_iam_members" {
  description = <<EOT
Map of service_directory_service_iam_members, attributes below
Required:
    - member
    - name
    - role
Optional:
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    member = string
    name   = string
    role   = string
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

