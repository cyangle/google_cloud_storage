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
  # The bucket's logging configuration, which defines the destination bucket and optional name prefix for the current bucket's logs.
  class BucketLogging
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The destination bucket where the current bucket's logs should be placed.
    @[JSON::Field(key: "logBucket", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter log_bucket : String? = nil

    # A prefix for log object names.
    @[JSON::Field(key: "logObjectPrefix", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter log_object_prefix : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @log_bucket : String? = nil,
      @log_object_prefix : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_log_bucket = @log_bucket).nil?
      end
      unless (_log_object_prefix = @log_object_prefix).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_log_bucket = @log_bucket).nil?
      end

      unless (_log_object_prefix = @log_object_prefix).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] log_bucket Object to be assigned
    def log_bucket=(new_value : String?)
      unless new_value.nil?
      end

      @log_bucket = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] log_object_prefix Object to be assigned
    def log_object_prefix=(new_value : String?)
      unless new_value.nil?
      end

      @log_object_prefix = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@log_bucket, @log_object_prefix)
  end
end
