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
  # An access-control list.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class BucketAccessControls
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # The list of items.
    @[JSON::Field(key: "items", type: Array(BucketAccessControl)?, presence: true, ignore_serialize: items.nil? && !items_present?)]
    property items : Array(BucketAccessControl)?

    @[JSON::Field(ignore: true)]
    property? items_present : Bool = false

    # The kind of item this is. For lists of bucket access control entries, this is always storage#bucketAccessControls.
    @[JSON::Field(key: "kind", type: String?, default: "storage#bucketAccessControls", presence: true, ignore_serialize: kind.nil? && !kind_present?)]
    property kind : String? = "storage#bucketAccessControls"

    @[JSON::Field(ignore: true)]
    property? kind_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @items : Array(BucketAccessControl)? = nil,
      @kind : String? = "storage#bucketAccessControls"
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
    def_equals_and_hash(@items, @items_present, @kind, @kind_present)
  end
end
