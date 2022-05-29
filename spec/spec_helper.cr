#  Cloud Storage JSON API
#
# Stores and retrieves potentially large, immutable data objects.
#
# The version of the OpenAPI document: v1
#
# Generated by: https://openapi-generator.tech
#

# load modules
require "spec"
require "../src/google_cloud_storage"
require "vcr"

BUCKET_NAME  = ENV.fetch("BUCKET_NAME", "cloud_storage_crystal_client_test")
OBJECT_NAME  = ENV.fetch("OBJECT_NAME", "test.json")
PROJECT_NAME = ENV.fetch("PROJECT_NAME", "valid-logic-333801")
ACCESS_TOKEN = ENV.fetch("ACCESS_TOKEN", "ignored_by_vcr")

GoogleCloudStorage.configure do |config|
  config.access_token = ACCESS_TOKEN
end

VCR.configure do |settings|
  settings.filter_sensitive_data["Authorization"] = "<Authorization>"
end
