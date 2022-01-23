#  Cloud Storage JSON API
#
# Stores and retrieves potentially large, immutable data objects.
#
# The version of the OpenAPI document: v1
#
# Generated by: https://openapi-generator.tech
#

require "uri"

module GoogleCloudStorage
  class BucketAccessControlsApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Permanently deletes the ACL entry for the specified entity on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @param entity [String] The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    # @return [nil]
    def delete(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, provisional_user_project : String? = nil, user_project : String? = nil)
      delete_with_http_info(bucket: bucket, entity: entity, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, provisional_user_project: provisional_user_project, user_project: user_project)
      nil
    end

    # Permanently deletes the ACL entry for the specified entity on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @param entity [String] The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_with_http_info(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, provisional_user_project : String? = nil, user_project : String? = nil)
      request = build_api_request_for_delete(bucket: bucket, entity: entity, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, provisional_user_project: provisional_user_project, user_project: user_project)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: BucketAccessControlsApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return nil, status_code, headers
    end

    # Permanently deletes the ACL entry for the specified entity on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @param entity [String] The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    # @return nil
    def delete(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, provisional_user_project : String? = nil, user_project : String? = nil, &block : Crest::Response ->)
      build_api_request_for_delete(bucket: bucket, entity: entity, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, provisional_user_project: provisional_user_project, user_project: user_project).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_delete(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, provisional_user_project : String? = nil, user_project : String? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: BucketAccessControlsApi.delete ..." }
      end
      allowable_values = ["json"]
      if @api_client.config.client_side_validation && !alt.nil? && !alt.null? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/b/{bucket}/acl/{entity}".sub("{" + "bucket" + "}", URI.encode_path(bucket.to_s)).sub("{" + "entity" + "}", URI.encode_path(entity.to_s))

      # query parameters
      query_params = Hash(String, String).new
      query_params["alt"] = alt.to_s if !alt.nil? && !alt.null?
      query_params["fields"] = fields.to_s if !fields.nil? && !fields.null?
      query_params["key"] = key.to_s if !key.nil? && !key.null?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil? && !oauth_token.null?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil? && !pretty_print.null?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil? && !quota_user.null?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil? && !user_ip.null?
      query_params["provisionalUserProject"] = provisional_user_project.to_s if !provisional_user_project.nil? && !provisional_user_project.null?
      query_params["userProject"] = user_project.to_s if !user_project.nil? && !user_project.null?

      # header parameters
      header_params = Hash(String, String).new

      # form parameters
      form_params = nil

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = ["Oauth2", "Oauth2c"]

      @api_client.build_api_request(
        http_method: :"DELETE",
        path: local_var_path,
        operation: "BucketAccessControlsApi.delete",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Returns the ACL entry for the specified entity on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @param entity [String] The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    # @return [BucketAccessControl]
    def get(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, provisional_user_project : String? = nil, user_project : String? = nil)
      data, _status_code, _headers = get_with_http_info(bucket: bucket, entity: entity, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, provisional_user_project: provisional_user_project, user_project: user_project)
      data
    end

    # Returns the ACL entry for the specified entity on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @param entity [String] The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    # @return [Array<(BucketAccessControl, Integer, Hash)>] BucketAccessControl data, response status code and response headers
    def get_with_http_info(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, provisional_user_project : String? = nil, user_project : String? = nil)
      request = build_api_request_for_get(bucket: bucket, entity: entity, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, provisional_user_project: provisional_user_project, user_project: user_project)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: BucketAccessControlsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return BucketAccessControl.from_nason(data), status_code, headers
    end

    # Returns the ACL entry for the specified entity on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @param entity [String] The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    # @return nil
    def get(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, provisional_user_project : String? = nil, user_project : String? = nil, &block : Crest::Response ->)
      build_api_request_for_get(bucket: bucket, entity: entity, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, provisional_user_project: provisional_user_project, user_project: user_project).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_get(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, provisional_user_project : String? = nil, user_project : String? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: BucketAccessControlsApi.get ..." }
      end
      allowable_values = ["json"]
      if @api_client.config.client_side_validation && !alt.nil? && !alt.null? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/b/{bucket}/acl/{entity}".sub("{" + "bucket" + "}", URI.encode_path(bucket.to_s)).sub("{" + "entity" + "}", URI.encode_path(entity.to_s))

      # query parameters
      query_params = Hash(String, String).new
      query_params["alt"] = alt.to_s if !alt.nil? && !alt.null?
      query_params["fields"] = fields.to_s if !fields.nil? && !fields.null?
      query_params["key"] = key.to_s if !key.nil? && !key.null?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil? && !oauth_token.null?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil? && !pretty_print.null?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil? && !quota_user.null?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil? && !user_ip.null?
      query_params["provisionalUserProject"] = provisional_user_project.to_s if !provisional_user_project.nil? && !provisional_user_project.null?
      query_params["userProject"] = user_project.to_s if !user_project.nil? && !user_project.null?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = ["Oauth2", "Oauth2c"]

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "BucketAccessControlsApi.get",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Creates a new ACL entry on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @return [BucketAccessControl]
    def insert(*, bucket : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, provisional_user_project : String? = nil, user_project : String? = nil, bucket_access_control : BucketAccessControl? = nil)
      data, _status_code, _headers = insert_with_http_info(bucket: bucket, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, provisional_user_project: provisional_user_project, user_project: user_project, bucket_access_control: bucket_access_control)
      data
    end

    # Creates a new ACL entry on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @return [Array<(BucketAccessControl, Integer, Hash)>] BucketAccessControl data, response status code and response headers
    def insert_with_http_info(*, bucket : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, provisional_user_project : String? = nil, user_project : String? = nil, bucket_access_control : BucketAccessControl? = nil)
      request = build_api_request_for_insert(bucket: bucket, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, provisional_user_project: provisional_user_project, user_project: user_project, bucket_access_control: bucket_access_control)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: BucketAccessControlsApi#insert\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return BucketAccessControl.from_nason(data), status_code, headers
    end

    # Creates a new ACL entry on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @return nil
    def insert(*, bucket : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, provisional_user_project : String? = nil, user_project : String? = nil, bucket_access_control : BucketAccessControl? = nil, &block : Crest::Response ->)
      build_api_request_for_insert(bucket: bucket, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, provisional_user_project: provisional_user_project, user_project: user_project, bucket_access_control: bucket_access_control).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_insert(*, bucket : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, provisional_user_project : String? = nil, user_project : String? = nil, bucket_access_control : BucketAccessControl? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: BucketAccessControlsApi.insert ..." }
      end
      allowable_values = ["json"]
      if @api_client.config.client_side_validation && !alt.nil? && !alt.null? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/b/{bucket}/acl".sub("{" + "bucket" + "}", URI.encode_path(bucket.to_s))

      # query parameters
      query_params = Hash(String, String).new
      query_params["alt"] = alt.to_s if !alt.nil? && !alt.null?
      query_params["fields"] = fields.to_s if !fields.nil? && !fields.null?
      query_params["key"] = key.to_s if !key.nil? && !key.null?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil? && !oauth_token.null?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil? && !pretty_print.null?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil? && !quota_user.null?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil? && !user_ip.null?
      query_params["provisionalUserProject"] = provisional_user_project.to_s if !provisional_user_project.nil? && !provisional_user_project.null?
      query_params["userProject"] = user_project.to_s if !user_project.nil? && !user_project.null?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = bucket_access_control.to_nason

      # auth_names
      auth_names = ["Oauth2", "Oauth2c"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "BucketAccessControlsApi.insert",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Retrieves ACL entries on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @return [BucketAccessControls]
    def list(*, bucket : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, provisional_user_project : String? = nil, user_project : String? = nil)
      data, _status_code, _headers = list_with_http_info(bucket: bucket, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, provisional_user_project: provisional_user_project, user_project: user_project)
      data
    end

    # Retrieves ACL entries on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @return [Array<(BucketAccessControls, Integer, Hash)>] BucketAccessControls data, response status code and response headers
    def list_with_http_info(*, bucket : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, provisional_user_project : String? = nil, user_project : String? = nil)
      request = build_api_request_for_list(bucket: bucket, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, provisional_user_project: provisional_user_project, user_project: user_project)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: BucketAccessControlsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return BucketAccessControls.from_nason(data), status_code, headers
    end

    # Retrieves ACL entries on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @return nil
    def list(*, bucket : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, provisional_user_project : String? = nil, user_project : String? = nil, &block : Crest::Response ->)
      build_api_request_for_list(bucket: bucket, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, provisional_user_project: provisional_user_project, user_project: user_project).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_list(*, bucket : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, provisional_user_project : String? = nil, user_project : String? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: BucketAccessControlsApi.list ..." }
      end
      allowable_values = ["json"]
      if @api_client.config.client_side_validation && !alt.nil? && !alt.null? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/b/{bucket}/acl".sub("{" + "bucket" + "}", URI.encode_path(bucket.to_s))

      # query parameters
      query_params = Hash(String, String).new
      query_params["alt"] = alt.to_s if !alt.nil? && !alt.null?
      query_params["fields"] = fields.to_s if !fields.nil? && !fields.null?
      query_params["key"] = key.to_s if !key.nil? && !key.null?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil? && !oauth_token.null?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil? && !pretty_print.null?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil? && !quota_user.null?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil? && !user_ip.null?
      query_params["provisionalUserProject"] = provisional_user_project.to_s if !provisional_user_project.nil? && !provisional_user_project.null?
      query_params["userProject"] = user_project.to_s if !user_project.nil? && !user_project.null?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = ["Oauth2", "Oauth2c"]

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "BucketAccessControlsApi.list",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Patches an ACL entry on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @param entity [String] The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    # @return [BucketAccessControl]
    def patch(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, provisional_user_project : String? = nil, user_project : String? = nil, bucket_access_control : BucketAccessControl? = nil)
      data, _status_code, _headers = patch_with_http_info(bucket: bucket, entity: entity, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, provisional_user_project: provisional_user_project, user_project: user_project, bucket_access_control: bucket_access_control)
      data
    end

    # Patches an ACL entry on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @param entity [String] The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    # @return [Array<(BucketAccessControl, Integer, Hash)>] BucketAccessControl data, response status code and response headers
    def patch_with_http_info(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, provisional_user_project : String? = nil, user_project : String? = nil, bucket_access_control : BucketAccessControl? = nil)
      request = build_api_request_for_patch(bucket: bucket, entity: entity, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, provisional_user_project: provisional_user_project, user_project: user_project, bucket_access_control: bucket_access_control)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: BucketAccessControlsApi#patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return BucketAccessControl.from_nason(data), status_code, headers
    end

    # Patches an ACL entry on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @param entity [String] The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    # @return nil
    def patch(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, provisional_user_project : String? = nil, user_project : String? = nil, bucket_access_control : BucketAccessControl? = nil, &block : Crest::Response ->)
      build_api_request_for_patch(bucket: bucket, entity: entity, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, provisional_user_project: provisional_user_project, user_project: user_project, bucket_access_control: bucket_access_control).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_patch(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, provisional_user_project : String? = nil, user_project : String? = nil, bucket_access_control : BucketAccessControl? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: BucketAccessControlsApi.patch ..." }
      end
      allowable_values = ["json"]
      if @api_client.config.client_side_validation && !alt.nil? && !alt.null? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/b/{bucket}/acl/{entity}".sub("{" + "bucket" + "}", URI.encode_path(bucket.to_s)).sub("{" + "entity" + "}", URI.encode_path(entity.to_s))

      # query parameters
      query_params = Hash(String, String).new
      query_params["alt"] = alt.to_s if !alt.nil? && !alt.null?
      query_params["fields"] = fields.to_s if !fields.nil? && !fields.null?
      query_params["key"] = key.to_s if !key.nil? && !key.null?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil? && !oauth_token.null?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil? && !pretty_print.null?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil? && !quota_user.null?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil? && !user_ip.null?
      query_params["provisionalUserProject"] = provisional_user_project.to_s if !provisional_user_project.nil? && !provisional_user_project.null?
      query_params["userProject"] = user_project.to_s if !user_project.nil? && !user_project.null?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = bucket_access_control.to_nason

      # auth_names
      auth_names = ["Oauth2", "Oauth2c"]

      @api_client.build_api_request(
        http_method: :"PATCH",
        path: local_var_path,
        operation: "BucketAccessControlsApi.patch",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Updates an ACL entry on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @param entity [String] The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    # @return [BucketAccessControl]
    def update(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, provisional_user_project : String? = nil, user_project : String? = nil, bucket_access_control : BucketAccessControl? = nil)
      data, _status_code, _headers = update_with_http_info(bucket: bucket, entity: entity, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, provisional_user_project: provisional_user_project, user_project: user_project, bucket_access_control: bucket_access_control)
      data
    end

    # Updates an ACL entry on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @param entity [String] The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    # @return [Array<(BucketAccessControl, Integer, Hash)>] BucketAccessControl data, response status code and response headers
    def update_with_http_info(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, provisional_user_project : String? = nil, user_project : String? = nil, bucket_access_control : BucketAccessControl? = nil)
      request = build_api_request_for_update(bucket: bucket, entity: entity, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, provisional_user_project: provisional_user_project, user_project: user_project, bucket_access_control: bucket_access_control)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: BucketAccessControlsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return BucketAccessControl.from_nason(data), status_code, headers
    end

    # Updates an ACL entry on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @param entity [String] The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    # @return nil
    def update(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, provisional_user_project : String? = nil, user_project : String? = nil, bucket_access_control : BucketAccessControl? = nil, &block : Crest::Response ->)
      build_api_request_for_update(bucket: bucket, entity: entity, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, provisional_user_project: provisional_user_project, user_project: user_project, bucket_access_control: bucket_access_control).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_update(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, provisional_user_project : String? = nil, user_project : String? = nil, bucket_access_control : BucketAccessControl? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: BucketAccessControlsApi.update ..." }
      end
      allowable_values = ["json"]
      if @api_client.config.client_side_validation && !alt.nil? && !alt.null? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/b/{bucket}/acl/{entity}".sub("{" + "bucket" + "}", URI.encode_path(bucket.to_s)).sub("{" + "entity" + "}", URI.encode_path(entity.to_s))

      # query parameters
      query_params = Hash(String, String).new
      query_params["alt"] = alt.to_s if !alt.nil? && !alt.null?
      query_params["fields"] = fields.to_s if !fields.nil? && !fields.null?
      query_params["key"] = key.to_s if !key.nil? && !key.null?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil? && !oauth_token.null?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil? && !pretty_print.null?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil? && !quota_user.null?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil? && !user_ip.null?
      query_params["provisionalUserProject"] = provisional_user_project.to_s if !provisional_user_project.nil? && !provisional_user_project.null?
      query_params["userProject"] = user_project.to_s if !user_project.nil? && !user_project.null?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = bucket_access_control.to_nason

      # auth_names
      auth_names = ["Oauth2", "Oauth2c"]

      @api_client.build_api_request(
        http_method: :"PUT",
        path: local_var_path,
        operation: "BucketAccessControlsApi.update",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end
  end
end
