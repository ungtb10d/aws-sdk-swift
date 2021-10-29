# S3OutpostsClientProtocol

Amazon S3 on Outposts provides access to S3 on Outposts operations.

``` swift
public protocol S3OutpostsClientProtocol 
```

## Requirements

### createEndpoint(input:completion:)

Amazon S3 on Outposts Access Points simplify managing data access at scale for shared datasets in S3 on Outposts. S3 on Outposts uses endpoints to connect to Outposts buckets so that you can perform actions within your virtual private cloud (VPC). For more information, see [ Accessing S3 on Outposts using VPC only access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/AccessingS3Outposts.html). This action creates an endpoint and associates it with the specified Outposts. It can take up to 5 minutes for this action to complete. Related actions include:

``` swift
func createEndpoint(input: CreateEndpointInput, completion: @escaping (ClientRuntime.SdkResult<CreateEndpointOutputResponse, CreateEndpointOutputError>) -> Void)
```

  - [DeleteEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html)

  - [ListEndpoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_ListEndpoints.html)

### deleteEndpoint(input:completion:)

Amazon S3 on Outposts Access Points simplify managing data access at scale for shared datasets in S3 on Outposts. S3 on Outposts uses endpoints to connect to Outposts buckets so that you can perform actions within your virtual private cloud (VPC). For more information, see [ Accessing S3 on Outposts using VPC only access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/AccessingS3Outposts.html). This action deletes an endpoint. It can take up to 5 minutes for this action to complete. Related actions include:

``` swift
func deleteEndpoint(input: DeleteEndpointInput, completion: @escaping (ClientRuntime.SdkResult<DeleteEndpointOutputResponse, DeleteEndpointOutputError>) -> Void)
```

  - [CreateEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html)

  - [ListEndpoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_ListEndpoints.html)

### listEndpoints(input:completion:)

Amazon S3 on Outposts Access Points simplify managing data access at scale for shared datasets in S3 on Outposts. S3 on Outposts uses endpoints to connect to Outposts buckets so that you can perform actions within your virtual private cloud (VPC). For more information, see [ Accessing S3 on Outposts using VPC only access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/AccessingS3Outposts.html). This action lists endpoints associated with the Outposts. Related actions include:

``` swift
func listEndpoints(input: ListEndpointsInput, completion: @escaping (ClientRuntime.SdkResult<ListEndpointsOutputResponse, ListEndpointsOutputError>) -> Void)
```

  - [CreateEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html)

  - [DeleteEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html)