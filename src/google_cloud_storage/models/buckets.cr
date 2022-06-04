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
  # A list of buckets.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Buckets
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The list of items.
    @[JSON::Field(key: "items", type: Array(Bucket)?, presence: true, ignore_serialize: items.nil? && !items_present?)]
    property items : Array(Bucket)?

    @[JSON::Field(ignore: true)]
    property? items_present : Bool = false

    # The kind of item this is. For lists of buckets, this is always storage#buckets.
    @[JSON::Field(key: "kind", type: String?, default: "storage#buckets", presence: true, ignore_serialize: kind.nil? && !kind_present?)]
    property kind : String?

    @[JSON::Field(ignore: true)]
    property? kind_present : Bool = false

    # The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.
    @[JSON::Field(key: "nextPageToken", type: String?, presence: true, ignore_serialize: next_page_token.nil? && !next_page_token_present?)]
    property next_page_token : String?

    @[JSON::Field(ignore: true)]
    property? next_page_token_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @items : Array(Bucket)? = nil, @kind : String? = "storage#buckets", @next_page_token : String? = nil)
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
    def_equals_and_hash(@items, @kind, @next_page_token)
  end
end
