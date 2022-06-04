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
  # An access-control entry.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class BucketAccessControl
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    # The name of the bucket.
    @[JSON::Field(key: "bucket", type: String?, presence: true, ignore_serialize: bucket.nil? && !bucket_present?)]
    property bucket : String?

    @[JSON::Field(ignore: true)]
    property? bucket_present : Bool = false

    # The domain associated with the entity, if any.
    @[JSON::Field(key: "domain", type: String?, presence: true, ignore_serialize: domain.nil? && !domain_present?)]
    property domain : String?

    @[JSON::Field(ignore: true)]
    property? domain_present : Bool = false

    # The email address associated with the entity, if any.
    @[JSON::Field(key: "email", type: String?, presence: true, ignore_serialize: email.nil? && !email_present?)]
    property email : String?

    @[JSON::Field(ignore: true)]
    property? email_present : Bool = false

    # The entity holding the permission, in one of the following forms:  - user-userId  - user-email  - group-groupId  - group-email  - domain-domain  - project-team-projectId  - allUsers  - allAuthenticatedUsers Examples:  - The user liz@example.com would be user-liz@example.com.  - The group example@googlegroups.com would be group-example@googlegroups.com.  - To refer to all members of the Google Apps for Business domain example.com, the entity would be domain-example.com.
    @[JSON::Field(key: "entity", type: String?, presence: true, ignore_serialize: entity.nil? && !entity_present?)]
    property entity : String?

    @[JSON::Field(ignore: true)]
    property? entity_present : Bool = false

    # The ID for the entity, if any.
    @[JSON::Field(key: "entityId", type: String?, presence: true, ignore_serialize: entity_id.nil? && !entity_id_present?)]
    property entity_id : String?

    @[JSON::Field(ignore: true)]
    property? entity_id_present : Bool = false

    # HTTP 1.1 Entity tag for the access-control entry.
    @[JSON::Field(key: "etag", type: String?, presence: true, ignore_serialize: etag.nil? && !etag_present?)]
    property etag : String?

    @[JSON::Field(ignore: true)]
    property? etag_present : Bool = false

    # The ID of the access-control entry.
    @[JSON::Field(key: "id", type: String?, presence: true, ignore_serialize: id.nil? && !id_present?)]
    property id : String?

    @[JSON::Field(ignore: true)]
    property? id_present : Bool = false

    # The kind of item this is. For bucket access control entries, this is always storage#bucketAccessControl.
    @[JSON::Field(key: "kind", type: String?, default: "storage#bucketAccessControl", presence: true, ignore_serialize: kind.nil? && !kind_present?)]
    property kind : String?

    @[JSON::Field(ignore: true)]
    property? kind_present : Bool = false

    @[JSON::Field(key: "projectTeam", type: BucketAccessControlProjectTeam?, presence: true, ignore_serialize: project_team.nil? && !project_team_present?)]
    property project_team : BucketAccessControlProjectTeam?

    @[JSON::Field(ignore: true)]
    property? project_team_present : Bool = false

    # The access permission for the entity.
    @[JSON::Field(key: "role", type: String?, presence: true, ignore_serialize: role.nil? && !role_present?)]
    property role : String?

    @[JSON::Field(ignore: true)]
    property? role_present : Bool = false

    # The link to this access-control entry.
    @[JSON::Field(key: "selfLink", type: String?, presence: true, ignore_serialize: self_link.nil? && !self_link_present?)]
    property self_link : String?

    @[JSON::Field(ignore: true)]
    property? self_link_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @bucket : String? = nil, @domain : String? = nil, @email : String? = nil, @entity : String? = nil, @entity_id : String? = nil, @etag : String? = nil, @id : String? = nil, @kind : String? = "storage#bucketAccessControl", @project_team : BucketAccessControlProjectTeam? = nil, @role : String? = nil, @self_link : String? = nil)
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
    def_equals_and_hash(@bucket, @domain, @email, @entity, @entity_id, @etag, @id, @kind, @project_team, @role, @self_link)
  end
end
