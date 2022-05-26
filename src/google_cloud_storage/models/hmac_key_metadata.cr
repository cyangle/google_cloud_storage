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
  # JSON template to produce a JSON-style HMAC Key metadata resource.
  class HmacKeyMetadata
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The ID of the HMAC Key.
    @[JSON::Field(key: "accessId", type: String?, presence: true, ignore_serialize: access_id.nil? && !access_id_present?, emit_null: true)]
    property access_id : String?
    @[JSON::Field(ignore: true)]
    property? access_id_present : Bool = false

    # HTTP 1.1 Entity tag for the HMAC key.
    @[JSON::Field(key: "etag", type: String?, presence: true, ignore_serialize: etag.nil? && !etag_present?, emit_null: true)]
    property etag : String?
    @[JSON::Field(ignore: true)]
    property? etag_present : Bool = false

    # The ID of the HMAC key, including the Project ID and the Access ID.
    @[JSON::Field(key: "id", type: String?, presence: true, ignore_serialize: id.nil? && !id_present?, emit_null: true)]
    property id : String?
    @[JSON::Field(ignore: true)]
    property? id_present : Bool = false

    # The kind of item this is. For HMAC Key metadata, this is always storage#hmacKeyMetadata.
    @[JSON::Field(key: "kind", type: String?, default: "storage#hmacKeyMetadata", presence: true, ignore_serialize: kind.nil? && !kind_present?, emit_null: true)]
    property kind : String?
    @[JSON::Field(ignore: true)]
    property? kind_present : Bool = false

    # Project ID owning the service account to which the key authenticates.
    @[JSON::Field(key: "projectId", type: String?, presence: true, ignore_serialize: project_id.nil? && !project_id_present?, emit_null: true)]
    property project_id : String?
    @[JSON::Field(ignore: true)]
    property? project_id_present : Bool = false

    # The link to this resource.
    @[JSON::Field(key: "selfLink", type: String?, presence: true, ignore_serialize: self_link.nil? && !self_link_present?, emit_null: true)]
    property self_link : String?
    @[JSON::Field(ignore: true)]
    property? self_link_present : Bool = false

    # The email address of the key's associated service account.
    @[JSON::Field(key: "serviceAccountEmail", type: String?, presence: true, ignore_serialize: service_account_email.nil? && !service_account_email_present?, emit_null: true)]
    property service_account_email : String?
    @[JSON::Field(ignore: true)]
    property? service_account_email_present : Bool = false

    # The state of the key. Can be one of ACTIVE, INACTIVE, or DELETED.
    @[JSON::Field(key: "state", type: String?, presence: true, ignore_serialize: state.nil? && !state_present?, emit_null: true)]
    property state : String?
    @[JSON::Field(ignore: true)]
    property? state_present : Bool = false

    # The creation time of the HMAC key in RFC 3339 format.
    @[JSON::Field(key: "timeCreated", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: time_created.nil? && !time_created_present?, emit_null: true)]
    property time_created : Time?
    @[JSON::Field(ignore: true)]
    property? time_created_present : Bool = false

    # The last modification time of the HMAC key metadata in RFC 3339 format.
    @[JSON::Field(key: "updated", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: updated.nil? && !updated_present?, emit_null: true)]
    property updated : Time?
    @[JSON::Field(ignore: true)]
    property? updated_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @access_id : String? = nil, @etag : String? = nil, @id : String? = nil, @kind : String? = "storage#hmacKeyMetadata", @project_id : String? = nil, @self_link : String? = nil, @service_account_email : String? = nil, @state : String? = nil, @time_created : Time? = nil, @updated : Time? = nil)
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        access_id == o.access_id &&
        etag == o.etag &&
        id == o.id &&
        kind == o.kind &&
        project_id == o.project_id &&
        self_link == o.self_link &&
        service_account_email == o.service_account_email &&
        state == o.state &&
        time_created == o.time_created &&
        updated == o.updated
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [access_id, etag, id, kind, project_id, self_link, service_account_email, state, time_created, updated].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if !attributes[self.class.attribute_map[key]]? && self.class.openapi_nullable.includes?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        ({} of String => String).tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = GoogleCloudStorage.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {} of String => String
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.includes?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        ({} of String => String).tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
