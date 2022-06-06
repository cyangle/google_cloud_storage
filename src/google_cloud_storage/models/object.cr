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
  # An object.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Object
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Access controls on the object.
    @[JSON::Field(key: "acl", type: Array(ObjectAccessControl)?, presence: true, ignore_serialize: acl.nil? && !acl_present?)]
    property acl : Array(ObjectAccessControl)?

    @[JSON::Field(ignore: true)]
    property? acl_present : Bool = false

    # The name of the bucket containing this object.
    @[JSON::Field(key: "bucket", type: String?, presence: true, ignore_serialize: bucket.nil? && !bucket_present?)]
    property bucket : String?

    @[JSON::Field(ignore: true)]
    property? bucket_present : Bool = false

    # Cache-Control directive for the object data. If omitted, and the object is accessible to all anonymous users, the default will be public, max-age=3600.
    @[JSON::Field(key: "cacheControl", type: String?, presence: true, ignore_serialize: cache_control.nil? && !cache_control_present?)]
    property cache_control : String?

    @[JSON::Field(ignore: true)]
    property? cache_control_present : Bool = false

    # Number of underlying components that make up this object. Components are accumulated by compose operations.
    @[JSON::Field(key: "componentCount", type: Int32?, presence: true, ignore_serialize: component_count.nil? && !component_count_present?)]
    property component_count : Int32?

    @[JSON::Field(ignore: true)]
    property? component_count_present : Bool = false

    # Content-Disposition of the object data.
    @[JSON::Field(key: "contentDisposition", type: String?, presence: true, ignore_serialize: content_disposition.nil? && !content_disposition_present?)]
    property content_disposition : String?

    @[JSON::Field(ignore: true)]
    property? content_disposition_present : Bool = false

    # Content-Encoding of the object data.
    @[JSON::Field(key: "contentEncoding", type: String?, presence: true, ignore_serialize: content_encoding.nil? && !content_encoding_present?)]
    property content_encoding : String?

    @[JSON::Field(ignore: true)]
    property? content_encoding_present : Bool = false

    # Content-Language of the object data.
    @[JSON::Field(key: "contentLanguage", type: String?, presence: true, ignore_serialize: content_language.nil? && !content_language_present?)]
    property content_language : String?

    @[JSON::Field(ignore: true)]
    property? content_language_present : Bool = false

    # Content-Type of the object data. If an object is stored without a Content-Type, it is served as application/octet-stream.
    @[JSON::Field(key: "contentType", type: String?, presence: true, ignore_serialize: content_type.nil? && !content_type_present?)]
    property content_type : String?

    @[JSON::Field(ignore: true)]
    property? content_type_present : Bool = false

    # CRC32c checksum, as described in RFC 4960, Appendix B; encoded using base64 in big-endian byte order. For more information about using the CRC32c checksum, see Hashes and ETags: Best Practices.
    @[JSON::Field(key: "crc32c", type: String?, presence: true, ignore_serialize: crc32c.nil? && !crc32c_present?)]
    property crc32c : String?

    @[JSON::Field(ignore: true)]
    property? crc32c_present : Bool = false

    # A timestamp in RFC 3339 format specified by the user for an object.
    @[JSON::Field(key: "customTime", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: custom_time.nil? && !custom_time_present?)]
    property custom_time : Time?

    @[JSON::Field(ignore: true)]
    property? custom_time_present : Bool = false

    @[JSON::Field(key: "customerEncryption", type: ObjectCustomerEncryption?, presence: true, ignore_serialize: customer_encryption.nil? && !customer_encryption_present?)]
    property customer_encryption : ObjectCustomerEncryption?

    @[JSON::Field(ignore: true)]
    property? customer_encryption_present : Bool = false

    # HTTP 1.1 Entity tag for the object.
    @[JSON::Field(key: "etag", type: String?, presence: true, ignore_serialize: etag.nil? && !etag_present?)]
    property etag : String?

    @[JSON::Field(ignore: true)]
    property? etag_present : Bool = false

    # Whether an object is under event-based hold. Event-based hold is a way to retain objects until an event occurs, which is signified by the hold's release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any). One sample use case of this flag is for banks to hold loan documents for at least 3 years after loan is paid in full. Here, bucket-level retention is 3 years and the event is the loan being paid in full. In this example, these objects will be held intact for any number of years until the event has occurred (event-based hold on the object is released) and then 3 more years after that. That means retention duration of the objects begins from the moment event-based hold transitioned from true to false.
    @[JSON::Field(key: "eventBasedHold", type: Bool?, presence: true, ignore_serialize: event_based_hold.nil? && !event_based_hold_present?)]
    property event_based_hold : Bool?

    @[JSON::Field(ignore: true)]
    property? event_based_hold_present : Bool = false

    # The content generation of this object. Used for object versioning.
    @[JSON::Field(key: "generation", type: String?, presence: true, ignore_serialize: generation.nil? && !generation_present?)]
    property generation : String?

    @[JSON::Field(ignore: true)]
    property? generation_present : Bool = false

    # The ID of the object, including the bucket name, object name, and generation number.
    @[JSON::Field(key: "id", type: String?, presence: true, ignore_serialize: id.nil? && !id_present?)]
    property id : String?

    @[JSON::Field(ignore: true)]
    property? id_present : Bool = false

    # The kind of item this is. For objects, this is always storage#object.
    @[JSON::Field(key: "kind", type: String?, default: "storage#object", presence: true, ignore_serialize: kind.nil? && !kind_present?)]
    property kind : String? = "storage#object"

    @[JSON::Field(ignore: true)]
    property? kind_present : Bool = false

    # Not currently supported. Specifying the parameter causes the request to fail with status code 400 - Bad Request.
    @[JSON::Field(key: "kmsKeyName", type: String?, presence: true, ignore_serialize: kms_key_name.nil? && !kms_key_name_present?)]
    property kms_key_name : String?

    @[JSON::Field(ignore: true)]
    property? kms_key_name_present : Bool = false

    # MD5 hash of the data; encoded using base64. For more information about using the MD5 hash, see Hashes and ETags: Best Practices.
    @[JSON::Field(key: "md5Hash", type: String?, presence: true, ignore_serialize: md5_hash.nil? && !md5_hash_present?)]
    property md5_hash : String?

    @[JSON::Field(ignore: true)]
    property? md5_hash_present : Bool = false

    # Media download link.
    @[JSON::Field(key: "mediaLink", type: String?, presence: true, ignore_serialize: media_link.nil? && !media_link_present?)]
    property media_link : String?

    @[JSON::Field(ignore: true)]
    property? media_link_present : Bool = false

    # User-provided metadata, in key/value pairs.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # The version of the metadata for this object at this generation. Used for preconditions and for detecting changes in metadata. A metageneration number is only meaningful in the context of a particular generation of a particular object.
    @[JSON::Field(key: "metageneration", type: String?, presence: true, ignore_serialize: metageneration.nil? && !metageneration_present?)]
    property metageneration : String?

    @[JSON::Field(ignore: true)]
    property? metageneration_present : Bool = false

    # The name of the object. Required if not specified by URL parameter.
    @[JSON::Field(key: "name", type: String?, presence: true, ignore_serialize: name.nil? && !name_present?)]
    property name : String?

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    @[JSON::Field(key: "owner", type: ObjectOwner?, presence: true, ignore_serialize: owner.nil? && !owner_present?)]
    property owner : ObjectOwner?

    @[JSON::Field(ignore: true)]
    property? owner_present : Bool = false

    # A server-determined value that specifies the earliest time that the object's retention period expires. This value is in RFC 3339 format. Note 1: This field is not provided for objects with an active event-based hold, since retention expiration is unknown until the hold is removed. Note 2: This value can be provided even when temporary hold is set (so that the user can reason about policy without having to first unset the temporary hold).
    @[JSON::Field(key: "retentionExpirationTime", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: retention_expiration_time.nil? && !retention_expiration_time_present?)]
    property retention_expiration_time : Time?

    @[JSON::Field(ignore: true)]
    property? retention_expiration_time_present : Bool = false

    # The link to this object.
    @[JSON::Field(key: "selfLink", type: String?, presence: true, ignore_serialize: self_link.nil? && !self_link_present?)]
    property self_link : String?

    @[JSON::Field(ignore: true)]
    property? self_link_present : Bool = false

    # Content-Length of the data in bytes.
    @[JSON::Field(key: "size", type: String?, presence: true, ignore_serialize: size.nil? && !size_present?)]
    property size : String?

    @[JSON::Field(ignore: true)]
    property? size_present : Bool = false

    # Storage class of the object.
    @[JSON::Field(key: "storageClass", type: String?, presence: true, ignore_serialize: storage_class.nil? && !storage_class_present?)]
    property storage_class : String?

    @[JSON::Field(ignore: true)]
    property? storage_class_present : Bool = false

    # Whether an object is under temporary hold. While this flag is set to true, the object is protected against deletion and overwrites. A common use case of this flag is regulatory investigations where objects need to be retained while the investigation is ongoing. Note that unlike event-based hold, temporary hold does not impact retention expiration time of an object.
    @[JSON::Field(key: "temporaryHold", type: Bool?, presence: true, ignore_serialize: temporary_hold.nil? && !temporary_hold_present?)]
    property temporary_hold : Bool?

    @[JSON::Field(ignore: true)]
    property? temporary_hold_present : Bool = false

    # The creation time of the object in RFC 3339 format.
    @[JSON::Field(key: "timeCreated", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: time_created.nil? && !time_created_present?)]
    property time_created : Time?

    @[JSON::Field(ignore: true)]
    property? time_created_present : Bool = false

    # The deletion time of the object in RFC 3339 format. Will be returned if and only if this version of the object has been deleted.
    @[JSON::Field(key: "timeDeleted", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: time_deleted.nil? && !time_deleted_present?)]
    property time_deleted : Time?

    @[JSON::Field(ignore: true)]
    property? time_deleted_present : Bool = false

    # The time at which the object's storage class was last changed. When the object is initially created, it will be set to timeCreated.
    @[JSON::Field(key: "timeStorageClassUpdated", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: time_storage_class_updated.nil? && !time_storage_class_updated_present?)]
    property time_storage_class_updated : Time?

    @[JSON::Field(ignore: true)]
    property? time_storage_class_updated_present : Bool = false

    # The modification time of the object metadata in RFC 3339 format.
    @[JSON::Field(key: "updated", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: updated.nil? && !updated_present?)]
    property updated : Time?

    @[JSON::Field(ignore: true)]
    property? updated_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @acl : Array(ObjectAccessControl)? = nil,
      @bucket : String? = nil,
      @cache_control : String? = nil,
      @component_count : Int32? = nil,
      @content_disposition : String? = nil,
      @content_encoding : String? = nil,
      @content_language : String? = nil,
      @content_type : String? = nil,
      @crc32c : String? = nil,
      @custom_time : Time? = nil,
      @customer_encryption : ObjectCustomerEncryption? = nil,
      @etag : String? = nil,
      @event_based_hold : Bool? = nil,
      @generation : String? = nil,
      @id : String? = nil,
      @kind : String? = "storage#object",
      @kms_key_name : String? = nil,
      @md5_hash : String? = nil,
      @media_link : String? = nil,
      @metadata : Hash(String, String)? = nil,
      @metageneration : String? = nil,
      @name : String? = nil,
      @owner : ObjectOwner? = nil,
      @retention_expiration_time : Time? = nil,
      @self_link : String? = nil,
      @size : String? = nil,
      @storage_class : String? = nil,
      @temporary_hold : Bool? = nil,
      @time_created : Time? = nil,
      @time_deleted : Time? = nil,
      @time_storage_class_updated : Time? = nil,
      @updated : Time? = nil
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
    def_equals_and_hash(@acl, @acl_present, @bucket, @bucket_present, @cache_control, @cache_control_present, @component_count, @component_count_present, @content_disposition, @content_disposition_present, @content_encoding, @content_encoding_present, @content_language, @content_language_present, @content_type, @content_type_present, @crc32c, @crc32c_present, @custom_time, @custom_time_present, @customer_encryption, @customer_encryption_present, @etag, @etag_present, @event_based_hold, @event_based_hold_present, @generation, @generation_present, @id, @id_present, @kind, @kind_present, @kms_key_name, @kms_key_name_present, @md5_hash, @md5_hash_present, @media_link, @media_link_present, @metadata, @metadata_present, @metageneration, @metageneration_present, @name, @name_present, @owner, @owner_present, @retention_expiration_time, @retention_expiration_time_present, @self_link, @self_link_present, @size, @size_present, @storage_class, @storage_class_present, @temporary_hold, @temporary_hold_present, @time_created, @time_created_present, @time_deleted, @time_deleted_present, @time_storage_class_updated, @time_storage_class_updated_present, @updated, @updated_present)
  end
end
