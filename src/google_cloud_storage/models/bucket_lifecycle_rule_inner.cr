#  Cloud Storage JSON API
#
# Stores and retrieves potentially large, immutable data objects.
#
# The version of the OpenAPI document: v1
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./bucket_lifecycle_rule_inner_action"
require "./bucket_lifecycle_rule_inner_condition"

module GoogleCloudStorage
  class BucketLifecycleRuleInner
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "action", type: GoogleCloudStorage::BucketLifecycleRuleInnerAction?, default: nil, required: false, nullable: false, emit_null: false)]
    getter action : GoogleCloudStorage::BucketLifecycleRuleInnerAction? = nil

    @[JSON::Field(key: "condition", type: GoogleCloudStorage::BucketLifecycleRuleInnerCondition?, default: nil, required: false, nullable: false, emit_null: false)]
    getter condition : GoogleCloudStorage::BucketLifecycleRuleInnerCondition? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @action : GoogleCloudStorage::BucketLifecycleRuleInnerAction? = nil,
      @condition : GoogleCloudStorage::BucketLifecycleRuleInnerCondition? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_action = @action).nil?
        invalid_properties.concat(_action.list_invalid_properties_for("action")) if _action.is_a?(OpenApi::Validatable)
      end
      unless (_condition = @condition).nil?
        invalid_properties.concat(_condition.list_invalid_properties_for("condition")) if _condition.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_action = @action).nil?
        return false if _action.is_a?(OpenApi::Validatable) && !_action.valid?
      end

      unless (_condition = @condition).nil?
        return false if _condition.is_a?(OpenApi::Validatable) && !_condition.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action Object to be assigned
    def action=(new_value : GoogleCloudStorage::BucketLifecycleRuleInnerAction?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @action = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] condition Object to be assigned
    def condition=(new_value : GoogleCloudStorage::BucketLifecycleRuleInnerCondition?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @condition = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@action, @condition)
  end
end
