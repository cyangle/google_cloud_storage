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
  # The owner of the bucket. This is always the project team's owner group.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class BucketOwner
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The entity, in the form project-owner-projectId.
    @[JSON::Field(key: "entity", type: String?, presence: true, ignore_serialize: entity.nil? && !entity_present?)]
    property entity : String?

    @[JSON::Field(ignore: true)]
    property? entity_present : Bool = false

    # The ID for the entity.
    @[JSON::Field(key: "entityId", type: String?, presence: true, ignore_serialize: entity_id.nil? && !entity_id_present?)]
    property entity_id : String?

    @[JSON::Field(ignore: true)]
    property? entity_id_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @entity : String? = nil, @entity_id : String? = nil)
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
        entity == o.entity &&
        entity_id == o.entity_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [UInt64] Hash code
    def_hash(@entity, @entity_id)
  end
end
