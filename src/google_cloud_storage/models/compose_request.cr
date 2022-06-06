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
  # A Compose request.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class ComposeRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "destination", type: Object?, presence: true, ignore_serialize: destination.nil? && !destination_present?)]
    property destination : Object?

    @[JSON::Field(ignore: true)]
    property? destination_present : Bool = false

    # The kind of item this is.
    @[JSON::Field(key: "kind", type: String?, default: "storage#composeRequest", presence: true, ignore_serialize: kind.nil? && !kind_present?)]
    property kind : String? = "storage#composeRequest"

    @[JSON::Field(ignore: true)]
    property? kind_present : Bool = false

    # The list of source objects that will be concatenated into a single object.
    @[JSON::Field(key: "sourceObjects", type: Array(ComposeRequestSourceObjectsInner)?, presence: true, ignore_serialize: source_objects.nil? && !source_objects_present?)]
    property source_objects : Array(ComposeRequestSourceObjectsInner)?

    @[JSON::Field(ignore: true)]
    property? source_objects_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @destination : Object? = nil,
      @kind : String? = "storage#composeRequest",
      @source_objects : Array(ComposeRequestSourceObjectsInner)? = nil
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
    def_equals_and_hash(@destination, @destination_present, @kind, @kind_present, @source_objects, @source_objects_present)
  end
end
