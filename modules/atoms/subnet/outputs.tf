output "ids" {
  value       = "${aws_subnet.this.*.id}"
  description = "Internet Gateway ID"
}
