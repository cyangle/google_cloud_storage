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
  class BucketCorsInner
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # The value, in seconds, to return in the  Access-Control-Max-Age header used in preflight responses.
    @[JSON::Field(key: "maxAgeSeconds", type: Int32?, presence: true, ignore_serialize: max_age_seconds.nil? && !max_age_seconds_present?)]
    property max_age_seconds : Int32?

    @[JSON::Field(ignore: true)]
    property? max_age_seconds_present : Bool = false

    # The list of HTTP methods on which to include CORS response headers, (GET, OPTIONS, POST, etc) Note: \"*\" is permitted in the list of methods, and means \"any method\".
    @[JSON::Field(key: "method", type: Array(String)?, presence: true, ignore_serialize: method.nil? && !method_present?)]
    property method : Array(String)?

    @[JSON::Field(ignore: true)]
    property? method_present : Bool = false

    # The list of Origins eligible to receive CORS response headers. Note: \"*\" is permitted in the list of origins, and means \"any Origin\".
    @[JSON::Field(key: "origin", type: Array(String)?, presence: true, ignore_serialize: origin.nil? && !origin_present?)]
    property origin : Array(String)?

    @[JSON::Field(ignore: true)]
    property? origin_present : Bool = false

    # The list of HTTP headers other than the simple response headers to give permission for the user-agent to share across domains.
    @[JSON::Field(key: "responseHeader", type: Array(String)?, presence: true, ignore_serialize: response_header.nil? && !response_header_present?)]
    property response_header : Array(String)?

    @[JSON::Field(ignore: true)]
    property? response_header_present : Bool = false

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
    def_equals_and_hash(@max_age_seconds, @max_age_seconds_present, @method, @method_present, @origin, @origin_present, @response_header, @response_header_present)
  end
end
