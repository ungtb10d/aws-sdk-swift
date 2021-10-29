# S3ControlClient

``` swift
public class S3ControlClient 
```

## Inheritance

[`S3ControlClientProtocol`](/aws-sdk-swift/reference/0.x/AWSS3Control/S3ControlClientProtocol)

## Initializers

### `init(config:)`

``` swift
public init(config: AWSClientRuntime.AWSClientConfiguration) 
```

### `init(region:)`

``` swift
public convenience init(region: Swift.String? = nil) throws 
```

## Properties

### `clientName`

``` swift
public static let clientName = "S3ControlClient"
```

## Methods

### `createAccessPoint(input:completion:)`

Creates an access point and associates it with the specified bucket. For more information, see [Managing Data Access with Amazon S3 Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html) in the Amazon S3 User Guide. S3 on Outposts only supports VPC-style access points. For more information, see [ Accessing Amazon S3 on Outposts using virtual private cloud (VPC) only access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the Amazon S3 User Guide. All Amazon S3 on Outposts REST API requests for this action require an additional parameter of x-amz-outpost-id to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of s3-control. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the x-amz-outpost-id derived using the access point ARN, see the [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html#API_control_CreateAccessPoint_Examples) section. The following actions are related to CreateAccessPoint:

``` swift
public func createAccessPoint(input: CreateAccessPointInput, completion: @escaping (ClientRuntime.SdkResult<CreateAccessPointOutputResponse, CreateAccessPointOutputError>) -> Void)
```

  - [GetAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html)

  - [DeleteAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html)

  - [ListAccessPoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html)

### `createAccessPointForObjectLambda(input:completion:)`

Creates an Object Lambda Access Point. For more information, see [Transforming objects with Object Lambda Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/transforming-objects.html) in the Amazon S3 User Guide. The following actions are related to CreateAccessPointForObjectLambda:

``` swift
public func createAccessPointForObjectLambda(input: CreateAccessPointForObjectLambdaInput, completion: @escaping (ClientRuntime.SdkResult<CreateAccessPointForObjectLambdaOutputResponse, CreateAccessPointForObjectLambdaOutputError>) -> Void)
```

  - [DeleteAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointForObjectLambda.html)

  - [GetAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointForObjectLambda.html)

  - [ListAccessPointsForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForObjectLambda.html)

### `createBucket(input:completion:)`

This action creates an Amazon S3 on Outposts bucket. To create an S3 bucket, see [Create Bucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html) in the Amazon S3 API Reference. Creates a new Outposts bucket. By creating the bucket, you become the bucket owner. To create an Outposts bucket, you must have S3 on Outposts. For more information, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in Amazon S3 User Guide. Not every string is an acceptable bucket name. For information on bucket naming restrictions, see [Working with Amazon S3 Buckets](https://docs.aws.amazon.com/AmazonS3/latest/userguide/BucketRestrictions.html#bucketnamingrules). S3 on Outposts buckets support:

``` swift
public func createBucket(input: CreateBucketInput, completion: @escaping (ClientRuntime.SdkResult<CreateBucketOutputResponse, CreateBucketOutputError>) -> Void)
```

  - Tags

  - LifecycleConfigurations for deleting expired objects

For a complete list of restrictions and Amazon S3 feature limitations on S3 on Outposts, see [ Amazon S3 on Outposts Restrictions and Limitations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OnOutpostsRestrictionsLimitations.html). For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and x-amz-outpost-id in your API request, see the [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html#API_control_CreateBucket_Examples) section. The following actions are related to CreateBucket for Amazon S3 on Outposts:

  - [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)

  - [GetBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucket.html)

  - [DeleteBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucket.html)

  - [CreateAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html)

  - [PutAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html)

### `createJob(input:completion:)`

You can use S3 Batch Operations to perform large-scale batch actions on Amazon S3 objects. Batch Operations can run a single action on lists of Amazon S3 objects that you specify. For more information, see [S3 Batch Operations](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html) in the Amazon S3 User Guide. This action creates a S3 Batch Operations job. Related actions include:

``` swift
public func createJob(input: CreateJobInput, completion: @escaping (ClientRuntime.SdkResult<CreateJobOutputResponse, CreateJobOutputError>) -> Void)
```

  - [DescribeJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html)

  - [ListJobs](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html)

  - [UpdateJobPriority](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html)

  - [UpdateJobStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)

  - [JobOperation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_JobOperation.html)

### `createMultiRegionAccessPoint(input:completion:)`

Creates a Multi-Region Access Point and associates it with the specified buckets. For more information about creating Multi-Region Access Points, see [Creating Multi-Region Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html) in the Amazon S3 User Guide. This action will always be routed to the US West (Oregon) Region. For more information about the restrictions around managing Multi-Region Access Points, see [Managing Multi-Region Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html) in the Amazon S3 User Guide. This request is asynchronous, meaning that you might receive a response before the command has completed. When this request provides a response, it provides a token that you can use to monitor the status of the request with DescribeMultiRegionAccessPointOperation. The following actions are related to CreateMultiRegionAccessPoint:

``` swift
public func createMultiRegionAccessPoint(input: CreateMultiRegionAccessPointInput, completion: @escaping (ClientRuntime.SdkResult<CreateMultiRegionAccessPointOutputResponse, CreateMultiRegionAccessPointOutputError>) -> Void)
```

  - [DeleteMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html)

  - [DescribeMultiRegionAccessPointOperation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html)

  - [GetMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html)

  - [ListMultiRegionAccessPoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html)

### `deleteAccessPoint(input:completion:)`

Deletes the specified access point. All Amazon S3 on Outposts REST API requests for this action require an additional parameter of x-amz-outpost-id to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of s3-control. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the x-amz-outpost-id derived using the access point ARN, see the [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html#API_control_DeleteAccessPoint_Examples) section. The following actions are related to DeleteAccessPoint:

``` swift
public func deleteAccessPoint(input: DeleteAccessPointInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAccessPointOutputResponse, DeleteAccessPointOutputError>) -> Void)
```

  - [CreateAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html)

  - [GetAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html)

  - [ListAccessPoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html)

### `deleteAccessPointForObjectLambda(input:completion:)`

Deletes the specified Object Lambda Access Point. The following actions are related to DeleteAccessPointForObjectLambda:

``` swift
public func deleteAccessPointForObjectLambda(input: DeleteAccessPointForObjectLambdaInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAccessPointForObjectLambdaOutputResponse, DeleteAccessPointForObjectLambdaOutputError>) -> Void)
```

  - [CreateAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPointForObjectLambda.html)

  - [GetAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointForObjectLambda.html)

  - [ListAccessPointsForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForObjectLambda.html)

### `deleteAccessPointPolicy(input:completion:)`

Deletes the access point policy for the specified access point. All Amazon S3 on Outposts REST API requests for this action require an additional parameter of x-amz-outpost-id to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of s3-control. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the x-amz-outpost-id derived using the access point ARN, see the [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicy.html#API_control_DeleteAccessPointPolicy_Examples) section. The following actions are related to DeleteAccessPointPolicy:

``` swift
public func deleteAccessPointPolicy(input: DeleteAccessPointPolicyInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAccessPointPolicyOutputResponse, DeleteAccessPointPolicyOutputError>) -> Void)
```

  - [PutAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html)

  - [GetAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicy.html)

### `deleteAccessPointPolicyForObjectLambda(input:completion:)`

Removes the resource policy for an Object Lambda Access Point. The following actions are related to DeleteAccessPointPolicyForObjectLambda:

``` swift
public func deleteAccessPointPolicyForObjectLambda(input: DeleteAccessPointPolicyForObjectLambdaInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAccessPointPolicyForObjectLambdaOutputResponse, DeleteAccessPointPolicyForObjectLambdaOutputError>) -> Void)
```

  - [GetAccessPointPolicyForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicyForObjectLambda.html)

  - [PutAccessPointPolicyForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicyForObjectLambda.html)

### `deleteBucket(input:completion:)`

This action deletes an Amazon S3 on Outposts bucket. To delete an S3 bucket, see [DeleteBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html) in the Amazon S3 API Reference. Deletes the Amazon S3 on Outposts bucket. All objects (including all object versions and delete markers) in the bucket must be deleted before the bucket itself can be deleted. For more information, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in Amazon S3 User Guide. All Amazon S3 on Outposts REST API requests for this action require an additional parameter of x-amz-outpost-id to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of s3-control. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the x-amz-outpost-id derived using the access point ARN, see the [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucket.html#API_control_DeleteBucket_Examples) section. Related Resources

``` swift
public func deleteBucket(input: DeleteBucketInput, completion: @escaping (ClientRuntime.SdkResult<DeleteBucketOutputResponse, DeleteBucketOutputError>) -> Void)
```

  - [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html)

  - [GetBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucket.html)

  - [DeleteObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html)

### `deleteBucketLifecycleConfiguration(input:completion:)`

This action deletes an Amazon S3 on Outposts bucket's lifecycle configuration. To delete an S3 bucket's lifecycle configuration, see [DeleteBucketLifecycle](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketLifecycle.html) in the Amazon S3 API Reference. Deletes the lifecycle configuration from the specified Outposts bucket. Amazon S3 on Outposts removes all the lifecycle configuration rules in the lifecycle subresource associated with the bucket. Your objects never expire, and Amazon S3 on Outposts no longer automatically deletes any objects on the basis of rules contained in the deleted lifecycle configuration. For more information, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in Amazon S3 User Guide. To use this action, you must have permission to perform the s3-outposts:DeleteLifecycleConfiguration action. By default, the bucket owner has this permission and the Outposts bucket owner can grant this permission to others. All Amazon S3 on Outposts REST API requests for this action require an additional parameter of x-amz-outpost-id to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of s3-control. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the x-amz-outpost-id derived using the access point ARN, see the [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html#API_control_DeleteBucketLifecycleConfiguration_Examples) section. For more information about object expiration, see [Elements to Describe Lifecycle Actions](https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#intro-lifecycle-rules-actions). Related actions include:

``` swift
public func deleteBucketLifecycleConfiguration(input: DeleteBucketLifecycleConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<DeleteBucketLifecycleConfigurationOutputResponse, DeleteBucketLifecycleConfigurationOutputError>) -> Void)
```

  - [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html)

  - [GetBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html)

### `deleteBucketPolicy(input:completion:)`

This action deletes an Amazon S3 on Outposts bucket policy. To delete an S3 bucket policy, see [DeleteBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketPolicy.html) in the Amazon S3 API Reference. This implementation of the DELETE action uses the policy subresource to delete the policy of a specified Amazon S3 on Outposts bucket. If you are using an identity other than the root user of the Amazon Web Services account that owns the bucket, the calling identity must have the s3-outposts:DeleteBucketPolicy permissions on the specified Outposts bucket and belong to the bucket owner's account to use this action. For more information, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in Amazon S3 User Guide. If you don't have DeleteBucketPolicy permissions, Amazon S3 returns a 403 Access Denied error. If you have the correct permissions, but you're not using an identity that belongs to the bucket owner's account, Amazon S3 returns a 405 Method Not Allowed error. As a security precaution, the root user of the Amazon Web Services account that owns a bucket can always use this action, even if the policy explicitly denies the root user the ability to perform this action. For more information about bucket policies, see [Using Bucket Policies and User Policies](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html). All Amazon S3 on Outposts REST API requests for this action require an additional parameter of x-amz-outpost-id to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of s3-control. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the x-amz-outpost-id derived using the access point ARN, see the [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketPolicy.html#API_control_DeleteBucketPolicy_Examples) section. The following actions are related to DeleteBucketPolicy:

``` swift
public func deleteBucketPolicy(input: DeleteBucketPolicyInput, completion: @escaping (ClientRuntime.SdkResult<DeleteBucketPolicyOutputResponse, DeleteBucketPolicyOutputError>) -> Void)
```

  - [GetBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketPolicy.html)

  - [PutBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketPolicy.html)

### `deleteBucketTagging(input:completion:)`

This action deletes an Amazon S3 on Outposts bucket's tags. To delete an S3 bucket tags, see [DeleteBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketTagging.html) in the Amazon S3 API Reference. Deletes the tags from the Outposts bucket. For more information, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in Amazon S3 User Guide. To use this action, you must have permission to perform the PutBucketTagging action. By default, the bucket owner has this permission and can grant this permission to others. All Amazon S3 on Outposts REST API requests for this action require an additional parameter of x-amz-outpost-id to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of s3-control. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the x-amz-outpost-id derived using the access point ARN, see the [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketTagging.html#API_control_DeleteBucketTagging_Examples) section. The following actions are related to DeleteBucketTagging:

``` swift
public func deleteBucketTagging(input: DeleteBucketTaggingInput, completion: @escaping (ClientRuntime.SdkResult<DeleteBucketTaggingOutputResponse, DeleteBucketTaggingOutputError>) -> Void)
```

  - [GetBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketTagging.html)

  - [PutBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketTagging.html)

### `deleteJobTagging(input:completion:)`

Removes the entire tag set from the specified S3 Batch Operations job. To use this operation, you must have permission to perform the s3:DeleteJobTagging action. For more information, see [Controlling access and labeling jobs using tags](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags) in the Amazon S3 User Guide. Related actions include:

``` swift
public func deleteJobTagging(input: DeleteJobTaggingInput, completion: @escaping (ClientRuntime.SdkResult<DeleteJobTaggingOutputResponse, DeleteJobTaggingOutputError>) -> Void)
```

  - [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)

  - [GetJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html)

  - [PutJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutJobTagging.html)

### `deleteMultiRegionAccessPoint(input:completion:)`

Deletes a Multi-Region Access Point. This action does not delete the buckets associated with the Multi-Region Access Point, only the Multi-Region Access Point itself. This action will always be routed to the US West (Oregon) Region. For more information about the restrictions around managing Multi-Region Access Points, see [Managing Multi-Region Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html) in the Amazon S3 User Guide. This request is asynchronous, meaning that you might receive a response before the command has completed. When this request provides a response, it provides a token that you can use to monitor the status of the request with DescribeMultiRegionAccessPointOperation. The following actions are related to DeleteMultiRegionAccessPoint:

``` swift
public func deleteMultiRegionAccessPoint(input: DeleteMultiRegionAccessPointInput, completion: @escaping (ClientRuntime.SdkResult<DeleteMultiRegionAccessPointOutputResponse, DeleteMultiRegionAccessPointOutputError>) -> Void)
```

  - [CreateMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html)

  - [DescribeMultiRegionAccessPointOperation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html)

  - [GetMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html)

  - [ListMultiRegionAccessPoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html)

### `deletePublicAccessBlock(input:completion:)`

Removes the PublicAccessBlock configuration for an Amazon Web Services account. For more information, see [ Using Amazon S3 block public access](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html). Related actions include:

``` swift
public func deletePublicAccessBlock(input: DeletePublicAccessBlockInput, completion: @escaping (ClientRuntime.SdkResult<DeletePublicAccessBlockOutputResponse, DeletePublicAccessBlockOutputError>) -> Void)
```

  - [GetPublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetPublicAccessBlock.html)

  - [PutPublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutPublicAccessBlock.html)

### `deleteStorageLensConfiguration(input:completion:)`

Deletes the Amazon S3 Storage Lens configuration. For more information about S3 Storage Lens, see [Assessing your storage activity and usage with Amazon S3 Storage Lens ](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in the Amazon S3 User Guide. To use this action, you must have permission to perform the s3:DeleteStorageLensConfiguration action. For more information, see [Setting permissions to use Amazon S3 Storage Lens](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html) in the Amazon S3 User Guide.

``` swift
public func deleteStorageLensConfiguration(input: DeleteStorageLensConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<DeleteStorageLensConfigurationOutputResponse, DeleteStorageLensConfigurationOutputError>) -> Void)
```

### `deleteStorageLensConfigurationTagging(input:completion:)`

Deletes the Amazon S3 Storage Lens configuration tags. For more information about S3 Storage Lens, see [Assessing your storage activity and usage with Amazon S3 Storage Lens ](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in the Amazon S3 User Guide. To use this action, you must have permission to perform the s3:DeleteStorageLensConfigurationTagging action. For more information, see [Setting permissions to use Amazon S3 Storage Lens](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html) in the Amazon S3 User Guide.

``` swift
public func deleteStorageLensConfigurationTagging(input: DeleteStorageLensConfigurationTaggingInput, completion: @escaping (ClientRuntime.SdkResult<DeleteStorageLensConfigurationTaggingOutputResponse, DeleteStorageLensConfigurationTaggingOutputError>) -> Void)
```

### `describeJob(input:completion:)`

Retrieves the configuration parameters and status for a Batch Operations job. For more information, see [S3 Batch Operations](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html) in the Amazon S3 User Guide. Related actions include:

``` swift
public func describeJob(input: DescribeJobInput, completion: @escaping (ClientRuntime.SdkResult<DescribeJobOutputResponse, DescribeJobOutputError>) -> Void)
```

  - [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)

  - [ListJobs](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html)

  - [UpdateJobPriority](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html)

  - [UpdateJobStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)

### `describeMultiRegionAccessPointOperation(input:completion:)`

Retrieves the status of an asynchronous request to manage a Multi-Region Access Point. For more information about managing Multi-Region Access Points and how asynchronous requests work, see [Managing Multi-Region Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html) in the Amazon S3 User Guide. The following actions are related to GetMultiRegionAccessPoint:

``` swift
public func describeMultiRegionAccessPointOperation(input: DescribeMultiRegionAccessPointOperationInput, completion: @escaping (ClientRuntime.SdkResult<DescribeMultiRegionAccessPointOperationOutputResponse, DescribeMultiRegionAccessPointOperationOutputError>) -> Void)
```

  - [CreateMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html)

  - [DeleteMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html)

  - [GetMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html)

  - [ListMultiRegionAccessPoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html)

### `getAccessPoint(input:completion:)`

Returns configuration information about the specified access point. All Amazon S3 on Outposts REST API requests for this action require an additional parameter of x-amz-outpost-id to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of s3-control. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the x-amz-outpost-id derived using the access point ARN, see the [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html#API_control_GetAccessPoint_Examples) section. The following actions are related to GetAccessPoint:

``` swift
public func getAccessPoint(input: GetAccessPointInput, completion: @escaping (ClientRuntime.SdkResult<GetAccessPointOutputResponse, GetAccessPointOutputError>) -> Void)
```

  - [CreateAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html)

  - [DeleteAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html)

  - [ListAccessPoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html)

### `getAccessPointConfigurationForObjectLambda(input:completion:)`

Returns configuration for an Object Lambda Access Point. The following actions are related to GetAccessPointConfigurationForObjectLambda:

``` swift
public func getAccessPointConfigurationForObjectLambda(input: GetAccessPointConfigurationForObjectLambdaInput, completion: @escaping (ClientRuntime.SdkResult<GetAccessPointConfigurationForObjectLambdaOutputResponse, GetAccessPointConfigurationForObjectLambdaOutputError>) -> Void)
```

  - [PutAccessPointConfigurationForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointConfigurationForObjectLambda.html)

### `getAccessPointForObjectLambda(input:completion:)`

Returns configuration information about the specified Object Lambda Access Point The following actions are related to GetAccessPointForObjectLambda:

``` swift
public func getAccessPointForObjectLambda(input: GetAccessPointForObjectLambdaInput, completion: @escaping (ClientRuntime.SdkResult<GetAccessPointForObjectLambdaOutputResponse, GetAccessPointForObjectLambdaOutputError>) -> Void)
```

  - [CreateAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPointForObjectLambda.html)

  - [DeleteAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointForObjectLambda.html)

  - [ListAccessPointsForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForObjectLambda.html)

### `getAccessPointPolicy(input:completion:)`

Returns the access point policy associated with the specified access point. The following actions are related to GetAccessPointPolicy:

``` swift
public func getAccessPointPolicy(input: GetAccessPointPolicyInput, completion: @escaping (ClientRuntime.SdkResult<GetAccessPointPolicyOutputResponse, GetAccessPointPolicyOutputError>) -> Void)
```

  - [PutAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html)

  - [DeleteAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicy.html)

### `getAccessPointPolicyForObjectLambda(input:completion:)`

Returns the resource policy for an Object Lambda Access Point. The following actions are related to GetAccessPointPolicyForObjectLambda:

``` swift
public func getAccessPointPolicyForObjectLambda(input: GetAccessPointPolicyForObjectLambdaInput, completion: @escaping (ClientRuntime.SdkResult<GetAccessPointPolicyForObjectLambdaOutputResponse, GetAccessPointPolicyForObjectLambdaOutputError>) -> Void)
```

  - [DeleteAccessPointPolicyForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicyForObjectLambda.html)

  - [PutAccessPointPolicyForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicyForObjectLambda.html)

### `getAccessPointPolicyStatus(input:completion:)`

Indicates whether the specified access point currently has a policy that allows public access. For more information about public access through access points, see [Managing Data Access with Amazon S3 access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html) in the Amazon S3 User Guide.

``` swift
public func getAccessPointPolicyStatus(input: GetAccessPointPolicyStatusInput, completion: @escaping (ClientRuntime.SdkResult<GetAccessPointPolicyStatusOutputResponse, GetAccessPointPolicyStatusOutputError>) -> Void)
```

### `getAccessPointPolicyStatusForObjectLambda(input:completion:)`

Returns the status of the resource policy associated with an Object Lambda Access Point.

``` swift
public func getAccessPointPolicyStatusForObjectLambda(input: GetAccessPointPolicyStatusForObjectLambdaInput, completion: @escaping (ClientRuntime.SdkResult<GetAccessPointPolicyStatusForObjectLambdaOutputResponse, GetAccessPointPolicyStatusForObjectLambdaOutputError>) -> Void)
```

### `getBucket(input:completion:)`

Gets an Amazon S3 on Outposts bucket. For more information, see [ Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the Amazon S3 User Guide. If you are using an identity other than the root user of the Amazon Web Services account that owns the Outposts bucket, the calling identity must have the s3-outposts:GetBucket permissions on the specified Outposts bucket and belong to the Outposts bucket owner's account in order to use this action. Only users from Outposts bucket owner account with the right permissions can perform actions on an Outposts bucket. If you don't have s3-outposts:GetBucket permissions or you're not using an identity that belongs to the bucket owner's account, Amazon S3 returns a 403 Access Denied error. The following actions are related to GetBucket for Amazon S3 on Outposts: All Amazon S3 on Outposts REST API requests for this action require an additional parameter of x-amz-outpost-id to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of s3-control. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the x-amz-outpost-id derived using the access point ARN, see the [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucket.html#API_control_GetBucket_Examples) section.

``` swift
public func getBucket(input: GetBucketInput, completion: @escaping (ClientRuntime.SdkResult<GetBucketOutputResponse, GetBucketOutputError>) -> Void)
```

  - [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)

  - [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html)

  - [DeleteBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucket.html)

### `getBucketLifecycleConfiguration(input:completion:)`

This action gets an Amazon S3 on Outposts bucket's lifecycle configuration. To get an S3 bucket's lifecycle configuration, see [GetBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycleConfiguration.html) in the Amazon S3 API Reference. Returns the lifecycle configuration information set on the Outposts bucket. For more information, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) and for information about lifecycle configuration, see [ Object Lifecycle Management](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html) in Amazon S3 User Guide. To use this action, you must have permission to perform the s3-outposts:GetLifecycleConfiguration action. The Outposts bucket owner has this permission, by default. The bucket owner can grant this permission to others. For more information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources) and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html). All Amazon S3 on Outposts REST API requests for this action require an additional parameter of x-amz-outpost-id to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of s3-control. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the x-amz-outpost-id derived using the access point ARN, see the [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html#API_control_GetBucketLifecycleConfiguration_Examples) section. GetBucketLifecycleConfiguration has the following special error:

``` swift
public func getBucketLifecycleConfiguration(input: GetBucketLifecycleConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<GetBucketLifecycleConfigurationOutputResponse, GetBucketLifecycleConfigurationOutputError>) -> Void)
```

  - Error code: NoSuchLifecycleConfiguration

  - Description: The lifecycle configuration does not exist.

  - HTTP Status Code: 404 Not Found

  - SOAP Fault Code Prefix: Client

The following actions are related to GetBucketLifecycleConfiguration:

  - [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html)

  - [DeleteBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html)

### `getBucketPolicy(input:completion:)`

This action gets a bucket policy for an Amazon S3 on Outposts bucket. To get a policy for an S3 bucket, see [GetBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketPolicy.html) in the Amazon S3 API Reference. Returns the policy of a specified Outposts bucket. For more information, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the Amazon S3 User Guide. If you are using an identity other than the root user of the Amazon Web Services account that owns the bucket, the calling identity must have the GetBucketPolicy permissions on the specified bucket and belong to the bucket owner's account in order to use this action. Only users from Outposts bucket owner account with the right permissions can perform actions on an Outposts bucket. If you don't have s3-outposts:GetBucketPolicy permissions or you're not using an identity that belongs to the bucket owner's account, Amazon S3 returns a 403 Access Denied error. As a security precaution, the root user of the Amazon Web Services account that owns a bucket can always use this action, even if the policy explicitly denies the root user the ability to perform this action. For more information about bucket policies, see [Using Bucket Policies and User Policies](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html). All Amazon S3 on Outposts REST API requests for this action require an additional parameter of x-amz-outpost-id to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of s3-control. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the x-amz-outpost-id derived using the access point ARN, see the [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketPolicy.html#API_control_GetBucketPolicy_Examples) section. The following actions are related to GetBucketPolicy:

``` swift
public func getBucketPolicy(input: GetBucketPolicyInput, completion: @escaping (ClientRuntime.SdkResult<GetBucketPolicyOutputResponse, GetBucketPolicyOutputError>) -> Void)
```

  - [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)

  - [PutBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketPolicy.html)

  - [DeleteBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketPolicy.html)

### `getBucketTagging(input:completion:)`

This action gets an Amazon S3 on Outposts bucket's tags. To get an S3 bucket tags, see [GetBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketTagging.html) in the Amazon S3 API Reference. Returns the tag set associated with the Outposts bucket. For more information, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the Amazon S3 User Guide. To use this action, you must have permission to perform the GetBucketTagging action. By default, the bucket owner has this permission and can grant this permission to others. GetBucketTagging has the following special error:

``` swift
public func getBucketTagging(input: GetBucketTaggingInput, completion: @escaping (ClientRuntime.SdkResult<GetBucketTaggingOutputResponse, GetBucketTaggingOutputError>) -> Void)
```

  - Error code: NoSuchTagSetError

  - Description: There is no tag set associated with the bucket.

All Amazon S3 on Outposts REST API requests for this action require an additional parameter of x-amz-outpost-id to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of s3-control. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the x-amz-outpost-id derived using the access point ARN, see the [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketTagging.html#API_control_GetBucketTagging_Examples) section. The following actions are related to GetBucketTagging:

  - [PutBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketTagging.html)

  - [DeleteBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketTagging.html)

### `getJobTagging(input:completion:)`

Returns the tags on an S3 Batch Operations job. To use this operation, you must have permission to perform the s3:GetJobTagging action. For more information, see [Controlling access and labeling jobs using tags](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags) in the Amazon S3 User Guide. Related actions include:

``` swift
public func getJobTagging(input: GetJobTaggingInput, completion: @escaping (ClientRuntime.SdkResult<GetJobTaggingOutputResponse, GetJobTaggingOutputError>) -> Void)
```

  - [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)

  - [PutJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutJobTagging.html)

  - [DeleteJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html)

### `getMultiRegionAccessPoint(input:completion:)`

Returns configuration information about the specified Multi-Region Access Point. This action will always be routed to the US West (Oregon) Region. For more information about the restrictions around managing Multi-Region Access Points, see [Managing Multi-Region Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html) in the Amazon S3 User Guide. The following actions are related to GetMultiRegionAccessPoint:

``` swift
public func getMultiRegionAccessPoint(input: GetMultiRegionAccessPointInput, completion: @escaping (ClientRuntime.SdkResult<GetMultiRegionAccessPointOutputResponse, GetMultiRegionAccessPointOutputError>) -> Void)
```

  - [CreateMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html)

  - [DeleteMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html)

  - [DescribeMultiRegionAccessPointOperation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html)

  - [ListMultiRegionAccessPoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html)

### `getMultiRegionAccessPointPolicy(input:completion:)`

Returns the access control policy of the specified Multi-Region Access Point. This action will always be routed to the US West (Oregon) Region. For more information about the restrictions around managing Multi-Region Access Points, see [Managing Multi-Region Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html) in the Amazon S3 User Guide. The following actions are related to GetMultiRegionAccessPointPolicy:

``` swift
public func getMultiRegionAccessPointPolicy(input: GetMultiRegionAccessPointPolicyInput, completion: @escaping (ClientRuntime.SdkResult<GetMultiRegionAccessPointPolicyOutputResponse, GetMultiRegionAccessPointPolicyOutputError>) -> Void)
```

  - [GetMultiRegionAccessPointPolicyStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicyStatus.html)

  - [PutMultiRegionAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutMultiRegionAccessPointPolicy.html)

### `getMultiRegionAccessPointPolicyStatus(input:completion:)`

Indicates whether the specified Multi-Region Access Point has an access control policy that allows public access. This action will always be routed to the US West (Oregon) Region. For more information about the restrictions around managing Multi-Region Access Points, see [Managing Multi-Region Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html) in the Amazon S3 User Guide. The following actions are related to GetMultiRegionAccessPointPolicyStatus:

``` swift
public func getMultiRegionAccessPointPolicyStatus(input: GetMultiRegionAccessPointPolicyStatusInput, completion: @escaping (ClientRuntime.SdkResult<GetMultiRegionAccessPointPolicyStatusOutputResponse, GetMultiRegionAccessPointPolicyStatusOutputError>) -> Void)
```

  - [GetMultiRegionAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicy.html)

  - [PutMultiRegionAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutMultiRegionAccessPointPolicy.html)

### `getPublicAccessBlock(input:completion:)`

Retrieves the PublicAccessBlock configuration for an Amazon Web Services account. For more information, see [ Using Amazon S3 block public access](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html). Related actions include:

``` swift
public func getPublicAccessBlock(input: GetPublicAccessBlockInput, completion: @escaping (ClientRuntime.SdkResult<GetPublicAccessBlockOutputResponse, GetPublicAccessBlockOutputError>) -> Void)
```

  - [DeletePublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeletePublicAccessBlock.html)

  - [PutPublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutPublicAccessBlock.html)

### `getStorageLensConfiguration(input:completion:)`

Gets the Amazon S3 Storage Lens configuration. For more information, see [Assessing your storage activity and usage with Amazon S3 Storage Lens ](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in the Amazon S3 User Guide. To use this action, you must have permission to perform the s3:GetStorageLensConfiguration action. For more information, see [Setting permissions to use Amazon S3 Storage Lens](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html) in the Amazon S3 User Guide.

``` swift
public func getStorageLensConfiguration(input: GetStorageLensConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<GetStorageLensConfigurationOutputResponse, GetStorageLensConfigurationOutputError>) -> Void)
```

### `getStorageLensConfigurationTagging(input:completion:)`

Gets the tags of Amazon S3 Storage Lens configuration. For more information about S3 Storage Lens, see [Assessing your storage activity and usage with Amazon S3 Storage Lens ](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in the Amazon S3 User Guide. To use this action, you must have permission to perform the s3:GetStorageLensConfigurationTagging action. For more information, see [Setting permissions to use Amazon S3 Storage Lens](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html) in the Amazon S3 User Guide.

``` swift
public func getStorageLensConfigurationTagging(input: GetStorageLensConfigurationTaggingInput, completion: @escaping (ClientRuntime.SdkResult<GetStorageLensConfigurationTaggingOutputResponse, GetStorageLensConfigurationTaggingOutputError>) -> Void)
```

### `listAccessPoints(input:completion:)`

Returns a list of the access points currently associated with the specified bucket. You can retrieve up to 1000 access points per call. If the specified bucket has more than 1,000 access points (or the number specified in maxResults, whichever is less), the response will include a continuation token that you can use to list the additional access points. All Amazon S3 on Outposts REST API requests for this action require an additional parameter of x-amz-outpost-id to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of s3-control. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the x-amz-outpost-id derived using the access point ARN, see the [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html#API_control_GetAccessPoint_Examples) section. The following actions are related to ListAccessPoints:

``` swift
public func listAccessPoints(input: ListAccessPointsInput, completion: @escaping (ClientRuntime.SdkResult<ListAccessPointsOutputResponse, ListAccessPointsOutputError>) -> Void)
```

  - [CreateAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html)

  - [DeleteAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html)

  - [GetAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html)

### `listAccessPointsForObjectLambda(input:completion:)`

Returns a list of the access points associated with the Object Lambda Access Point. You can retrieve up to 1000 access points per call. If there are more than 1,000 access points (or the number specified in maxResults, whichever is less), the response will include a continuation token that you can use to list the additional access points. The following actions are related to ListAccessPointsForObjectLambda:

``` swift
public func listAccessPointsForObjectLambda(input: ListAccessPointsForObjectLambdaInput, completion: @escaping (ClientRuntime.SdkResult<ListAccessPointsForObjectLambdaOutputResponse, ListAccessPointsForObjectLambdaOutputError>) -> Void)
```

  - [CreateAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPointForObjectLambda.html)

  - [DeleteAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointForObjectLambda.html)

  - [GetAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointForObjectLambda.html)

### `listJobs(input:completion:)`

Lists current S3 Batch Operations jobs and jobs that have ended within the last 30 days for the Amazon Web Services account making the request. For more information, see [S3 Batch Operations](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html) in the Amazon S3 User Guide. Related actions include:

``` swift
public func listJobs(input: ListJobsInput, completion: @escaping (ClientRuntime.SdkResult<ListJobsOutputResponse, ListJobsOutputError>) -> Void)
```

  - [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)

  - [DescribeJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html)

  - [UpdateJobPriority](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html)

  - [UpdateJobStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)

### `listMultiRegionAccessPoints(input:completion:)`

Returns a list of the Multi-Region Access Points currently associated with the specified Amazon Web Services account. Each call can return up to 100 Multi-Region Access Points, the maximum number of Multi-Region Access Points that can be associated with a single account. This action will always be routed to the US West (Oregon) Region. For more information about the restrictions around managing Multi-Region Access Points, see [Managing Multi-Region Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html) in the Amazon S3 User Guide. The following actions are related to ListMultiRegionAccessPoint:

``` swift
public func listMultiRegionAccessPoints(input: ListMultiRegionAccessPointsInput, completion: @escaping (ClientRuntime.SdkResult<ListMultiRegionAccessPointsOutputResponse, ListMultiRegionAccessPointsOutputError>) -> Void)
```

  - [CreateMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html)

  - [DeleteMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html)

  - [DescribeMultiRegionAccessPointOperation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html)

  - [GetMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html)

### `listRegionalBuckets(input:completion:)`

Returns a list of all Outposts buckets in an Outpost that are owned by the authenticated sender of the request. For more information, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the Amazon S3 User Guide. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and x-amz-outpost-id in your request, see the [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListRegionalBuckets.html#API_control_ListRegionalBuckets_Examples) section.

``` swift
public func listRegionalBuckets(input: ListRegionalBucketsInput, completion: @escaping (ClientRuntime.SdkResult<ListRegionalBucketsOutputResponse, ListRegionalBucketsOutputError>) -> Void)
```

### `listStorageLensConfigurations(input:completion:)`

Gets a list of Amazon S3 Storage Lens configurations. For more information about S3 Storage Lens, see [Assessing your storage activity and usage with Amazon S3 Storage Lens ](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in the Amazon S3 User Guide. To use this action, you must have permission to perform the s3:ListStorageLensConfigurations action. For more information, see [Setting permissions to use Amazon S3 Storage Lens](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html) in the Amazon S3 User Guide.

``` swift
public func listStorageLensConfigurations(input: ListStorageLensConfigurationsInput, completion: @escaping (ClientRuntime.SdkResult<ListStorageLensConfigurationsOutputResponse, ListStorageLensConfigurationsOutputError>) -> Void)
```

### `putAccessPointConfigurationForObjectLambda(input:completion:)`

Replaces configuration for an Object Lambda Access Point. The following actions are related to PutAccessPointConfigurationForObjectLambda:

``` swift
public func putAccessPointConfigurationForObjectLambda(input: PutAccessPointConfigurationForObjectLambdaInput, completion: @escaping (ClientRuntime.SdkResult<PutAccessPointConfigurationForObjectLambdaOutputResponse, PutAccessPointConfigurationForObjectLambdaOutputError>) -> Void)
```

  - [GetAccessPointConfigurationForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointConfigurationForObjectLambda.html)

### `putAccessPointPolicy(input:completion:)`

Associates an access policy with the specified access point. Each access point can have only one policy, so a request made to this API replaces any existing policy associated with the specified access point. All Amazon S3 on Outposts REST API requests for this action require an additional parameter of x-amz-outpost-id to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of s3-control. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the x-amz-outpost-id derived using the access point ARN, see the [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html#API_control_PutAccessPointPolicy_Examples) section. The following actions are related to PutAccessPointPolicy:

``` swift
public func putAccessPointPolicy(input: PutAccessPointPolicyInput, completion: @escaping (ClientRuntime.SdkResult<PutAccessPointPolicyOutputResponse, PutAccessPointPolicyOutputError>) -> Void)
```

  - [GetAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicy.html)

  - [DeleteAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicy.html)

### `putAccessPointPolicyForObjectLambda(input:completion:)`

Creates or replaces resource policy for an Object Lambda Access Point. For an example policy, see [Creating Object Lambda Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/olap-create.html#olap-create-cli) in the Amazon S3 User Guide. The following actions are related to PutAccessPointPolicyForObjectLambda:

``` swift
public func putAccessPointPolicyForObjectLambda(input: PutAccessPointPolicyForObjectLambdaInput, completion: @escaping (ClientRuntime.SdkResult<PutAccessPointPolicyForObjectLambdaOutputResponse, PutAccessPointPolicyForObjectLambdaOutputError>) -> Void)
```

  - [DeleteAccessPointPolicyForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicyForObjectLambda.html)

  - [GetAccessPointPolicyForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicyForObjectLambda.html)

### `putBucketLifecycleConfiguration(input:completion:)`

This action puts a lifecycle configuration to an Amazon S3 on Outposts bucket. To put a lifecycle configuration to an S3 bucket, see [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html) in the Amazon S3 API Reference. Creates a new lifecycle configuration for the S3 on Outposts bucket or replaces an existing lifecycle configuration. Outposts buckets only support lifecycle configurations that delete/expire objects after a certain period of time and abort incomplete multipart uploads. All Amazon S3 on Outposts REST API requests for this action require an additional parameter of x-amz-outpost-id to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of s3-control. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the x-amz-outpost-id derived using the access point ARN, see the [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html#API_control_PutBucketLifecycleConfiguration_Examples) section. The following actions are related to PutBucketLifecycleConfiguration:

``` swift
public func putBucketLifecycleConfiguration(input: PutBucketLifecycleConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<PutBucketLifecycleConfigurationOutputResponse, PutBucketLifecycleConfigurationOutputError>) -> Void)
```

  - [GetBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html)

  - [DeleteBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html)

### `putBucketPolicy(input:completion:)`

This action puts a bucket policy to an Amazon S3 on Outposts bucket. To put a policy on an S3 bucket, see [PutBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketPolicy.html) in the Amazon S3 API Reference. Applies an Amazon S3 bucket policy to an Outposts bucket. For more information, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the Amazon S3 User Guide. If you are using an identity other than the root user of the Amazon Web Services account that owns the Outposts bucket, the calling identity must have the PutBucketPolicy permissions on the specified Outposts bucket and belong to the bucket owner's account in order to use this action. If you don't have PutBucketPolicy permissions, Amazon S3 returns a 403 Access Denied error. If you have the correct permissions, but you're not using an identity that belongs to the bucket owner's account, Amazon S3 returns a 405 Method Not Allowed error. As a security precaution, the root user of the Amazon Web Services account that owns a bucket can always use this action, even if the policy explicitly denies the root user the ability to perform this action. For more information about bucket policies, see [Using Bucket Policies and User Policies](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html). All Amazon S3 on Outposts REST API requests for this action require an additional parameter of x-amz-outpost-id to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of s3-control. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the x-amz-outpost-id derived using the access point ARN, see the [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketPolicy.html#API_control_PutBucketPolicy_Examples) section. The following actions are related to PutBucketPolicy:

``` swift
public func putBucketPolicy(input: PutBucketPolicyInput, completion: @escaping (ClientRuntime.SdkResult<PutBucketPolicyOutputResponse, PutBucketPolicyOutputError>) -> Void)
```

  - [GetBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketPolicy.html)

  - [DeleteBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketPolicy.html)

### `putBucketTagging(input:completion:)`

This action puts tags on an Amazon S3 on Outposts bucket. To put tags on an S3 bucket, see [PutBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketTagging.html) in the Amazon S3 API Reference. Sets the tags for an S3 on Outposts bucket. For more information, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the Amazon S3 User Guide. Use tags to organize your Amazon Web Services bill to reflect your own cost structure. To do this, sign up to get your Amazon Web Services account bill with tag key values included. Then, to see the cost of combined resources, organize your billing information according to resources with the same tag key values. For example, you can tag several resources with a specific application name, and then organize your billing information to see the total cost of that application across several services. For more information, see [Cost allocation and tagging](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html). Within a bucket, if you add a tag that has the same key as an existing tag, the new value overwrites the old value. For more information, see [ Using cost allocation in Amazon S3 bucket tags](https://docs.aws.amazon.com/AmazonS3/latest/userguide/CostAllocTagging.html). To use this action, you must have permissions to perform the s3-outposts:PutBucketTagging action. The Outposts bucket owner has this permission by default and can grant this permission to others. For more information about permissions, see [ Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources) and [Managing access permissions to your Amazon S3 resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html). PutBucketTagging has the following special errors:

``` swift
public func putBucketTagging(input: PutBucketTaggingInput, completion: @escaping (ClientRuntime.SdkResult<PutBucketTaggingOutputResponse, PutBucketTaggingOutputError>) -> Void)
```

  - Error code: InvalidTagError

  - Description: The tag provided was not a valid tag. This error can occur if the tag did not pass input validation. For information about tag restrictions, see [ User-Defined Tag Restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html) and [ Amazon Web Services-Generated Cost Allocation Tag Restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/aws-tag-restrictions.html).

  - Error code: MalformedXMLError

  - Description: The XML provided does not match the schema.

  - Error code: OperationAbortedError

  - Description: A conflicting conditional action is currently in progress against this resource. Try again.

  - Error code: InternalError

  - Description: The service was unable to apply the provided tag to the bucket.

All Amazon S3 on Outposts REST API requests for this action require an additional parameter of x-amz-outpost-id to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of s3-control. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the x-amz-outpost-id derived using the access point ARN, see the [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketTagging.html#API_control_PutBucketTagging_Examples) section. The following actions are related to PutBucketTagging:

  - [GetBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketTagging.html)

  - [DeleteBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketTagging.html)

### `putJobTagging(input:completion:)`

Sets the supplied tag-set on an S3 Batch Operations job. A tag is a key-value pair. You can associate S3 Batch Operations tags with any job by sending a PUT request against the tagging subresource that is associated with the job. To modify the existing tag set, you can either replace the existing tag set entirely, or make changes within the existing tag set by retrieving the existing tag set using [GetJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html), modify that tag set, and use this action to replace the tag set with the one you modified. For more information, see [Controlling access and labeling jobs using tags](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags) in the Amazon S3 User Guide.

``` swift
public func putJobTagging(input: PutJobTaggingInput, completion: @escaping (ClientRuntime.SdkResult<PutJobTaggingOutputResponse, PutJobTaggingOutputError>) -> Void)
```

  - If you send this request with an empty tag set, Amazon S3 deletes the existing tag set on the Batch Operations job. If you use this method, you are charged for a Tier 1 Request (PUT). For more information, see [Amazon S3 pricing](http://aws.amazon.com/s3/pricing/).

  - For deleting existing tags for your Batch Operations job, a [DeleteJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html) request is preferred because it achieves the same result without incurring charges.

  - A few things to consider about using tags:

  - Amazon S3 limits the maximum number of tags to 50 tags per job.

  - You can associate up to 50 tags with a job as long as they have unique tag keys.

  - A tag key can be up to 128 Unicode characters in length, and tag values can be up to 256 Unicode characters in length.

  - The key and values are case sensitive.

  - For tagging-related restrictions related to characters and encodings, see [User-Defined Tag Restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html) in the Billing and Cost Management User Guide.

To use this action, you must have permission to perform the s3:PutJobTagging action. Related actions include:

  - [CreatJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)

  - [GetJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html)

  - [DeleteJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html)

### `putMultiRegionAccessPointPolicy(input:completion:)`

Associates an access control policy with the specified Multi-Region Access Point. Each Multi-Region Access Point can have only one policy, so a request made to this action replaces any existing policy that is associated with the specified Multi-Region Access Point. This action will always be routed to the US West (Oregon) Region. For more information about the restrictions around managing Multi-Region Access Points, see [Managing Multi-Region Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html) in the Amazon S3 User Guide. The following actions are related to PutMultiRegionAccessPointPolicy:

``` swift
public func putMultiRegionAccessPointPolicy(input: PutMultiRegionAccessPointPolicyInput, completion: @escaping (ClientRuntime.SdkResult<PutMultiRegionAccessPointPolicyOutputResponse, PutMultiRegionAccessPointPolicyOutputError>) -> Void)
```

  - [GetMultiRegionAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicy.html)

  - [GetMultiRegionAccessPointPolicyStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicyStatus.html)

### `putPublicAccessBlock(input:completion:)`

Creates or modifies the PublicAccessBlock configuration for an Amazon Web Services account. For more information, see [ Using Amazon S3 block public access](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html). Related actions include:

``` swift
public func putPublicAccessBlock(input: PutPublicAccessBlockInput, completion: @escaping (ClientRuntime.SdkResult<PutPublicAccessBlockOutputResponse, PutPublicAccessBlockOutputError>) -> Void)
```

  - [GetPublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetPublicAccessBlock.html)

  - [DeletePublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeletePublicAccessBlock.html)

### `putStorageLensConfiguration(input:completion:)`

Puts an Amazon S3 Storage Lens configuration. For more information about S3 Storage Lens, see [Working with Amazon S3 Storage Lens](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in the Amazon S3 User Guide. To use this action, you must have permission to perform the s3:PutStorageLensConfiguration action. For more information, see [Setting permissions to use Amazon S3 Storage Lens](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html) in the Amazon S3 User Guide.

``` swift
public func putStorageLensConfiguration(input: PutStorageLensConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<PutStorageLensConfigurationOutputResponse, PutStorageLensConfigurationOutputError>) -> Void)
```

### `putStorageLensConfigurationTagging(input:completion:)`

Put or replace tags on an existing Amazon S3 Storage Lens configuration. For more information about S3 Storage Lens, see [Assessing your storage activity and usage with Amazon S3 Storage Lens ](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in the Amazon S3 User Guide. To use this action, you must have permission to perform the s3:PutStorageLensConfigurationTagging action. For more information, see [Setting permissions to use Amazon S3 Storage Lens](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html) in the Amazon S3 User Guide.

``` swift
public func putStorageLensConfigurationTagging(input: PutStorageLensConfigurationTaggingInput, completion: @escaping (ClientRuntime.SdkResult<PutStorageLensConfigurationTaggingOutputResponse, PutStorageLensConfigurationTaggingOutputError>) -> Void)
```

### `updateJobPriority(input:completion:)`

Updates an existing S3 Batch Operations job's priority. For more information, see [S3 Batch Operations](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html) in the Amazon S3 User Guide. Related actions include:

``` swift
public func updateJobPriority(input: UpdateJobPriorityInput, completion: @escaping (ClientRuntime.SdkResult<UpdateJobPriorityOutputResponse, UpdateJobPriorityOutputError>) -> Void)
```

  - [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)

  - [ListJobs](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html)

  - [DescribeJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html)

  - [UpdateJobStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)

### `updateJobStatus(input:completion:)`

Updates the status for the specified job. Use this action to confirm that you want to run a job or to cancel an existing job. For more information, see [S3 Batch Operations](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html) in the Amazon S3 User Guide. Related actions include:

``` swift
public func updateJobStatus(input: UpdateJobStatusInput, completion: @escaping (ClientRuntime.SdkResult<UpdateJobStatusOutputResponse, UpdateJobStatusOutputError>) -> Void)
```

  - [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)

  - [ListJobs](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html)

  - [DescribeJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html)

  - [UpdateJobStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)