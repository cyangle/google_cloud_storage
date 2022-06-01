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
  # The bucket's Autoclass configuration.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class BucketAutoclass
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # Whether or not Autoclass is enabled on this bucket
    @[JSON::Field(key: "enabled", type: Bool?, presence: true, ignore_serialize: enabled.nil? && !enabled_present?)]
    property enabled : Bool?

    @[JSON::Field(ignore: true)]
    property? enabled_present : Bool = false

    # A date and time in RFC 3339 format representing the instant at which \"enabled\" was last toggled.
    @[JSON::Field(key: "toggleTime", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: toggle_time.nil? && !toggle_time_present?)]
    property toggle_time : Time?

    @[JSON::Field(ignore: true)]
    property? toggle_time_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @enabled : Bool? = nil, @toggle_time : Time? = nil)
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
        enabled == o.enabled &&
        toggle_time == o.toggle_time
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [UInt64] Hash code
    def_hash(@enabled, @toggle_time)
  end
end
