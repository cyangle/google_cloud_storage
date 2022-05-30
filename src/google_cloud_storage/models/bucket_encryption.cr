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
  # Encryption configuration for a bucket.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class BucketEncryption
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # A Cloud KMS key that will be used to encrypt objects inserted into this bucket, if no encryption method is specified.
    @[JSON::Field(key: "defaultKmsKeyName", type: String?, presence: true, ignore_serialize: default_kms_key_name.nil? && !default_kms_key_name_present?)]
    property default_kms_key_name : String?

    @[JSON::Field(ignore: true)]
    property? default_kms_key_name_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @default_kms_key_name : String? = nil)
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
        default_kms_key_name == o.default_kms_key_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [default_kms_key_name].hash
    end
  end
end
