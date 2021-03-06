#  Cloud Storage JSON API
#
# Stores and retrieves potentially large, immutable data objects.
#
# The version of the OpenAPI document: v1
#
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for GoogleCloudStorage::ObjectAccessControlsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "ObjectAccessControlsApi" do
  describe "test an instance of ObjectAccessControlsApi" do
    it "should create an instance of ObjectAccessControlsApi" do
      api_instance = GoogleCloudStorage::ObjectAccessControlsApi.new
      api_instance.should be_a(GoogleCloudStorage::ObjectAccessControlsApi)
    end
  end

  # unit tests for storage_object_access_controls_delete
  # Permanently deletes the ACL entry for the specified entity on the specified object.
  # @param bucket Name of a bucket.
  # @param object Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  # @param entity The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :upload_type Upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;, \&quot;resumable\&quot;).
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :generation If present, selects a specific revision of this object (as opposed to the latest version, the default).
  # @option opts [String] :user_project The project to be billed for this request. Required for Requester Pays buckets.
  # @return [nil]
  describe "storage_object_access_controls_delete test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for storage_object_access_controls_get
  # Returns the ACL entry for the specified entity on the specified object.
  # @param bucket Name of a bucket.
  # @param object Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  # @param entity The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :upload_type Upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;, \&quot;resumable\&quot;).
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :generation If present, selects a specific revision of this object (as opposed to the latest version, the default).
  # @option opts [String] :user_project The project to be billed for this request. Required for Requester Pays buckets.
  # @return [ObjectAccessControl]
  describe "storage_object_access_controls_get test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for storage_object_access_controls_insert
  # Creates a new ACL entry on the specified object.
  # @param bucket Name of a bucket.
  # @param object Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :upload_type Upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;, \&quot;resumable\&quot;).
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :generation If present, selects a specific revision of this object (as opposed to the latest version, the default).
  # @option opts [String] :user_project The project to be billed for this request. Required for Requester Pays buckets.
  # @option opts [ObjectAccessControl] :object_access_control
  # @return [ObjectAccessControl]
  describe "storage_object_access_controls_insert test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for storage_object_access_controls_list
  # Retrieves ACL entries on the specified object.
  # @param bucket Name of a bucket.
  # @param object Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :upload_type Upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;, \&quot;resumable\&quot;).
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :generation If present, selects a specific revision of this object (as opposed to the latest version, the default).
  # @option opts [String] :user_project The project to be billed for this request. Required for Requester Pays buckets.
  # @return [ObjectAccessControls]
  describe "storage_object_access_controls_list test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for storage_object_access_controls_patch
  # Patches an ACL entry on the specified object.
  # @param bucket Name of a bucket.
  # @param object Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  # @param entity The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :upload_type Upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;, \&quot;resumable\&quot;).
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :generation If present, selects a specific revision of this object (as opposed to the latest version, the default).
  # @option opts [String] :user_project The project to be billed for this request. Required for Requester Pays buckets.
  # @option opts [ObjectAccessControl] :object_access_control
  # @return [ObjectAccessControl]
  describe "storage_object_access_controls_patch test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for storage_object_access_controls_update
  # Updates an ACL entry on the specified object.
  # @param bucket Name of a bucket.
  # @param object Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  # @param entity The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :upload_type Upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;, \&quot;resumable\&quot;).
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :generation If present, selects a specific revision of this object (as opposed to the latest version, the default).
  # @option opts [String] :user_project The project to be billed for this request. Required for Requester Pays buckets.
  # @option opts [ObjectAccessControl] :object_access_control
  # @return [ObjectAccessControl]
  describe "storage_object_access_controls_update test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
