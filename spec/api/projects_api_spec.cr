#  Cloud Storage JSON API
#
# Stores and retrieves potentially large, immutable data objects.
#
# The version of the OpenAPI document: v1
#
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 5.3.1-SNAPSHOT
#

require "../spec_helper"

# Unit tests for GoogleCloudStorage::ProjectsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "ProjectsApi" do
  describe "test an instance of ProjectsApi" do
    it "should create an instance of ProjectsApi" do
      api_instance = GoogleCloudStorage::ProjectsApi.new
      api_instance.should be_a(GoogleCloudStorage::ProjectsApi)
    end
  end

  # unit tests for storage_projects_hmac_keys_create
  # Creates a new HMAC key for the specified service account.
  # @param project_id Project ID owning the service account.
  # @param service_account_email Email address of the service account.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :user_project The project to be billed for this request.
  # @return [HmacKey]
  describe "storage_projects_hmac_keys_create test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for storage_projects_hmac_keys_delete
  # Deletes an HMAC key.
  # @param project_id Project ID owning the requested key
  # @param access_id Name of the HMAC key to be deleted.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :user_project The project to be billed for this request.
  # @return [nil]
  describe "storage_projects_hmac_keys_delete test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for storage_projects_hmac_keys_get
  # Retrieves an HMAC key&#39;s metadata
  # @param project_id Project ID owning the service account of the requested key.
  # @param access_id Name of the HMAC key.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :user_project The project to be billed for this request.
  # @return [HmacKeyMetadata]
  describe "storage_projects_hmac_keys_get test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for storage_projects_hmac_keys_list
  # Retrieves a list of HMAC keys matching the criteria.
  # @param project_id Name of the project in which to look for HMAC keys.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [Int32] :max_results Maximum number of items to return in a single page of responses. The service uses this parameter or 250 items, whichever is smaller. The max number of items per page will also be limited by the number of distinct service accounts in the response. If the number of service accounts in a single response is too high, the page will truncated and a next page token will be returned.
  # @option opts [String] :page_token A previously-returned page token representing part of the larger set of results to view.
  # @option opts [String] :service_account_email If present, only keys for the given service account are returned.
  # @option opts [Bool] :show_deleted_keys Whether or not to show keys in the DELETED state.
  # @option opts [String] :user_project The project to be billed for this request.
  # @return [HmacKeysMetadata]
  describe "storage_projects_hmac_keys_list test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for storage_projects_hmac_keys_update
  # Updates the state of an HMAC key. See the HMAC Key resource descriptor for valid states.
  # @param project_id Project ID owning the service account of the updated key.
  # @param access_id Name of the HMAC key being updated.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :user_project The project to be billed for this request.
  # @option opts [HmacKeyMetadata] :hmac_key_metadata
  # @return [HmacKeyMetadata]
  describe "storage_projects_hmac_keys_update test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for storage_projects_service_account_get
  # Get the email address of this project&#39;s Google Cloud Storage service account.
  # @param project_id Project ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :provisional_user_project The project to be billed for this request if the target bucket is requester-pays bucket.
  # @option opts [String] :user_project The project to be billed for this request.
  # @return [ServiceAccount]
  describe "storage_projects_service_account_get test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
