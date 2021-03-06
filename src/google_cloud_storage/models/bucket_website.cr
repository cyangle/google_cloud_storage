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
  # The bucket's website configuration, controlling how the service behaves when accessing bucket contents as a web site. See the Static Website Examples for more information.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class BucketWebsite
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # If the requested object path is missing, the service will ensure the path has a trailing '/', append this suffix, and attempt to retrieve the resulting object. This allows the creation of index.html objects to represent directory pages.
    @[JSON::Field(key: "mainPageSuffix", type: String?, presence: true, ignore_serialize: main_page_suffix.nil? && !main_page_suffix_present?)]
    property main_page_suffix : String?

    @[JSON::Field(ignore: true)]
    property? main_page_suffix_present : Bool = false

    # If the requested object path is missing, and any mainPageSuffix object is missing, if applicable, the service will return the named object from this bucket as the content for a 404 Not Found result.
    @[JSON::Field(key: "notFoundPage", type: String?, presence: true, ignore_serialize: not_found_page.nil? && !not_found_page_present?)]
    property not_found_page : String?

    @[JSON::Field(ignore: true)]
    property? not_found_page_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @main_page_suffix : String? = nil,
      @not_found_page : String? = nil
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
    def_equals_and_hash(@main_page_suffix, @main_page_suffix_present, @not_found_page, @not_found_page_present)
  end
end
