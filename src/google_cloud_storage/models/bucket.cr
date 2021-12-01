#  Cloud Storage JSON API
#
# Stores and retrieves potentially large, immutable data objects.
#
# The version of the OpenAPI document: v1
#
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 5.3.1-SNAPSHOT
#

require "nason"
require "time"
require "log"

module GoogleCloudStorage
  # A bucket.
  class Bucket
    include NASON::Serializable

    # Optional properties
    # Access controls on the bucket.
    @[NASON::Field(key: "acl", type: Array(BucketAccessControl)?, nillable: true)]
    property acl : Array(BucketAccessControl)?

    @[NASON::Field(key: "autoclass", type: BucketAutoclass?, nillable: true)]
    property autoclass : BucketAutoclass?

    @[NASON::Field(key: "billing", type: BucketBilling?, nillable: true)]
    property billing : BucketBilling?

    # The bucket's Cross-Origin Resource Sharing (CORS) configuration.
    @[NASON::Field(key: "cors", type: Array(BucketCors)?, nillable: true)]
    property cors : Array(BucketCors)?

    @[NASON::Field(key: "customPlacementConfig", type: BucketCustomPlacementConfig?, nillable: true)]
    property custom_placement_config : BucketCustomPlacementConfig?

    # The default value for event-based hold on newly created objects in this bucket. Event-based hold is a way to retain objects indefinitely until an event occurs, signified by the hold's release. After being released, such objects will be subject to bucket-level retention (if any). One sample use case of this flag is for banks to hold loan documents for at least 3 years after loan is paid in full. Here, bucket-level retention is 3 years and the event is loan being paid in full. In this example, these objects will be held intact for any number of years until the event has occurred (event-based hold on the object is released) and then 3 more years after that. That means retention duration of the objects begins from the moment event-based hold transitioned from true to false. Objects under event-based hold cannot be deleted, overwritten or archived until the hold is removed.
    @[NASON::Field(key: "defaultEventBasedHold", type: Bool?, nillable: true)]
    property default_event_based_hold : Bool?

    # Default access controls to apply to new objects when no ACL is provided.
    @[NASON::Field(key: "defaultObjectAcl", type: Array(ObjectAccessControl)?, nillable: true)]
    property default_object_acl : Array(ObjectAccessControl)?

    @[NASON::Field(key: "encryption", type: BucketEncryption?, nillable: true)]
    property encryption : BucketEncryption?

    # HTTP 1.1 Entity tag for the bucket.
    @[NASON::Field(key: "etag", type: String?, nillable: true)]
    property etag : String?

    @[NASON::Field(key: "iamConfiguration", type: BucketIamConfiguration?, nillable: true)]
    property iam_configuration : BucketIamConfiguration?

    # The ID of the bucket. For buckets, the id and name properties are the same.
    @[NASON::Field(key: "id", type: String?, nillable: true)]
    property id : String?

    # The kind of item this is. For buckets, this is always storage#bucket.
    @[NASON::Field(key: "kind", type: String?, default: "storage#bucket", nillable: true)]
    property kind : String?

    # User-provided labels, in key/value pairs.
    @[NASON::Field(key: "labels", type: Hash(String, String)?, nillable: true)]
    property labels : Hash(String, String)?

    @[NASON::Field(key: "lifecycle", type: BucketLifecycle?, nillable: true)]
    property lifecycle : BucketLifecycle?

    # The location of the bucket. Object data for objects in the bucket resides in physical storage within this region. Defaults to US. See the developer's guide for the authoritative list.
    @[NASON::Field(key: "location", type: String?, nillable: true)]
    property location : String?

    # The type of the bucket location.
    @[NASON::Field(key: "locationType", type: String?, nillable: true)]
    property location_type : String?

    @[NASON::Field(key: "logging", type: BucketLogging?, nillable: true)]
    property logging : BucketLogging?

    # The metadata generation of this bucket.
    @[NASON::Field(key: "metageneration", type: String?, nillable: true)]
    property metageneration : String?

    # The name of the bucket.
    @[NASON::Field(key: "name", type: String?, nillable: true)]
    property name : String?

    @[NASON::Field(key: "owner", type: BucketOwner?, nillable: true)]
    property owner : BucketOwner?

    # The project number of the project the bucket belongs to.
    @[NASON::Field(key: "projectNumber", type: String?, nillable: true)]
    property project_number : String?

    @[NASON::Field(key: "retentionPolicy", type: BucketRetentionPolicy?, nillable: true)]
    property retention_policy : BucketRetentionPolicy?

    # The Recovery Point Objective (RPO) of this bucket. Set to ASYNC_TURBO to turn on Turbo Replication on a bucket.
    @[NASON::Field(key: "rpo", type: String?, nillable: true)]
    property rpo : String?

    # Reserved for future use.
    @[NASON::Field(key: "satisfiesPZS", type: Bool?, nillable: true)]
    property satisfies_pzs : Bool?

    # The URI of this bucket.
    @[NASON::Field(key: "selfLink", type: String?, nillable: true)]
    property self_link : String?

    # The bucket's default storage class, used whenever no storageClass is specified for a newly-created object. This defines how objects in the bucket are stored and determines the SLA and the cost of storage. Values include MULTI_REGIONAL, REGIONAL, STANDARD, NEARLINE, COLDLINE, ARCHIVE, and DURABLE_REDUCED_AVAILABILITY. If this value is not specified when the bucket is created, it will default to STANDARD. For more information, see storage classes.
    @[NASON::Field(key: "storageClass", type: String?, nillable: true)]
    property storage_class : String?

    # The creation time of the bucket in RFC 3339 format.
    @[NASON::Field(key: "timeCreated", type: Time?, converter: Time::RFC3339Converter, nillable: true)]
    property time_created : Time?

    # The modification time of the bucket in RFC 3339 format.
    @[NASON::Field(key: "updated", type: Time?, converter: Time::RFC3339Converter, nillable: true)]
    property updated : Time?

    @[NASON::Field(key: "versioning", type: BucketVersioning?, nillable: true)]
    property versioning : BucketVersioning?

    @[NASON::Field(key: "website", type: BucketWebsite?, nillable: true)]
    property website : BucketWebsite?

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @acl : Array(BucketAccessControl)? = nil, @autoclass : BucketAutoclass? = nil, @billing : BucketBilling? = nil, @cors : Array(BucketCors)? = nil, @custom_placement_config : BucketCustomPlacementConfig? = nil, @default_event_based_hold : Bool? = nil, @default_object_acl : Array(ObjectAccessControl)? = nil, @encryption : BucketEncryption? = nil, @etag : String? = nil, @iam_configuration : BucketIamConfiguration? = nil, @id : String? = nil, @kind : String? = "storage#bucket", @labels : Hash(String, String)? = nil, @lifecycle : BucketLifecycle? = nil, @location : String? = nil, @location_type : String? = nil, @logging : BucketLogging? = nil, @metageneration : String? = nil, @name : String? = nil, @owner : BucketOwner? = nil, @project_number : String? = nil, @retention_policy : BucketRetentionPolicy? = nil, @rpo : String? = nil, @satisfies_pzs : Bool? = nil, @self_link : String? = nil, @storage_class : String? = nil, @time_created : Time? = nil, @updated : Time? = nil, @versioning : BucketVersioning? = nil, @website : BucketWebsite? = nil)
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
        acl == o.acl &&
        autoclass == o.autoclass &&
        billing == o.billing &&
        cors == o.cors &&
        custom_placement_config == o.custom_placement_config &&
        default_event_based_hold == o.default_event_based_hold &&
        default_object_acl == o.default_object_acl &&
        encryption == o.encryption &&
        etag == o.etag &&
        iam_configuration == o.iam_configuration &&
        id == o.id &&
        kind == o.kind &&
        labels == o.labels &&
        lifecycle == o.lifecycle &&
        location == o.location &&
        location_type == o.location_type &&
        logging == o.logging &&
        metageneration == o.metageneration &&
        name == o.name &&
        owner == o.owner &&
        project_number == o.project_number &&
        retention_policy == o.retention_policy &&
        rpo == o.rpo &&
        satisfies_pzs == o.satisfies_pzs &&
        self_link == o.self_link &&
        storage_class == o.storage_class &&
        time_created == o.time_created &&
        updated == o.updated &&
        versioning == o.versioning &&
        website == o.website
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [acl, autoclass, billing, cors, custom_placement_config, default_event_based_hold, default_object_acl, encryption, etag, iam_configuration, id, kind, labels, lifecycle, location, location_type, logging, metageneration, name, owner, project_number, retention_policy, rpo, satisfies_pzs, self_link, storage_class, time_created, updated, versioning, website].hash
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
