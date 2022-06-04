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
  # The condition(s) under which the action will be taken.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class BucketLifecycleRuleInnerCondition
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # Age of an object (in days). This condition is satisfied when an object reaches the specified age.
    @[JSON::Field(key: "age", type: Int32?, presence: true, ignore_serialize: age.nil? && !age_present?)]
    property age : Int32?

    @[JSON::Field(ignore: true)]
    property? age_present : Bool = false

    # A date in RFC 3339 format with only the date part (for instance, \"2013-01-15\"). This condition is satisfied when an object is created before midnight of the specified date in UTC.
    @[JSON::Field(key: "createdBefore", type: Time?, converter: Time::ISO8601DateConverter, presence: true, ignore_serialize: created_before.nil? && !created_before_present?)]
    property created_before : Time?

    @[JSON::Field(ignore: true)]
    property? created_before_present : Bool = false

    # A date in RFC 3339 format with only the date part (for instance, \"2013-01-15\"). This condition is satisfied when the custom time on an object is before this date in UTC.
    @[JSON::Field(key: "customTimeBefore", type: Time?, converter: Time::ISO8601DateConverter, presence: true, ignore_serialize: custom_time_before.nil? && !custom_time_before_present?)]
    property custom_time_before : Time?

    @[JSON::Field(ignore: true)]
    property? custom_time_before_present : Bool = false

    # Number of days elapsed since the user-specified timestamp set on an object. The condition is satisfied if the days elapsed is at least this number. If no custom timestamp is specified on an object, the condition does not apply.
    @[JSON::Field(key: "daysSinceCustomTime", type: Int32?, presence: true, ignore_serialize: days_since_custom_time.nil? && !days_since_custom_time_present?)]
    property days_since_custom_time : Int32?

    @[JSON::Field(ignore: true)]
    property? days_since_custom_time_present : Bool = false

    # Number of days elapsed since the noncurrent timestamp of an object. The condition is satisfied if the days elapsed is at least this number. This condition is relevant only for versioned objects. The value of the field must be a nonnegative integer. If it's zero, the object version will become eligible for Lifecycle action as soon as it becomes noncurrent.
    @[JSON::Field(key: "daysSinceNoncurrentTime", type: Int32?, presence: true, ignore_serialize: days_since_noncurrent_time.nil? && !days_since_noncurrent_time_present?)]
    property days_since_noncurrent_time : Int32?

    @[JSON::Field(ignore: true)]
    property? days_since_noncurrent_time_present : Bool = false

    # Relevant only for versioned objects. If the value is true, this condition matches live objects; if the value is false, it matches archived objects.
    @[JSON::Field(key: "isLive", type: Bool?, presence: true, ignore_serialize: is_live.nil? && !is_live_present?)]
    property is_live : Bool?

    @[JSON::Field(ignore: true)]
    property? is_live_present : Bool = false

    # A regular expression that satisfies the RE2 syntax. This condition is satisfied when the name of the object matches the RE2 pattern. Note: This feature is currently in the \"Early Access\" launch stage and is only available to a whitelisted set of users; that means that this feature may be changed in backward-incompatible ways and that it is not guaranteed to be released.
    @[JSON::Field(key: "matchesPattern", type: String?, presence: true, ignore_serialize: matches_pattern.nil? && !matches_pattern_present?)]
    property matches_pattern : String?

    @[JSON::Field(ignore: true)]
    property? matches_pattern_present : Bool = false

    # List of object name prefixes. This condition will be satisfied when at least one of the prefixes exactly matches the beginning of the object name.
    @[JSON::Field(key: "matchesPrefix", type: Array(String)?, presence: true, ignore_serialize: matches_prefix.nil? && !matches_prefix_present?)]
    property matches_prefix : Array(String)?

    @[JSON::Field(ignore: true)]
    property? matches_prefix_present : Bool = false

    # Objects having any of the storage classes specified by this condition will be matched. Values include MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE, STANDARD, and DURABLE_REDUCED_AVAILABILITY.
    @[JSON::Field(key: "matchesStorageClass", type: Array(String)?, presence: true, ignore_serialize: matches_storage_class.nil? && !matches_storage_class_present?)]
    property matches_storage_class : Array(String)?

    @[JSON::Field(ignore: true)]
    property? matches_storage_class_present : Bool = false

    # List of object name suffixes. This condition will be satisfied when at least one of the suffixes exactly matches the end of the object name.
    @[JSON::Field(key: "matchesSuffix", type: Array(String)?, presence: true, ignore_serialize: matches_suffix.nil? && !matches_suffix_present?)]
    property matches_suffix : Array(String)?

    @[JSON::Field(ignore: true)]
    property? matches_suffix_present : Bool = false

    # A date in RFC 3339 format with only the date part (for instance, \"2013-01-15\"). This condition is satisfied when the noncurrent time on an object is before this date in UTC. This condition is relevant only for versioned objects.
    @[JSON::Field(key: "noncurrentTimeBefore", type: Time?, converter: Time::ISO8601DateConverter, presence: true, ignore_serialize: noncurrent_time_before.nil? && !noncurrent_time_before_present?)]
    property noncurrent_time_before : Time?

    @[JSON::Field(ignore: true)]
    property? noncurrent_time_before_present : Bool = false

    # Relevant only for versioned objects. If the value is N, this condition is satisfied when there are at least N versions (including the live version) newer than this version of the object.
    @[JSON::Field(key: "numNewerVersions", type: Int32?, presence: true, ignore_serialize: num_newer_versions.nil? && !num_newer_versions_present?)]
    property num_newer_versions : Int32?

    @[JSON::Field(ignore: true)]
    property? num_newer_versions_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @age : Int32? = nil, @created_before : Time? = nil, @custom_time_before : Time? = nil, @days_since_custom_time : Int32? = nil, @days_since_noncurrent_time : Int32? = nil, @is_live : Bool? = nil, @matches_pattern : String? = nil, @matches_prefix : Array(String)? = nil, @matches_storage_class : Array(String)? = nil, @matches_suffix : Array(String)? = nil, @noncurrent_time_before : Time? = nil, @num_newer_versions : Int32? = nil)
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
    def_equals_and_hash(@age, @created_before, @custom_time_before, @days_since_custom_time, @days_since_noncurrent_time, @is_live, @matches_pattern, @matches_prefix, @matches_storage_class, @matches_suffix, @noncurrent_time_before, @num_newer_versions)
  end
end
