#  Cloud Storage JSON API
#
# Stores and retrieves potentially large, immutable data objects.
#
# The version of the OpenAPI document: v1
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./notification"

module GoogleCloudStorage
  # A list of notification subscriptions.
  class Notifications
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The list of items.
    @[JSON::Field(key: "items", type: Array(GoogleCloudStorage::Notification)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter items : Array(GoogleCloudStorage::Notification)? = nil

    # The kind of item this is. For lists of notifications, this is always storage#notifications.
    @[JSON::Field(key: "kind", type: String?, default: "storage#notifications", required: false, nullable: false, emit_null: false)]
    getter kind : String? = "storage#notifications"

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @items : Array(GoogleCloudStorage::Notification)? = nil,
      @kind : String? = "storage#notifications"
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_items = @items).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "items", container: _items)) if _items.is_a?(Array)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_items = @items).nil?
        return false if _items.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _items)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] items Object to be assigned
    def items=(new_value : Array(GoogleCloudStorage::Notification)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @items = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] kind Object to be assigned
    def kind=(new_value : String?)
      @kind = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@items, @kind)
  end
end
