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
  class DefaultObjectAccessControlsApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Permanently deletes the default object ACL entry for the specified entity on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @param entity [String] The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    # @return [nil]
    def delete(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, upload_type : String? = nil, user_ip : String? = nil, user_project : String? = nil)
      delete_with_http_info(bucket: bucket, entity: entity, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, upload_type: upload_type, user_ip: user_ip, user_project: user_project)
      nil
    end

    # Permanently deletes the default object ACL entry for the specified entity on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @param entity [String] The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_with_http_info(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, upload_type : String? = nil, user_ip : String? = nil, user_project : String? = nil)
      request = build_api_request_for_delete(bucket: bucket, entity: entity, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, upload_type: upload_type, user_ip: user_ip, user_project: user_project)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: DefaultObjectAccessControlsApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return nil, status_code, headers
    end

    # Permanently deletes the default object ACL entry for the specified entity on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @param entity [String] The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    # @return nil
    def delete(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, upload_type : String? = nil, user_ip : String? = nil, user_project : String? = nil, &block : Crest::Response ->)
      build_api_request_for_delete(bucket: bucket, entity: entity, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, upload_type: upload_type, user_ip: user_ip, user_project: user_project).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_delete(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, upload_type : String? = nil, user_ip : String? = nil, user_project : String? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: DefaultObjectAccessControlsApi.delete ..." }
      end
      allowable_values = ["json"]
      if @api_client.config.client_side_validation && !alt.nil? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/b/{bucket}/defaultObjectAcl/{entity}".sub("{" + "bucket" + "}", URI.encode_path(bucket.to_s)).sub("{" + "entity" + "}", URI.encode_path(entity.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["alt"] = alt.to_s if !alt.nil?
      query_params["fields"] = fields.to_s if !fields.nil?
      query_params["key"] = key.to_s if !key.nil?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil?
      query_params["uploadType"] = upload_type.to_s if !upload_type.nil?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil?
      query_params["userProject"] = user_project.to_s if !user_project.nil?

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
        operation: "DefaultObjectAccessControlsApi.storage_default_object_access_controls_delete",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Returns the default object ACL entry for the specified entity on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @param entity [String] The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    # @return [ObjectAccessControl]
    def get(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, upload_type : String? = nil, user_ip : String? = nil, user_project : String? = nil)
      data, _status_code, _headers = get_with_http_info(bucket: bucket, entity: entity, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, upload_type: upload_type, user_ip: user_ip, user_project: user_project)
      data
    end

    # Returns the default object ACL entry for the specified entity on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @param entity [String] The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    # @return [Array<(ObjectAccessControl, Integer, Hash)>] ObjectAccessControl data, response status code and response headers
    def get_with_http_info(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, upload_type : String? = nil, user_ip : String? = nil, user_project : String? = nil)
      request = build_api_request_for_get(bucket: bucket, entity: entity, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, upload_type: upload_type, user_ip: user_ip, user_project: user_project)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: DefaultObjectAccessControlsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return ObjectAccessControl.from_json(data), status_code, headers
    end

    # Returns the default object ACL entry for the specified entity on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @param entity [String] The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    # @return nil
    def get(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, upload_type : String? = nil, user_ip : String? = nil, user_project : String? = nil, &block : Crest::Response ->)
      build_api_request_for_get(bucket: bucket, entity: entity, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, upload_type: upload_type, user_ip: user_ip, user_project: user_project).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_get(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, upload_type : String? = nil, user_ip : String? = nil, user_project : String? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: DefaultObjectAccessControlsApi.get ..." }
      end
      allowable_values = ["json"]
      if @api_client.config.client_side_validation && !alt.nil? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/b/{bucket}/defaultObjectAcl/{entity}".sub("{" + "bucket" + "}", URI.encode_path(bucket.to_s)).sub("{" + "entity" + "}", URI.encode_path(entity.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["alt"] = alt.to_s if !alt.nil?
      query_params["fields"] = fields.to_s if !fields.nil?
      query_params["key"] = key.to_s if !key.nil?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil?
      query_params["uploadType"] = upload_type.to_s if !upload_type.nil?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil?
      query_params["userProject"] = user_project.to_s if !user_project.nil?

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
        operation: "DefaultObjectAccessControlsApi.storage_default_object_access_controls_get",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Creates a new default object ACL entry on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @return [ObjectAccessControl]
    def insert(*, bucket : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, upload_type : String? = nil, user_ip : String? = nil, user_project : String? = nil, object_access_control : ObjectAccessControl? = nil)
      data, _status_code, _headers = insert_with_http_info(bucket: bucket, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, upload_type: upload_type, user_ip: user_ip, user_project: user_project, object_access_control: object_access_control)
      data
    end

    # Creates a new default object ACL entry on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @return [Array<(ObjectAccessControl, Integer, Hash)>] ObjectAccessControl data, response status code and response headers
    def insert_with_http_info(*, bucket : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, upload_type : String? = nil, user_ip : String? = nil, user_project : String? = nil, object_access_control : ObjectAccessControl? = nil)
      request = build_api_request_for_insert(bucket: bucket, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, upload_type: upload_type, user_ip: user_ip, user_project: user_project, object_access_control: object_access_control)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: DefaultObjectAccessControlsApi#insert\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return ObjectAccessControl.from_json(data), status_code, headers
    end

    # Creates a new default object ACL entry on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @return nil
    def insert(*, bucket : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, upload_type : String? = nil, user_ip : String? = nil, user_project : String? = nil, object_access_control : ObjectAccessControl? = nil, &block : Crest::Response ->)
      build_api_request_for_insert(bucket: bucket, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, upload_type: upload_type, user_ip: user_ip, user_project: user_project, object_access_control: object_access_control).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_insert(*, bucket : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, upload_type : String? = nil, user_ip : String? = nil, user_project : String? = nil, object_access_control : ObjectAccessControl? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: DefaultObjectAccessControlsApi.insert ..." }
      end
      allowable_values = ["json"]
      if @api_client.config.client_side_validation && !alt.nil? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/b/{bucket}/defaultObjectAcl".sub("{" + "bucket" + "}", URI.encode_path(bucket.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["alt"] = alt.to_s if !alt.nil?
      query_params["fields"] = fields.to_s if !fields.nil?
      query_params["key"] = key.to_s if !key.nil?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil?
      query_params["uploadType"] = upload_type.to_s if !upload_type.nil?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil?
      query_params["userProject"] = user_project.to_s if !user_project.nil?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = object_access_control.to_json

      # auth_names
      auth_names = ["Oauth2", "Oauth2c"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "DefaultObjectAccessControlsApi.storage_default_object_access_controls_insert",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Retrieves default object ACL entries on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @return [ObjectAccessControls]
    def list(*, bucket : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, upload_type : String? = nil, user_ip : String? = nil, if_metageneration_match : String? = nil, if_metageneration_not_match : String? = nil, user_project : String? = nil)
      data, _status_code, _headers = list_with_http_info(bucket: bucket, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, upload_type: upload_type, user_ip: user_ip, if_metageneration_match: if_metageneration_match, if_metageneration_not_match: if_metageneration_not_match, user_project: user_project)
      data
    end

    # Retrieves default object ACL entries on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @return [Array<(ObjectAccessControls, Integer, Hash)>] ObjectAccessControls data, response status code and response headers
    def list_with_http_info(*, bucket : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, upload_type : String? = nil, user_ip : String? = nil, if_metageneration_match : String? = nil, if_metageneration_not_match : String? = nil, user_project : String? = nil)
      request = build_api_request_for_list(bucket: bucket, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, upload_type: upload_type, user_ip: user_ip, if_metageneration_match: if_metageneration_match, if_metageneration_not_match: if_metageneration_not_match, user_project: user_project)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: DefaultObjectAccessControlsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return ObjectAccessControls.from_json(data), status_code, headers
    end

    # Retrieves default object ACL entries on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @return nil
    def list(*, bucket : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, upload_type : String? = nil, user_ip : String? = nil, if_metageneration_match : String? = nil, if_metageneration_not_match : String? = nil, user_project : String? = nil, &block : Crest::Response ->)
      build_api_request_for_list(bucket: bucket, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, upload_type: upload_type, user_ip: user_ip, if_metageneration_match: if_metageneration_match, if_metageneration_not_match: if_metageneration_not_match, user_project: user_project).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_list(*, bucket : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, upload_type : String? = nil, user_ip : String? = nil, if_metageneration_match : String? = nil, if_metageneration_not_match : String? = nil, user_project : String? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: DefaultObjectAccessControlsApi.list ..." }
      end
      allowable_values = ["json"]
      if @api_client.config.client_side_validation && !alt.nil? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/b/{bucket}/defaultObjectAcl".sub("{" + "bucket" + "}", URI.encode_path(bucket.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["alt"] = alt.to_s if !alt.nil?
      query_params["fields"] = fields.to_s if !fields.nil?
      query_params["key"] = key.to_s if !key.nil?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil?
      query_params["uploadType"] = upload_type.to_s if !upload_type.nil?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil?
      query_params["ifMetagenerationMatch"] = if_metageneration_match.to_s if !if_metageneration_match.nil?
      query_params["ifMetagenerationNotMatch"] = if_metageneration_not_match.to_s if !if_metageneration_not_match.nil?
      query_params["userProject"] = user_project.to_s if !user_project.nil?

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
        operation: "DefaultObjectAccessControlsApi.storage_default_object_access_controls_list",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Patches a default object ACL entry on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @param entity [String] The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    # @return [ObjectAccessControl]
    def patch(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, upload_type : String? = nil, user_ip : String? = nil, user_project : String? = nil, object_access_control : ObjectAccessControl? = nil)
      data, _status_code, _headers = patch_with_http_info(bucket: bucket, entity: entity, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, upload_type: upload_type, user_ip: user_ip, user_project: user_project, object_access_control: object_access_control)
      data
    end

    # Patches a default object ACL entry on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @param entity [String] The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    # @return [Array<(ObjectAccessControl, Integer, Hash)>] ObjectAccessControl data, response status code and response headers
    def patch_with_http_info(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, upload_type : String? = nil, user_ip : String? = nil, user_project : String? = nil, object_access_control : ObjectAccessControl? = nil)
      request = build_api_request_for_patch(bucket: bucket, entity: entity, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, upload_type: upload_type, user_ip: user_ip, user_project: user_project, object_access_control: object_access_control)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: DefaultObjectAccessControlsApi#patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return ObjectAccessControl.from_json(data), status_code, headers
    end

    # Patches a default object ACL entry on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @param entity [String] The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    # @return nil
    def patch(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, upload_type : String? = nil, user_ip : String? = nil, user_project : String? = nil, object_access_control : ObjectAccessControl? = nil, &block : Crest::Response ->)
      build_api_request_for_patch(bucket: bucket, entity: entity, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, upload_type: upload_type, user_ip: user_ip, user_project: user_project, object_access_control: object_access_control).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_patch(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, upload_type : String? = nil, user_ip : String? = nil, user_project : String? = nil, object_access_control : ObjectAccessControl? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: DefaultObjectAccessControlsApi.patch ..." }
      end
      allowable_values = ["json"]
      if @api_client.config.client_side_validation && !alt.nil? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/b/{bucket}/defaultObjectAcl/{entity}".sub("{" + "bucket" + "}", URI.encode_path(bucket.to_s)).sub("{" + "entity" + "}", URI.encode_path(entity.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["alt"] = alt.to_s if !alt.nil?
      query_params["fields"] = fields.to_s if !fields.nil?
      query_params["key"] = key.to_s if !key.nil?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil?
      query_params["uploadType"] = upload_type.to_s if !upload_type.nil?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil?
      query_params["userProject"] = user_project.to_s if !user_project.nil?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = object_access_control.to_json

      # auth_names
      auth_names = ["Oauth2", "Oauth2c"]

      @api_client.build_api_request(
        http_method: :"PATCH",
        path: local_var_path,
        operation: "DefaultObjectAccessControlsApi.storage_default_object_access_controls_patch",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Updates a default object ACL entry on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @param entity [String] The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    # @return [ObjectAccessControl]
    def update(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, upload_type : String? = nil, user_ip : String? = nil, user_project : String? = nil, object_access_control : ObjectAccessControl? = nil)
      data, _status_code, _headers = update_with_http_info(bucket: bucket, entity: entity, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, upload_type: upload_type, user_ip: user_ip, user_project: user_project, object_access_control: object_access_control)
      data
    end

    # Updates a default object ACL entry on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @param entity [String] The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    # @return [Array<(ObjectAccessControl, Integer, Hash)>] ObjectAccessControl data, response status code and response headers
    def update_with_http_info(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, upload_type : String? = nil, user_ip : String? = nil, user_project : String? = nil, object_access_control : ObjectAccessControl? = nil)
      request = build_api_request_for_update(bucket: bucket, entity: entity, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, upload_type: upload_type, user_ip: user_ip, user_project: user_project, object_access_control: object_access_control)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: DefaultObjectAccessControlsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return ObjectAccessControl.from_json(data), status_code, headers
    end

    # Updates a default object ACL entry on the specified bucket.
    # @param bucket [String] Name of a bucket.
    # @param entity [String] The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    # @return nil
    def update(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, upload_type : String? = nil, user_ip : String? = nil, user_project : String? = nil, object_access_control : ObjectAccessControl? = nil, &block : Crest::Response ->)
      build_api_request_for_update(bucket: bucket, entity: entity, alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, upload_type: upload_type, user_ip: user_ip, user_project: user_project, object_access_control: object_access_control).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_update(*, bucket : String, entity : String, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, upload_type : String? = nil, user_ip : String? = nil, user_project : String? = nil, object_access_control : ObjectAccessControl? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: DefaultObjectAccessControlsApi.update ..." }
      end
      allowable_values = ["json"]
      if @api_client.config.client_side_validation && !alt.nil? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/b/{bucket}/defaultObjectAcl/{entity}".sub("{" + "bucket" + "}", URI.encode_path(bucket.to_s)).sub("{" + "entity" + "}", URI.encode_path(entity.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["alt"] = alt.to_s if !alt.nil?
      query_params["fields"] = fields.to_s if !fields.nil?
      query_params["key"] = key.to_s if !key.nil?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil?
      query_params["uploadType"] = upload_type.to_s if !upload_type.nil?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil?
      query_params["userProject"] = user_project.to_s if !user_project.nil?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = object_access_control.to_json

      # auth_names
      auth_names = ["Oauth2", "Oauth2c"]

      @api_client.build_api_request(
        http_method: :"PUT",
        path: local_var_path,
        operation: "DefaultObjectAccessControlsApi.storage_default_object_access_controls_update",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end
  end
end
