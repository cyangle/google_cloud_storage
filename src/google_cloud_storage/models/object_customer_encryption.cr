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
  # Metadata of customer-supplied encryption key, if the object is encrypted by such a key.
  class ObjectCustomerEncryption
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The encryption algorithm.
    @[JSON::Field(key: "encryptionAlgorithm", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter encryption_algorithm : String? = nil

    # SHA256 hash value of the encryption key.
    @[JSON::Field(key: "keySha256", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter key_sha256 : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @encryption_algorithm : String? = nil,
      @key_sha256 : String? = nil
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
    # @param [Object] encryption_algorithm Object to be assigned
    def encryption_algorithm=(new_value : String?)
      @encryption_algorithm = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] key_sha256 Object to be assigned
    def key_sha256=(new_value : String?)
      @key_sha256 = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@encryption_algorithm, @key_sha256)
  end
end
