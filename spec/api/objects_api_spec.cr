#  Cloud Storage JSON API
#
# Stores and retrieves potentially large, immutable data objects.
#
# The version of the OpenAPI document: v1
#
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for GoogleCloudStorage::ObjectsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "ObjectsApi" do
  describe "test an instance of ObjectsApi" do
    it "should create an instance of ObjectsApi" do
      api_instance = GoogleCloudStorage::ObjectsApi.new
      api_instance.should be_a(GoogleCloudStorage::ObjectsApi)
    end
  end

  # unit tests for storage_objects_compose
  # Concatenates a list of existing objects into a new object in the same bucket.
  # @param destination_bucket Name of the bucket containing the source objects. The destination object is stored in this bucket.
  # @param destination_object Name of the new object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :destination_predefined_acl Apply a predefined set of access controls to the destination object.
  # @option opts [String] :if_generation_match Makes the operation conditional on whether the object&#39;s current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
  # @option opts [String] :if_metageneration_match Makes the operation conditional on whether the object&#39;s current metageneration matches the given value.
  # @option opts [String] :kms_key_name Resource name of the Cloud KMS key, of the form projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key, that will be used to encrypt the object. Overrides the object metadata&#39;s kms_key_name value, if any.
  # @option opts [String] :provisional_user_project The project to be billed for this request if the target bucket is requester-pays bucket.
  # @option opts [String] :user_project The project to be billed for this request. Required for Requester Pays buckets.
  # @option opts [ComposeRequest] :compose_request
  # @return [Object]
  describe "storage_objects_compose test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for storage_objects_copy
  # Copies a source object to a destination object. Optionally overrides metadata.
  # @param source_bucket Name of the bucket in which to find the source object.
  # @param source_object Name of the source object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  # @param destination_bucket Name of the bucket in which to store the new object. Overrides the provided object metadata&#39;s bucket value, if any.For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  # @param destination_object Name of the new object. Required when the object metadata is not otherwise provided. Overrides the object metadata&#39;s name value, if any.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :destination_kms_key_name Resource name of the Cloud KMS key, of the form projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key, that will be used to encrypt the object. Overrides the object metadata&#39;s kms_key_name value, if any.
  # @option opts [String] :destination_predefined_acl Apply a predefined set of access controls to the destination object.
  # @option opts [String] :if_generation_match Makes the operation conditional on whether the destination object&#39;s current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
  # @option opts [String] :if_generation_not_match Makes the operation conditional on whether the destination object&#39;s current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
  # @option opts [String] :if_metageneration_match Makes the operation conditional on whether the destination object&#39;s current metageneration matches the given value.
  # @option opts [String] :if_metageneration_not_match Makes the operation conditional on whether the destination object&#39;s current metageneration does not match the given value.
  # @option opts [String] :if_source_generation_match Makes the operation conditional on whether the source object&#39;s current generation matches the given value.
  # @option opts [String] :if_source_generation_not_match Makes the operation conditional on whether the source object&#39;s current generation does not match the given value.
  # @option opts [String] :if_source_metageneration_match Makes the operation conditional on whether the source object&#39;s current metageneration matches the given value.
  # @option opts [String] :if_source_metageneration_not_match Makes the operation conditional on whether the source object&#39;s current metageneration does not match the given value.
  # @option opts [String] :projection Set of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full.
  # @option opts [String] :provisional_user_project The project to be billed for this request if the target bucket is requester-pays bucket.
  # @option opts [String] :source_generation If present, selects a specific revision of the source object (as opposed to the latest version, the default).
  # @option opts [String] :user_project The project to be billed for this request. Required for Requester Pays buckets.
  # @option opts [Object] :object
  # @return [Object]
  describe "storage_objects_copy test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for storage_objects_delete
  # Deletes an object and its metadata. Deletions are permanent if versioning is not enabled for the bucket, or if the generation parameter is used.
  # @param bucket Name of the bucket in which the object resides.
  # @param object Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :generation If present, permanently deletes a specific revision of this object (as opposed to the latest version, the default).
  # @option opts [String] :if_generation_match Makes the operation conditional on whether the object&#39;s current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
  # @option opts [String] :if_generation_not_match Makes the operation conditional on whether the object&#39;s current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
  # @option opts [String] :if_metageneration_match Makes the operation conditional on whether the object&#39;s current metageneration matches the given value.
  # @option opts [String] :if_metageneration_not_match Makes the operation conditional on whether the object&#39;s current metageneration does not match the given value.
  # @option opts [String] :provisional_user_project The project to be billed for this request if the target bucket is requester-pays bucket.
  # @option opts [String] :user_project The project to be billed for this request. Required for Requester Pays buckets.
  # @return [nil]
  describe "storage_objects_delete test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for storage_objects_get
  # Retrieves an object or its metadata.
  # @param bucket Name of the bucket in which the object resides.
  # @param object Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :generation If present, selects a specific revision of this object (as opposed to the latest version, the default).
  # @option opts [String] :if_generation_match Makes the operation conditional on whether the object&#39;s current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
  # @option opts [String] :if_generation_not_match Makes the operation conditional on whether the object&#39;s current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
  # @option opts [String] :if_metageneration_match Makes the operation conditional on whether the object&#39;s current metageneration matches the given value.
  # @option opts [String] :if_metageneration_not_match Makes the operation conditional on whether the object&#39;s current metageneration does not match the given value.
  # @option opts [String] :projection Set of properties to return. Defaults to noAcl.
  # @option opts [String] :provisional_user_project The project to be billed for this request if the target bucket is requester-pays bucket.
  # @option opts [String] :user_project The project to be billed for this request. Required for Requester Pays buckets.
  # @return [Object]
  describe "storage_objects_get test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for storage_objects_get_iam_policy
  # Returns an IAM policy for the specified object.
  # @param bucket Name of the bucket in which the object resides.
  # @param object Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :generation If present, selects a specific revision of this object (as opposed to the latest version, the default).
  # @option opts [String] :provisional_user_project The project to be billed for this request if the target bucket is requester-pays bucket.
  # @option opts [String] :user_project The project to be billed for this request. Required for Requester Pays buckets.
  # @return [Policy]
  describe "storage_objects_get_iam_policy test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for storage_objects_insert
  # Stores a new object and metadata.
  # @param bucket Name of the bucket in which to store the new object. Overrides the provided object metadata&#39;s bucket value, if any.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :content_encoding If set, sets the contentEncoding property of the final object to this value. Setting this parameter is equivalent to setting the contentEncoding metadata property. This can be useful when uploading an object with uploadType&#x3D;media to indicate the encoding of the content being uploaded.
  # @option opts [String] :if_generation_match Makes the operation conditional on whether the object&#39;s current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
  # @option opts [String] :if_generation_not_match Makes the operation conditional on whether the object&#39;s current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
  # @option opts [String] :if_metageneration_match Makes the operation conditional on whether the object&#39;s current metageneration matches the given value.
  # @option opts [String] :if_metageneration_not_match Makes the operation conditional on whether the object&#39;s current metageneration does not match the given value.
  # @option opts [String] :kms_key_name Resource name of the Cloud KMS key, of the form projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key, that will be used to encrypt the object. Overrides the object metadata&#39;s kms_key_name value, if any.
  # @option opts [String] :name Name of the object. Required when the object metadata is not otherwise provided. Overrides the object metadata&#39;s name value, if any. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  # @option opts [String] :predefined_acl Apply a predefined set of access controls to this object.
  # @option opts [String] :projection Set of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full.
  # @option opts [String] :provisional_user_project The project to be billed for this request if the target bucket is requester-pays bucket.
  # @option opts [String] :user_project The project to be billed for this request. Required for Requester Pays buckets.
  # @option opts [Object] :object
  # @return [Object]
  describe "storage_objects_insert test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for storage_objects_list
  # Retrieves a list of objects matching the criteria.
  # @param bucket Name of the bucket in which to look for objects.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :delimiter Returns results in a directory-like mode. items will contain only objects whose names, aside from the prefix, do not contain delimiter. Objects whose names, aside from the prefix, contain delimiter will have their name, truncated after the delimiter, returned in prefixes. Duplicate prefixes are omitted.
  # @option opts [String] :end_offset Filter results to objects whose names are lexicographically before endOffset. If startOffset is also set, the objects listed will have names between startOffset (inclusive) and endOffset (exclusive).
  # @option opts [Bool] :include_trailing_delimiter If true, objects that end in exactly one instance of delimiter will have their metadata included in items in addition to prefixes.
  # @option opts [Int32] :max_results Maximum number of items plus prefixes to return in a single page of responses. As duplicate prefixes are omitted, fewer total results may be returned than requested. The service will use this parameter or 1,000 items, whichever is smaller.
  # @option opts [String] :page_token A previously-returned page token representing part of the larger set of results to view.
  # @option opts [String] :prefix Filter results to objects whose names begin with this prefix.
  # @option opts [String] :projection Set of properties to return. Defaults to noAcl.
  # @option opts [String] :provisional_user_project The project to be billed for this request if the target bucket is requester-pays bucket.
  # @option opts [String] :start_offset Filter results to objects whose names are lexicographically equal to or after startOffset. If endOffset is also set, the objects listed will have names between startOffset (inclusive) and endOffset (exclusive).
  # @option opts [String] :user_project The project to be billed for this request. Required for Requester Pays buckets.
  # @option opts [Bool] :versions If true, lists all versions of an object as distinct results. The default is false. For more information, see Object Versioning.
  # @return [Objects]
  describe "storage_objects_list test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for storage_objects_patch
  # Patches an object&#39;s metadata.
  # @param bucket Name of the bucket in which the object resides.
  # @param object Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :generation If present, selects a specific revision of this object (as opposed to the latest version, the default).
  # @option opts [String] :if_generation_match Makes the operation conditional on whether the object&#39;s current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
  # @option opts [String] :if_generation_not_match Makes the operation conditional on whether the object&#39;s current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
  # @option opts [String] :if_metageneration_match Makes the operation conditional on whether the object&#39;s current metageneration matches the given value.
  # @option opts [String] :if_metageneration_not_match Makes the operation conditional on whether the object&#39;s current metageneration does not match the given value.
  # @option opts [String] :predefined_acl Apply a predefined set of access controls to this object.
  # @option opts [String] :projection Set of properties to return. Defaults to full.
  # @option opts [String] :provisional_user_project The project to be billed for this request if the target bucket is requester-pays bucket.
  # @option opts [String] :user_project The project to be billed for this request, for Requester Pays buckets.
  # @option opts [Object] :object2
  # @return [Object]
  describe "storage_objects_patch test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for storage_objects_rewrite
  # Rewrites a source object to a destination object. Optionally overrides metadata.
  # @param source_bucket Name of the bucket in which to find the source object.
  # @param source_object Name of the source object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  # @param destination_bucket Name of the bucket in which to store the new object. Overrides the provided object metadata&#39;s bucket value, if any.
  # @param destination_object Name of the new object. Required when the object metadata is not otherwise provided. Overrides the object metadata&#39;s name value, if any. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :destination_kms_key_name Resource name of the Cloud KMS key, of the form projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key, that will be used to encrypt the object. Overrides the object metadata&#39;s kms_key_name value, if any.
  # @option opts [String] :destination_predefined_acl Apply a predefined set of access controls to the destination object.
  # @option opts [String] :if_generation_match Makes the operation conditional on whether the object&#39;s current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
  # @option opts [String] :if_generation_not_match Makes the operation conditional on whether the object&#39;s current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
  # @option opts [String] :if_metageneration_match Makes the operation conditional on whether the destination object&#39;s current metageneration matches the given value.
  # @option opts [String] :if_metageneration_not_match Makes the operation conditional on whether the destination object&#39;s current metageneration does not match the given value.
  # @option opts [String] :if_source_generation_match Makes the operation conditional on whether the source object&#39;s current generation matches the given value.
  # @option opts [String] :if_source_generation_not_match Makes the operation conditional on whether the source object&#39;s current generation does not match the given value.
  # @option opts [String] :if_source_metageneration_match Makes the operation conditional on whether the source object&#39;s current metageneration matches the given value.
  # @option opts [String] :if_source_metageneration_not_match Makes the operation conditional on whether the source object&#39;s current metageneration does not match the given value.
  # @option opts [String] :max_bytes_rewritten_per_call The maximum number of bytes that will be rewritten per rewrite request. Most callers shouldn&#39;t need to specify this parameter - it is primarily in place to support testing. If specified the value must be an integral multiple of 1 MiB (1048576). Also, this only applies to requests where the source and destination span locations and/or storage classes. Finally, this value must not change across rewrite calls else you&#39;ll get an error that the rewriteToken is invalid.
  # @option opts [String] :projection Set of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full.
  # @option opts [String] :provisional_user_project The project to be billed for this request if the target bucket is requester-pays bucket.
  # @option opts [String] :rewrite_token Include this field (from the previous rewrite response) on each rewrite request after the first one, until the rewrite response &#39;done&#39; flag is true. Calls that provide a rewriteToken can omit all other request fields, but if included those fields must match the values provided in the first rewrite request.
  # @option opts [String] :source_generation If present, selects a specific revision of the source object (as opposed to the latest version, the default).
  # @option opts [String] :user_project The project to be billed for this request. Required for Requester Pays buckets.
  # @option opts [Object] :object
  # @return [RewriteResponse]
  describe "storage_objects_rewrite test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for storage_objects_set_iam_policy
  # Updates an IAM policy for the specified object.
  # @param bucket Name of the bucket in which the object resides.
  # @param object Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :generation If present, selects a specific revision of this object (as opposed to the latest version, the default).
  # @option opts [String] :provisional_user_project The project to be billed for this request if the target bucket is requester-pays bucket.
  # @option opts [String] :user_project The project to be billed for this request. Required for Requester Pays buckets.
  # @option opts [Policy] :policy
  # @return [Policy]
  describe "storage_objects_set_iam_policy test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for storage_objects_test_iam_permissions
  # Tests a set of permissions on the given object to see which, if any, are held by the caller.
  # @param bucket Name of the bucket in which the object resides.
  # @param object Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  # @param permissions Permissions to test.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :generation If present, selects a specific revision of this object (as opposed to the latest version, the default).
  # @option opts [String] :provisional_user_project The project to be billed for this request if the target bucket is requester-pays bucket.
  # @option opts [String] :user_project The project to be billed for this request. Required for Requester Pays buckets.
  # @return [TestIamPermissionsResponse]
  describe "storage_objects_test_iam_permissions test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for storage_objects_update
  # Updates an object&#39;s metadata.
  # @param bucket Name of the bucket in which the object resides.
  # @param object Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :generation If present, selects a specific revision of this object (as opposed to the latest version, the default).
  # @option opts [String] :if_generation_match Makes the operation conditional on whether the object&#39;s current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
  # @option opts [String] :if_generation_not_match Makes the operation conditional on whether the object&#39;s current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
  # @option opts [String] :if_metageneration_match Makes the operation conditional on whether the object&#39;s current metageneration matches the given value.
  # @option opts [String] :if_metageneration_not_match Makes the operation conditional on whether the object&#39;s current metageneration does not match the given value.
  # @option opts [String] :predefined_acl Apply a predefined set of access controls to this object.
  # @option opts [String] :projection Set of properties to return. Defaults to full.
  # @option opts [String] :provisional_user_project The project to be billed for this request if the target bucket is requester-pays bucket.
  # @option opts [String] :user_project The project to be billed for this request. Required for Requester Pays buckets.
  # @option opts [Object] :object2
  # @return [Object]
  describe "storage_objects_update test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for storage_objects_watch_all
  # Watch for changes on all objects in a bucket.
  # @param bucket Name of the bucket in which to look for objects.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :alt Data format for the response.
  # @option opts [String] :fields Selector specifying which fields to include in a partial response.
  # @option opts [String] :key API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
  # @option opts [String] :oauth_token OAuth 2.0 token for the current user.
  # @option opts [Bool] :pretty_print Returns response with indentations and line breaks.
  # @option opts [String] :quota_user An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
  # @option opts [String] :user_ip Deprecated. Please use quotaUser instead.
  # @option opts [String] :delimiter Returns results in a directory-like mode. items will contain only objects whose names, aside from the prefix, do not contain delimiter. Objects whose names, aside from the prefix, contain delimiter will have their name, truncated after the delimiter, returned in prefixes. Duplicate prefixes are omitted.
  # @option opts [String] :end_offset Filter results to objects whose names are lexicographically before endOffset. If startOffset is also set, the objects listed will have names between startOffset (inclusive) and endOffset (exclusive).
  # @option opts [Bool] :include_trailing_delimiter If true, objects that end in exactly one instance of delimiter will have their metadata included in items in addition to prefixes.
  # @option opts [Int32] :max_results Maximum number of items plus prefixes to return in a single page of responses. As duplicate prefixes are omitted, fewer total results may be returned than requested. The service will use this parameter or 1,000 items, whichever is smaller.
  # @option opts [String] :page_token A previously-returned page token representing part of the larger set of results to view.
  # @option opts [String] :prefix Filter results to objects whose names begin with this prefix.
  # @option opts [String] :projection Set of properties to return. Defaults to noAcl.
  # @option opts [String] :provisional_user_project The project to be billed for this request if the target bucket is requester-pays bucket.
  # @option opts [String] :start_offset Filter results to objects whose names are lexicographically equal to or after startOffset. If endOffset is also set, the objects listed will have names between startOffset (inclusive) and endOffset (exclusive).
  # @option opts [String] :user_project The project to be billed for this request. Required for Requester Pays buckets.
  # @option opts [Bool] :versions If true, lists all versions of an object as distinct results. The default is false. For more information, see Object Versioning.
  # @option opts [Channel] :channel
  # @return [Channel]
  describe "storage_objects_watch_all test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
