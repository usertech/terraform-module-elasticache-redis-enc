output "id" {
  value       = "${join("", aws_elasticache_replication_group.redis_enc.*.id)}"
  description = "Redis cluster ID"
}

output "port" {
  value       = "${var.port}"
  description = "Redis port"
}

output "endpoint" {
  value       = "${join("", aws_elasticache_replication_group.redis_enc.*.primary_endpoint_address)}"
  description = "Endpoint URL address"
}
