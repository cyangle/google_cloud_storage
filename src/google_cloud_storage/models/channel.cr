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
  # An notification channel used to watch for resource changes.
  class Channel
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The address where notifications are delivered for this channel.
    @[JSON::Field(key: "address", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address : String? = nil

    # Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds. Optional.
    @[JSON::Field(key: "expiration", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expiration : String? = nil

    # A UUID or similar unique string that identifies this channel.
    @[JSON::Field(key: "id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter id : String? = nil

    # Identifies this as a notification channel used to watch for changes to a resource, which is \"api#channel\".
    @[JSON::Field(key: "kind", type: String?, default: "api#channel", required: false, nullable: false, emit_null: false)]
    getter kind : String? = "api#channel"

    # Additional parameters controlling delivery channel behavior. Optional.
    @[JSON::Field(key: "params", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter params : Hash(String, String)? = nil

    # A Boolean value to indicate whether payload is wanted. Optional.
    @[JSON::Field(key: "payload", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payload : Bool? = nil

    # An opaque ID that identifies the resource being watched on this channel. Stable across different API versions.
    @[JSON::Field(key: "resourceId", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter resource_id : String? = nil

    # A version-specific identifier for the watched resource.
    @[JSON::Field(key: "resourceUri", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter resource_uri : String? = nil

    # An arbitrary string delivered to the target address with each notification delivered over this channel. Optional.
    @[JSON::Field(key: "token", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter token : String? = nil

    # The type of delivery mechanism used for this channel.
    @[JSON::Field(key: "type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter _type : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address : String? = nil,
      @expiration : String? = nil,
      @id : String? = nil,
      @kind : String? = "api#channel",
      @params : Hash(String, String)? = nil,
      @payload : Bool? = nil,
      @resource_id : String? = nil,
      @resource_uri : String? = nil,
      @token : String? = nil,
      @_type : String? = nil
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
    # @param [Object] address Object to be assigned
    def address=(new_value : String?)
      @address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expiration Object to be assigned
    def expiration=(new_value : String?)
      @expiration = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(new_value : String?)
      @id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] kind Object to be assigned
    def kind=(new_value : String?)
      @kind = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] params Object to be assigned
    def params=(new_value : Hash(String, String)?)
      @params = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payload Object to be assigned
    def payload=(new_value : Bool?)
      @payload = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] resource_id Object to be assigned
    def resource_id=(new_value : String?)
      @resource_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] resource_uri Object to be assigned
    def resource_uri=(new_value : String?)
      @resource_uri = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] token Object to be assigned
    def token=(new_value : String?)
      @token = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      @_type = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address, @expiration, @id, @kind, @params, @payload, @resource_id, @resource_uri, @token, @_type)
  end
end
