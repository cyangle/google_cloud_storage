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
  # Represents an expression text. Example: title: \"User account presence\" description: \"Determines whether the request has a user account\" expression: \"size(request.user) > 0\"
  class Expr
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # An optional description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil

    # Textual representation of an expression in Common Expression Language syntax. The application context of the containing message determines which well-known feature set of CEL is supported.
    @[JSON::Field(key: "expression", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expression : String? = nil

    # An optional string indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
    @[JSON::Field(key: "location", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter location : String? = nil

    # An optional title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
    @[JSON::Field(key: "title", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter title : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @description : String? = nil,
      @expression : String? = nil,
      @location : String? = nil,
      @title : String? = nil
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
    # @param [Object] description Object to be assigned
    def description=(new_value : String?)
      @description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expression Object to be assigned
    def expression=(new_value : String?)
      @expression = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] location Object to be assigned
    def location=(new_value : String?)
      @location = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] title Object to be assigned
    def title=(new_value : String?)
      @title = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@description, @expression, @location, @title)
  end
end
