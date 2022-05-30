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
  # A list of hmacKeys.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class HmacKeysMetadata
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The list of items.
    @[JSON::Field(key: "items", type: Array(HmacKeyMetadata)?, presence: true, ignore_serialize: items.nil? && !items_present?)]
    property items : Array(HmacKeyMetadata)?

    @[JSON::Field(ignore: true)]
    property? items_present : Bool = false

    # The kind of item this is. For lists of hmacKeys, this is always storage#hmacKeysMetadata.
    @[JSON::Field(key: "kind", type: String?, default: "storage#hmacKeysMetadata", presence: true, ignore_serialize: kind.nil? && !kind_present?)]
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
    def initialize(*, @items : Array(HmacKeyMetadata)? = nil, @kind : String? = "storage#hmacKeysMetadata", @next_page_token : String? = nil)
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
        items == o.items &&
        kind == o.kind &&
        next_page_token == o.next_page_token
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [items, kind, next_page_token].hash
    end
  end
end
