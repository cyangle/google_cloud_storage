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
  class ChannelsApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Stop watching resources through this channel
    # @return [nil]
    def stop(*, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, channel : Channel? = nil)
      stop_with_http_info(alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, channel: channel)
      nil
    end

    # Stop watching resources through this channel
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def stop_with_http_info(*, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, channel : Channel? = nil)
      request = build_api_request_for_stop(alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, channel: channel)

      data, status_code, headers = @api_client.execute_api_request(request)

      if @api_client.config.debugging
        Log.debug { "API called: ChannelsApi#stop\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return nil, status_code, headers
    end

    # Stop watching resources through this channel
    # @return nil
    def stop(*, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, channel : Channel? = nil, &block : Crest::Response ->)
      build_api_request_for_stop(alt: alt, fields: fields, key: key, oauth_token: oauth_token, pretty_print: pretty_print, quota_user: quota_user, user_ip: user_ip, channel: channel).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_stop(*, alt : String? = nil, fields : String? = nil, key : String? = nil, oauth_token : String? = nil, pretty_print : Bool? = nil, quota_user : String? = nil, user_ip : String? = nil, channel : Channel? = nil) : Crest::Request
      if @api_client.config.debugging
        Log.debug { "Calling API: ChannelsApi.stop ..." }
      end
      allowable_values = ["json"]
      if @api_client.config.client_side_validation && !alt.nil? && !alt.null? && !allowable_values.includes?(alt)
        raise ArgumentError.new("invalid value for \"alt\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/channels/stop"

      # query parameters
      query_params = Hash(String, String).new
      query_params["alt"] = alt.to_s if !alt.nil? && !alt.null?
      query_params["fields"] = fields.to_s if !fields.nil? && !fields.null?
      query_params["key"] = key.to_s if !key.nil? && !key.null?
      query_params["oauth_token"] = oauth_token.to_s if !oauth_token.nil? && !oauth_token.null?
      query_params["prettyPrint"] = pretty_print.to_s if !pretty_print.nil? && !pretty_print.null?
      query_params["quotaUser"] = quota_user.to_s if !quota_user.nil? && !quota_user.null?
      query_params["userIp"] = user_ip.to_s if !user_ip.nil? && !user_ip.null?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = channel.to_nason

      # auth_names
      auth_names = ["Oauth2", "Oauth2c"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "ChannelsApi.storage_channels_stop",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end
  end
end
