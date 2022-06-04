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
  # A subscription to receive Google PubSub notifications.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class ServiceAccount
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The ID of the notification.
    @[JSON::Field(key: "email_address", type: String?, presence: true, ignore_serialize: email_address.nil? && !email_address_present?)]
    property email_address : String?

    @[JSON::Field(ignore: true)]
    property? email_address_present : Bool = false

    # The kind of item this is. For notifications, this is always storage#notification.
    @[JSON::Field(key: "kind", type: String?, default: "storage#serviceAccount", presence: true, ignore_serialize: kind.nil? && !kind_present?)]
    property kind : String?

    @[JSON::Field(ignore: true)]
    property? kind_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @email_address : String? = nil, @kind : String? = "storage#serviceAccount")
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
    def_equals_and_hash(@email_address, @kind)
  end
end
