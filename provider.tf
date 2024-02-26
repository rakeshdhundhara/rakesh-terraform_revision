# Configure terraform
terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "~> 2.44"  # Update this line
    }
  }
}

# Configure the New Relic provider
provider "newrelic" {
  account_id = var.account_id
  api_key = "NRAK-RKR4W00BTZXP9II15IWZQKC0SLR"
  region = "US"                    # Valid regions are US and EU
}