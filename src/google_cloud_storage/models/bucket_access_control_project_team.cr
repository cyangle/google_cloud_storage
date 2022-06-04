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
  # The project team associated with the entity, if any.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class BucketAccessControlProjectTeam
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The project number.
    @[JSON::Field(key: "projectNumber", type: String?, presence: true, ignore_serialize: project_number.nil? && !project_number_present?)]
    property project_number : String?

    @[JSON::Field(ignore: true)]
    property? project_number_present : Bool = false

    # The team.
    @[JSON::Field(key: "team", type: String?, presence: true, ignore_serialize: team.nil? && !team_present?)]
    property team : String?

    @[JSON::Field(ignore: true)]
    property? team_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @project_number : String? = nil, @team : String? = nil)
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
    def_equals_and_hash(@project_number, @team)
  end
end
