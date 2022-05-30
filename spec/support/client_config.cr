BUCKET_NAME  = ENV.fetch("BUCKET_NAME", "cloud_storage_crystal_client_test")
OBJECT_NAME  = ENV.fetch("OBJECT_NAME", "test.json")
PROJECT_NAME = ENV.fetch("PROJECT_NAME", "valid-logic-333801")
ACCESS_TOKEN = ENV.fetch("ACCESS_TOKEN", "ignored_by_vcr")

GoogleCloudStorage.configure do |config|
  config.access_token = ACCESS_TOKEN
end
