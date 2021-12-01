# google_cloud_storage

The Crystal module for the Cloud Storage JSON API

Stores and retrieves potentially large, immutable data objects.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project with CUSTOM templates:

- API version: v1
- Package version: 0.1.0
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
    version: ~> 0.1.0
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
