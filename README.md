# google_cloud_storage

The Crystal module for the Cloud Storage JSON API

Stores and retrieves potentially large, immutable data objects.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project with CUSTOM templates:

- API version: v1
- Package version: 0.3.4
- Build package: org.openapitools.codegen.languages.CrystalClientCodegen
- Custom templates: [crystal_client_generator](https://github.com/cyangle/crystal_client_generator)

For more information, please visit [https://google.com](https://google.com)

## Installation

### Install from Git

Add the following to shard.yaml

```yaml
dependencies:
  google_cloud_storage:
    github: cyangle/google_cloud_storage
    version: ~> 0.3.4
```

## Usage

Check [here](https://cloud.google.com/storage/docs/json_api) for more information about how to use google cloud storage v1 json APIs.

Below lists only a few examples of the most interesting APIs, the client should support all APIs provided by google cloud storage v1 json APIs as it's generated from the OpenAPI v3 specification `./google_cloud_storage_v1.yml`.

### Require this shard in your project

First you need to require it.

```crystal
require "google_cloud_storage"
```

### Get OAuth2 access token

You can get google cloud OAuth2 access token with service account credentials in a json file with shard [google-auth](https://github.com/cyangle/google-auth).

Check [here](https://cloud.google.com/iam/docs/creating-managing-service-accounts) for how to create a service account.

### Configure client with google OAuth2 access token

```crystal
GoogleDrive.configure do |config|
  config.access_token = "Google OAuth2 Access Token"
end
```

### BucketsApi

```crystal
buckets_api = GoogleCloudStorage::BucketsApi.new
```

#### List buckets from a project

```crystal
buckets : GoogleCloudStorage::Buckets = buckets_api.list(project: "google-cloud-project-id")
```

#### Get bucket metadata

```crystal
bucket : GoogleCloudStorage::Bucket = buckets_api.get(bucket: "my_bucket")
pp bucket
```

#### Create a new bucket

```crystal
bucket = GoogleCloudStorage::Bucket.new(name: "unique_bucket_name")
result_bucket : GoogleCloudStorage::Bucket = buckets_api.insert(project: "google-cloud-project-id", bucket: bucket)
pp result_bucket
```

#### Delete empty bucket from a project

```crystal
buckets_api.delete(bucket: "empty-bucket-name")
```

### ObjectsApi

```crystal
objects_api = GoogleCloudStorage::ObjectsApi.new
```

#### List objects from bucket

```crystal
objects : GoogleCloudStorage::Objects = objects_api.list(bucket: "my_bucket", prefix: "crystal", delimiter: "/")
```

#### Get object metadata

```crystal
object : GoogleCloudStorage::Object = objects_api.get(bucket: "my_bucket", object: "test.json")
```

#### Download object from bucket

```crystal
response = objects_api.build_api_request_for_get(bucket: "my_bucket", object: "test.json", alt: "media").execute
File.write("./test.json", response.body)
```

Or stream download

```crystal
objects_api.get(bucket: "my_bucket", object: "test.json", alt: "media") do |response|
  File.open("./test.json", "w") do |file|
    IO.copy(response.body_io, file)
  end
end
```

#### Upload file to bucket

```crystal
file_content = File.read("./test.json")
object : GoogleCloudStorage::Object = objects_api.insert(bucket: "my_bucket", name: "test.json", body: file_content)
pp object
```

Or stream upload

```crystal
File.open("./test.json") do |file|
  object : GoogleCloudStorage::Object = objects_api.insert(bucket: "my_bucket", name: "test.json", body: file)
  pp object
end
```

#### Delete object from bucket

```crystal
objects_api.delete(bucket: "my_bucket", object: "test.json")
```

## Development

Install dependencies

```shell
shards
```

Run the tests:

```shell
crystal spec
```

Run lints

```shell
./bin/ameba
crystal tool format --check
```
