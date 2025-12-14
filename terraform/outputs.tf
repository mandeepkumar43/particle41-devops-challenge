output "load_balancer_url" {
  description = "URL of the Application Load Balancer"
  value       = aws_lb.alb.dns_name
}
