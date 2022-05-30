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
  @[JSON::Serializable::Options(emit_nulls: true)]
  class HmacKeyMetadata
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The ID of the HMAC Key.
    @[JSON::Field(key: "accessId", type: String?, presence: true, ignore_serialize: access_id.nil? && !access_id_present?)]
    property access_id : String?

    @[JSON::Field(ignore: true)]
    property? access_id_present : Bool = false

    # HTTP 1.1 Entity tag for the HMAC key.
    @[JSON::Field(key: "etag", type: String?, presence: true, ignore_serialize: etag.nil? && !etag_present?)]
    property etag : String?

    @[JSON::Field(ignore: true)]
    property? etag_present : Bool = false

    # The ID of the HMAC key, including the Project ID and the Access ID.
    @[JSON::Field(key: "id", type: String?, presence: true, ignore_serialize: id.nil? && !id_present?)]
    property id : String?

    @[JSON::Field(ignore: true)]
    property? id_present : Bool = false

    # The kind of item this is. For HMAC Key metadata, this is always storage#hmacKeyMetadata.
    @[JSON::Field(key: "kind", type: String?, default: "storage#hmacKeyMetadata", presence: true, ignore_serialize: kind.nil? && !kind_present?)]
    property kind : String?

    @[JSON::Field(ignore: true)]
    property? kind_present : Bool = false

    # Project ID owning the service account to which the key authenticates.
    @[JSON::Field(key: "projectId", type: String?, presence: true, ignore_serialize: project_id.nil? && !project_id_present?)]
    property project_id : String?

    @[JSON::Field(ignore: true)]
    property? project_id_present : Bool = false

    # The link to this resource.
    @[JSON::Field(key: "selfLink", type: String?, presence: true, ignore_serialize: self_link.nil? && !self_link_present?)]
    property self_link : String?

    @[JSON::Field(ignore: true)]
    property? self_link_present : Bool = false

    # The email address of the key's associated service account.
    @[JSON::Field(key: "serviceAccountEmail", type: String?, presence: true, ignore_serialize: service_account_email.nil? && !service_account_email_present?)]
    property service_account_email : String?

    @[JSON::Field(ignore: true)]
    property? service_account_email_present : Bool = false

    # The state of the key. Can be one of ACTIVE, INACTIVE, or DELETED.
    @[JSON::Field(key: "state", type: String?, presence: true, ignore_serialize: state.nil? && !state_present?)]
    property state : String?

    @[JSON::Field(ignore: true)]
    property? state_present : Bool = false

    # The creation time of the HMAC key in RFC 3339 format.
    @[JSON::Field(key: "timeCreated", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: time_created.nil? && !time_created_present?)]
    property time_created : Time?

    @[JSON::Field(ignore: true)]
    property? time_created_present : Bool = false

    # The last modification time of the HMAC key metadata in RFC 3339 format.
    @[JSON::Field(key: "updated", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: updated.nil? && !updated_present?)]
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
  end
end
