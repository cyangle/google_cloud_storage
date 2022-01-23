#  Cloud Storage JSON API
#
# Stores and retrieves potentially large, immutable data objects.
#
# The version of the OpenAPI document: v1
#
# Generated by: https://openapi-generator.tech
#

require "nason"
require "time"
require "log"

module GoogleCloudStorage
  # The condition(s) under which the action will be taken.
  class BucketLifecycleCondition
    include NASON::Serializable

    # Optional properties
    # Age of an object (in days). This condition is satisfied when an object reaches the specified age.
    @[NASON::Field(key: "age", type: Int32?, nillable: true)]
    property age : Int32?

    # A date in RFC 3339 format with only the date part (for instance, \"2013-01-15\"). This condition is satisfied when an object is created before midnight of the specified date in UTC.
    @[NASON::Field(key: "createdBefore", type: Time?, converter: Time::ISO8601DateConverter, nillable: true)]
    property created_before : Time?

    # A date in RFC 3339 format with only the date part (for instance, \"2013-01-15\"). This condition is satisfied when the custom time on an object is before this date in UTC.
    @[NASON::Field(key: "customTimeBefore", type: Time?, converter: Time::ISO8601DateConverter, nillable: true)]
    property custom_time_before : Time?

    # Number of days elapsed since the user-specified timestamp set on an object. The condition is satisfied if the days elapsed is at least this number. If no custom timestamp is specified on an object, the condition does not apply.
    @[NASON::Field(key: "daysSinceCustomTime", type: Int32?, nillable: true)]
    property days_since_custom_time : Int32?

    # Number of days elapsed since the noncurrent timestamp of an object. The condition is satisfied if the days elapsed is at least this number. This condition is relevant only for versioned objects. The value of the field must be a nonnegative integer. If it's zero, the object version will become eligible for Lifecycle action as soon as it becomes noncurrent.
    @[NASON::Field(key: "daysSinceNoncurrentTime", type: Int32?, nillable: true)]
    property days_since_noncurrent_time : Int32?

    # Relevant only for versioned objects. If the value is true, this condition matches live objects; if the value is false, it matches archived objects.
    @[NASON::Field(key: "isLive", type: Bool?, nillable: true)]
    property is_live : Bool?

    # A regular expression that satisfies the RE2 syntax. This condition is satisfied when the name of the object matches the RE2 pattern. Note: This feature is currently in the \"Early Access\" launch stage and is only available to a whitelisted set of users; that means that this feature may be changed in backward-incompatible ways and that it is not guaranteed to be released.
    @[NASON::Field(key: "matchesPattern", type: String?, nillable: true)]
    property matches_pattern : String?

    # Objects having any of the storage classes specified by this condition will be matched. Values include MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE, STANDARD, and DURABLE_REDUCED_AVAILABILITY.
    @[NASON::Field(key: "matchesStorageClass", type: Array(String)?, nillable: true)]
    property matches_storage_class : Array(String)?

    # A date in RFC 3339 format with only the date part (for instance, \"2013-01-15\"). This condition is satisfied when the noncurrent time on an object is before this date in UTC. This condition is relevant only for versioned objects.
    @[NASON::Field(key: "noncurrentTimeBefore", type: Time?, converter: Time::ISO8601DateConverter, nillable: true)]
    property noncurrent_time_before : Time?

    # Relevant only for versioned objects. If the value is N, this condition is satisfied when there are at least N versions (including the live version) newer than this version of the object.
    @[NASON::Field(key: "numNewerVersions", type: Int32?, nillable: true)]
    property num_newer_versions : Int32?

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @age : Int32? = nil, @created_before : Time? = nil, @custom_time_before : Time? = nil, @days_since_custom_time : Int32? = nil, @days_since_noncurrent_time : Int32? = nil, @is_live : Bool? = nil, @matches_pattern : String? = nil, @matches_storage_class : Array(String)? = nil, @noncurrent_time_before : Time? = nil, @num_newer_versions : Int32? = nil)
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
        age == o.age &&
        created_before == o.created_before &&
        custom_time_before == o.custom_time_before &&
        days_since_custom_time == o.days_since_custom_time &&
        days_since_noncurrent_time == o.days_since_noncurrent_time &&
        is_live == o.is_live &&
        matches_pattern == o.matches_pattern &&
        matches_storage_class == o.matches_storage_class &&
        noncurrent_time_before == o.noncurrent_time_before &&
        num_newer_versions == o.num_newer_versions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [age, created_before, custom_time_before, days_since_custom_time, days_since_noncurrent_time, is_live, matches_pattern, matches_storage_class, noncurrent_time_before, num_newer_versions].hash
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
