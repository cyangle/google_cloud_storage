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
  @[JSON::Serializable::Options(emit_nulls: true)]
  class ComposeRequestSourceObjectsInner
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The generation of this object to use as the source.
    @[JSON::Field(key: "generation", type: String?, presence: true, ignore_serialize: generation.nil? && !generation_present?)]
    property generation : String?

    @[JSON::Field(ignore: true)]
    property? generation_present : Bool = false

    # The source object's name. All source objects must reside in the same bucket.
    @[JSON::Field(key: "name", type: String?, presence: true, ignore_serialize: name.nil? && !name_present?)]
    property name : String?

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    @[JSON::Field(key: "objectPreconditions", type: ComposeRequestSourceObjectsInnerObjectPreconditions?, presence: true, ignore_serialize: object_preconditions.nil? && !object_preconditions_present?)]
    property object_preconditions : ComposeRequestSourceObjectsInnerObjectPreconditions?

    @[JSON::Field(ignore: true)]
    property? object_preconditions_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @generation : String? = nil, @name : String? = nil, @object_preconditions : ComposeRequestSourceObjectsInnerObjectPreconditions? = nil)
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
        generation == o.generation &&
        name == o.name &&
        object_preconditions == o.object_preconditions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [generation, name, object_preconditions].hash
    end
  end
end
