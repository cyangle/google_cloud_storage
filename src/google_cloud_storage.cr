#  Cloud Storage JSON API
#
# Stores and retrieves potentially large, immutable data objects.
#
# The version of the OpenAPI document: v1
#
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 5.3.1-SNAPSHOT
#

# Dependencies
require "crest"
require "log"
require "nason"
require "time"
require "uri"

# Project files
require "./google_cloud_storage/ext/**"
require "./google_cloud_storage/configuration.cr"
require "./google_cloud_storage/api_error.cr"
require "./google_cloud_storage/api_client.cr"
require "./google_cloud_storage/models/**"
require "./google_cloud_storage/api/**"

module GoogleCloudStorage
  Log = ::Log.for("GoogleCloudStorage") # => Log for GoogleCloudStorage source

  VERSION = {{ `shards version #{__DIR__}`.chomp.stringify }}

  # Return the default `Configuration` object.
  def self.configure
    Configuration.default
  end

  # Customize default settings for the SDK using block.
  #
  # ```
  # GoogleCloudStorage.configure do |config|
  #   config.username = "xxx"
  #   config.password = "xxx"
  # end
  # ```
  def self.configure
    yield Configuration.default
  end
end
