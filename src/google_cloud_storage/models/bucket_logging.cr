#  Cloud Storage JSON API
#
# Stores and retrieves potentially large, immutable data objects.
#
# The version of the OpenAPI document: v1
#
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module GoogleCloudStorage
  # The bucket's logging configuration, which defines the destination bucket and optional name prefix for the current bucket's logs.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class BucketLogging
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The destination bucket where the current bucket's logs should be placed.
    @[JSON::Field(key: "logBucket", type: String?, presence: true, ignore_serialize: log_bucket.nil? && !log_bucket_present?)]
    property log_bucket : String?

    @[JSON::Field(ignore: true)]
    property? log_bucket_present : Bool = false

    # A prefix for log object names.
    @[JSON::Field(key: "logObjectPrefix", type: String?, presence: true, ignore_serialize: log_object_prefix.nil? && !log_object_prefix_present?)]
    property log_object_prefix : String?

    @[JSON::Field(ignore: true)]
    property? log_object_prefix_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @log_bucket : String? = nil, @log_object_prefix : String? = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        log_bucket == o.log_bucket &&
        log_object_prefix == o.log_object_prefix
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [log_bucket, log_object_prefix].hash
    end
  end
end
