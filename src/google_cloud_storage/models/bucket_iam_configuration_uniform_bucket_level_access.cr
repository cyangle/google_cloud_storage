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
  # The bucket's uniform bucket-level access configuration.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class BucketIamConfigurationUniformBucketLevelAccess
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # If set, access is controlled only by bucket-level or above IAM policies.
    @[JSON::Field(key: "enabled", type: Bool?, presence: true, ignore_serialize: enabled.nil? && !enabled_present?)]
    property enabled : Bool?

    @[JSON::Field(ignore: true)]
    property? enabled_present : Bool = false

    # The deadline for changing iamConfiguration.uniformBucketLevelAccess.enabled from true to false in RFC 3339  format. iamConfiguration.uniformBucketLevelAccess.enabled may be changed from true to false until the locked time, after which the field is immutable.
    @[JSON::Field(key: "lockedTime", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: locked_time.nil? && !locked_time_present?)]
    property locked_time : Time?

    @[JSON::Field(ignore: true)]
    property? locked_time_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @enabled : Bool? = nil,
      @locked_time : Time? = nil
    )
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

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@enabled, @enabled_present, @locked_time, @locked_time_present)
  end
end
