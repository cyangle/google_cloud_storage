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
  class BucketCorsInner
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The value, in seconds, to return in the  Access-Control-Max-Age header used in preflight responses.
    @[JSON::Field(key: "maxAgeSeconds", type: Int32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter max_age_seconds : Int32? = nil

    # The list of HTTP methods on which to include CORS response headers, (GET, OPTIONS, POST, etc) Note: \"*\" is permitted in the list of methods, and means \"any method\".
    @[JSON::Field(key: "method", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter method : Array(String)? = nil

    # The list of Origins eligible to receive CORS response headers. Note: \"*\" is permitted in the list of origins, and means \"any Origin\".
    @[JSON::Field(key: "origin", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter origin : Array(String)? = nil

    # The list of HTTP headers other than the simple response headers to give permission for the user-agent to share across domains.
    @[JSON::Field(key: "responseHeader", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter response_header : Array(String)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @max_age_seconds : Int32? = nil,
      @method : Array(String)? = nil,
      @origin : Array(String)? = nil,
      @response_header : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_max_age_seconds = @max_age_seconds).nil?
      end
      unless (_method = @method).nil?
      end
      unless (_origin = @origin).nil?
      end
      unless (_response_header = @response_header).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_max_age_seconds = @max_age_seconds).nil?
      end

      unless (_method = @method).nil?
      end

      unless (_origin = @origin).nil?
      end

      unless (_response_header = @response_header).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] max_age_seconds Object to be assigned
    def max_age_seconds=(new_value : Int32?)
      unless new_value.nil?
      end

      @max_age_seconds = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] method Object to be assigned
    def method=(new_value : Array(String)?)
      unless new_value.nil?
      end

      @method = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] origin Object to be assigned
    def origin=(new_value : Array(String)?)
      unless new_value.nil?
      end

      @origin = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] response_header Object to be assigned
    def response_header=(new_value : Array(String)?)
      unless new_value.nil?
      end

      @response_header = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@max_age_seconds, @method, @origin, @response_header)
  end
end
