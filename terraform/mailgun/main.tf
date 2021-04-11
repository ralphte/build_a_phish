resource "mailgun_domain" "mailgun_phish" {
  name          = var.mailgun_domain
  region        = "us"
  spam_action   = "disabled"
  smtp_password   = var.mailgun_smtp_password
  dkim_key_size   = 1024
}