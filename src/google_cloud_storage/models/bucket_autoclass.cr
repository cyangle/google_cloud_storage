#  Cloud Storage JSON API
#
# Stores and retrieves potentially large, immutable data objects.
#
# The version of the OpenAPI document: v1
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

module GoogleCloudStorage
  # The bucket's Autoclass configuration.
  class BucketAutoclass
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Whether or not Autoclass is enabled on this bucket
    @[JSON::Field(key: "enabled", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter enabled : Bool? = nil

    # A date and time in RFC 3339 format representing the instant at which \"enabled\" was last toggled.
    @[JSON::Field(key: "toggleTime", type: Time?, default: nil, required: false, nullable: false, emit_null: false, converter: Time::RFC3339Converter)]
    getter toggle_time : Time? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @enabled : Bool? = nil,
      @toggle_time : Time? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enabled Object to be assigned
    def enabled=(new_value : Bool?)
      @enabled = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] toggle_time Object to be assigned
    def toggle_time=(new_value : Time?)
      @toggle_time = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@enabled, @toggle_time)
  end
end
