# LambdaClientProtocol

Lambda Overview This is the Lambda API Reference. The Lambda Developer Guide provides additional information. For the service overview, see [What is Lambda](https://docs.aws.amazon.com/lambda/latest/dg/welcome.html), and for information about how the service works, see [Lambda: How it Works](https://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html) in the Lambda Developer Guide.

``` swift
public protocol LambdaClientProtocol 
```

## Requirements

### addLayerVersionPermission(input:completion:)

Adds permissions to the resource-based policy of a version of an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html). Use this action to grant layer usage permission to other accounts. You can grant permission to a single account, all accounts in an organization, or all Amazon Web Services accounts. To revoke permission, call \[RemoveLayerVersionPermission\] with the statement ID that you specified when you added it.

``` swift
func addLayerVersionPermission(input: AddLayerVersionPermissionInput, completion: @escaping (ClientRuntime.SdkResult<AddLayerVersionPermissionOutputResponse, AddLayerVersionPermissionOutputError>) -> Void)
```

### addPermission(input:completion:)

Grants an Amazon Web Services service or another account permission to use a function. You can apply the policy at the function level, or specify a qualifier to restrict access to a single version or alias. If you use a qualifier, the invoker must use the full Amazon Resource Name (ARN) of that version or alias to invoke the function. Note: Lambda does not support adding policies to version $LATEST. To grant permission to another account, specify the account ID as the Principal. For Amazon Web Services services, the principal is a domain-style identifier defined by the service, like s3.amazonaws.com or sns.amazonaws.com. For Amazon Web Services services, you can also specify the ARN of the associated resource as the SourceArn. If you grant permission to a service principal without specifying the source, other accounts could potentially configure resources in their account to invoke your Lambda function. This action adds a statement to a resource-based permissions policy for the function. For more information about function policies, see [Lambda Function Policies](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html).

``` swift
func addPermission(input: AddPermissionInput, completion: @escaping (ClientRuntime.SdkResult<AddPermissionOutputResponse, AddPermissionOutputError>) -> Void)
```

### createAlias(input:completion:)

Creates an [alias](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html) for a Lambda function version. Use aliases to provide clients with a function identifier that you can update to invoke a different version. You can also map an alias to split invocation requests between two versions. Use the RoutingConfig parameter to specify a second version and the percentage of invocation requests that it receives.

``` swift
func createAlias(input: CreateAliasInput, completion: @escaping (ClientRuntime.SdkResult<CreateAliasOutputResponse, CreateAliasOutputError>) -> Void)
```

### createCodeSigningConfig(input:completion:)

Creates a code signing configuration. A [code signing configuration](https://docs.aws.amazon.com/lambda/latest/dg/configuration-trustedcode.html) defines a list of allowed signing profiles and defines the code-signing validation policy (action to be taken if deployment validation checks fail).

``` swift
func createCodeSigningConfig(input: CreateCodeSigningConfigInput, completion: @escaping (ClientRuntime.SdkResult<CreateCodeSigningConfigOutputResponse, CreateCodeSigningConfigOutputError>) -> Void)
```

### createEventSourceMapping(input:completion:)

Creates a mapping between an event source and an Lambda function. Lambda reads items from the event source and triggers the function. For details about each event source type, see the following topics.

``` swift
func createEventSourceMapping(input: CreateEventSourceMappingInput, completion: @escaping (ClientRuntime.SdkResult<CreateEventSourceMappingOutputResponse, CreateEventSourceMappingOutputError>) -> Void)
```

  - [Configuring a Dynamo DB stream as an event source](https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-dynamodb-eventsourcemapping)

  - [ Configuring a Kinesis stream as an event source](https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-eventsourcemapping)

  - [ Configuring an Amazon SQS queue as an event source](https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-eventsource)

  - [ Configuring an MQ broker as an event source](https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-eventsourcemapping)

  - [ Configuring MSK as an event source](https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html)

  - [ Configuring Self-Managed Apache Kafka as an event source](https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html)

The following error handling options are only available for stream sources (DynamoDB and Kinesis):

  - BisectBatchOnFunctionError - If the function returns an error, split the batch in two and retry.

  - DestinationConfig - Send discarded records to an Amazon SQS queue or Amazon SNS topic.

  - MaximumRecordAgeInSeconds - Discard records older than the specified age. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires

  - MaximumRetryAttempts - Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.

  - ParallelizationFactor - Process multiple batches from each shard concurrently.

### createFunction(input:completion:)

Creates a Lambda function. To create a function, you need a [deployment package](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html) and an [execution role](https://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role). The deployment package is a .zip file archive or container image that contains your function code. The execution role grants the function permission to use Amazon Web Services services, such as Amazon CloudWatch Logs for log streaming and X-Ray for request tracing. You set the package type to Image if the deployment package is a [container image](https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html). For a container image, the code property must include the URI of a container image in the Amazon ECR registry. You do not need to specify the handler and runtime properties. You set the package type to Zip if the deployment package is a [.zip file archive](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip). For a .zip file archive, the code property specifies the location of the .zip file. You must also specify the handler and runtime properties. The code in the deployment package must be compatible with the target instruction set architecture of the function (x86-64 or arm64). If you do not specify the architecture, the default value is x86-64. When you create a function, Lambda provisions an instance of the function and its supporting resources. If your function connects to a VPC, this process can take a minute or so. During this time, you can't invoke or modify the function. The State, StateReason, and StateReasonCode fields in the response from \[GetFunctionConfiguration\] indicate when the function is ready to invoke. For more information, see [Function States](https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html). A function has an unpublished version, and can have published versions and aliases. The unpublished version changes when you update your function's code and configuration. A published version is a snapshot of your function code and configuration that can't be changed. An alias is a named resource that maps to a version, and can be changed to map to a different version. Use the Publish parameter to create version 1 of your function from its initial configuration. The other parameters let you configure version-specific and function-level settings. You can modify version-specific settings later with \[UpdateFunctionConfiguration\]. Function-level settings apply to both the unpublished and published versions of the function, and include tags (\[TagResource\]) and per-function concurrency limits (\[PutFunctionConcurrency\]). You can use code signing if your deployment package is a .zip file archive. To enable code signing for this function, specify the ARN of a code-signing configuration. When a user attempts to deploy a code package with \[UpdateFunctionCode\], Lambda checks that the code package has a valid signature from a trusted publisher. The code-signing configuration includes set set of signing profiles, which define the trusted publishers for this function. If another account or an Amazon Web Services service invokes your function, use \[AddPermission\] to grant permission by creating a resource-based IAM policy. You can grant permissions at the function level, on a version, or on an alias. To invoke your function directly, use \[Invoke\]. To invoke your function in response to events in other Amazon Web Services services, create an event source mapping (\[CreateEventSourceMapping\]), or configure a function trigger in the other service. For more information, see [Invoking Functions](https://docs.aws.amazon.com/lambda/latest/dg/lambda-invocation.html).

``` swift
func createFunction(input: CreateFunctionInput, completion: @escaping (ClientRuntime.SdkResult<CreateFunctionOutputResponse, CreateFunctionOutputError>) -> Void)
```

### deleteAlias(input:completion:)

Deletes a Lambda function [alias](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

``` swift
func deleteAlias(input: DeleteAliasInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAliasOutputResponse, DeleteAliasOutputError>) -> Void)
```

### deleteCodeSigningConfig(input:completion:)

Deletes the code signing configuration. You can delete the code signing configuration only if no function is using it.

``` swift
func deleteCodeSigningConfig(input: DeleteCodeSigningConfigInput, completion: @escaping (ClientRuntime.SdkResult<DeleteCodeSigningConfigOutputResponse, DeleteCodeSigningConfigOutputError>) -> Void)
```

### deleteEventSourceMapping(input:completion:)

Deletes an [event source mapping](https://docs.aws.amazon.com/lambda/latest/dg/intro-invocation-modes.html). You can get the identifier of a mapping from the output of \[ListEventSourceMappings\]. When you delete an event source mapping, it enters a Deleting state and might not be completely deleted for several seconds.

``` swift
func deleteEventSourceMapping(input: DeleteEventSourceMappingInput, completion: @escaping (ClientRuntime.SdkResult<DeleteEventSourceMappingOutputResponse, DeleteEventSourceMappingOutputError>) -> Void)
```

### deleteFunction(input:completion:)

Deletes a Lambda function. To delete a specific function version, use the Qualifier parameter. Otherwise, all versions and aliases are deleted. To delete Lambda event source mappings that invoke a function, use \[DeleteEventSourceMapping\]. For Amazon Web Services services and resources that invoke your function directly, delete the trigger in the service where you originally configured it.

``` swift
func deleteFunction(input: DeleteFunctionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteFunctionOutputResponse, DeleteFunctionOutputError>) -> Void)
```

### deleteFunctionCodeSigningConfig(input:completion:)

Removes the code signing configuration from the function.

``` swift
func deleteFunctionCodeSigningConfig(input: DeleteFunctionCodeSigningConfigInput, completion: @escaping (ClientRuntime.SdkResult<DeleteFunctionCodeSigningConfigOutputResponse, DeleteFunctionCodeSigningConfigOutputError>) -> Void)
```

### deleteFunctionConcurrency(input:completion:)

Removes a concurrent execution limit from a function.

``` swift
func deleteFunctionConcurrency(input: DeleteFunctionConcurrencyInput, completion: @escaping (ClientRuntime.SdkResult<DeleteFunctionConcurrencyOutputResponse, DeleteFunctionConcurrencyOutputError>) -> Void)
```

### deleteFunctionEventInvokeConfig(input:completion:)

Deletes the configuration for asynchronous invocation for a function, version, or alias. To configure options for asynchronous invocation, use \[PutFunctionEventInvokeConfig\].

``` swift
func deleteFunctionEventInvokeConfig(input: DeleteFunctionEventInvokeConfigInput, completion: @escaping (ClientRuntime.SdkResult<DeleteFunctionEventInvokeConfigOutputResponse, DeleteFunctionEventInvokeConfigOutputError>) -> Void)
```

### deleteLayerVersion(input:completion:)

Deletes a version of an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html). Deleted versions can no longer be viewed or added to functions. To avoid breaking functions, a copy of the version remains in Lambda until no functions refer to it.

``` swift
func deleteLayerVersion(input: DeleteLayerVersionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteLayerVersionOutputResponse, DeleteLayerVersionOutputError>) -> Void)
```

### deleteProvisionedConcurrencyConfig(input:completion:)

Deletes the provisioned concurrency configuration for a function.

``` swift
func deleteProvisionedConcurrencyConfig(input: DeleteProvisionedConcurrencyConfigInput, completion: @escaping (ClientRuntime.SdkResult<DeleteProvisionedConcurrencyConfigOutputResponse, DeleteProvisionedConcurrencyConfigOutputError>) -> Void)
```

### getAccountSettings(input:completion:)

Retrieves details about your account's [limits](https://docs.aws.amazon.com/lambda/latest/dg/limits.html) and usage in an Amazon Web Services Region.

``` swift
func getAccountSettings(input: GetAccountSettingsInput, completion: @escaping (ClientRuntime.SdkResult<GetAccountSettingsOutputResponse, GetAccountSettingsOutputError>) -> Void)
```

### getAlias(input:completion:)

Returns details about a Lambda function [alias](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

``` swift
func getAlias(input: GetAliasInput, completion: @escaping (ClientRuntime.SdkResult<GetAliasOutputResponse, GetAliasOutputError>) -> Void)
```

### getCodeSigningConfig(input:completion:)

Returns information about the specified code signing configuration.

``` swift
func getCodeSigningConfig(input: GetCodeSigningConfigInput, completion: @escaping (ClientRuntime.SdkResult<GetCodeSigningConfigOutputResponse, GetCodeSigningConfigOutputError>) -> Void)
```

### getEventSourceMapping(input:completion:)

Returns details about an event source mapping. You can get the identifier of a mapping from the output of \[ListEventSourceMappings\].

``` swift
func getEventSourceMapping(input: GetEventSourceMappingInput, completion: @escaping (ClientRuntime.SdkResult<GetEventSourceMappingOutputResponse, GetEventSourceMappingOutputError>) -> Void)
```

### getFunction(input:completion:)

Returns information about the function or function version, with a link to download the deployment package that's valid for 10 minutes. If you specify a function version, only details that are specific to that version are returned.

``` swift
func getFunction(input: GetFunctionInput, completion: @escaping (ClientRuntime.SdkResult<GetFunctionOutputResponse, GetFunctionOutputError>) -> Void)
```

### getFunctionCodeSigningConfig(input:completion:)

Returns the code signing configuration for the specified function.

``` swift
func getFunctionCodeSigningConfig(input: GetFunctionCodeSigningConfigInput, completion: @escaping (ClientRuntime.SdkResult<GetFunctionCodeSigningConfigOutputResponse, GetFunctionCodeSigningConfigOutputError>) -> Void)
```

### getFunctionConcurrency(input:completion:)

Returns details about the reserved concurrency configuration for a function. To set a concurrency limit for a function, use \[PutFunctionConcurrency\].

``` swift
func getFunctionConcurrency(input: GetFunctionConcurrencyInput, completion: @escaping (ClientRuntime.SdkResult<GetFunctionConcurrencyOutputResponse, GetFunctionConcurrencyOutputError>) -> Void)
```

### getFunctionConfiguration(input:completion:)

Returns the version-specific settings of a Lambda function or version. The output includes only options that can vary between versions of a function. To modify these settings, use \[UpdateFunctionConfiguration\]. To get all of a function's details, including function-level settings, use \[GetFunction\].

``` swift
func getFunctionConfiguration(input: GetFunctionConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<GetFunctionConfigurationOutputResponse, GetFunctionConfigurationOutputError>) -> Void)
```

### getFunctionEventInvokeConfig(input:completion:)

Retrieves the configuration for asynchronous invocation for a function, version, or alias. To configure options for asynchronous invocation, use \[PutFunctionEventInvokeConfig\].

``` swift
func getFunctionEventInvokeConfig(input: GetFunctionEventInvokeConfigInput, completion: @escaping (ClientRuntime.SdkResult<GetFunctionEventInvokeConfigOutputResponse, GetFunctionEventInvokeConfigOutputError>) -> Void)
```

### getLayerVersion(input:completion:)

Returns information about a version of an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html), with a link to download the layer archive that's valid for 10 minutes.

``` swift
func getLayerVersion(input: GetLayerVersionInput, completion: @escaping (ClientRuntime.SdkResult<GetLayerVersionOutputResponse, GetLayerVersionOutputError>) -> Void)
```

### getLayerVersionByArn(input:completion:)

Returns information about a version of an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html), with a link to download the layer archive that's valid for 10 minutes.

``` swift
func getLayerVersionByArn(input: GetLayerVersionByArnInput, completion: @escaping (ClientRuntime.SdkResult<GetLayerVersionByArnOutputResponse, GetLayerVersionByArnOutputError>) -> Void)
```

### getLayerVersionPolicy(input:completion:)

Returns the permission policy for a version of an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html). For more information, see \[AddLayerVersionPermission\].

``` swift
func getLayerVersionPolicy(input: GetLayerVersionPolicyInput, completion: @escaping (ClientRuntime.SdkResult<GetLayerVersionPolicyOutputResponse, GetLayerVersionPolicyOutputError>) -> Void)
```

### getPolicy(input:completion:)

Returns the [resource-based IAM policy](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html) for a function, version, or alias.

``` swift
func getPolicy(input: GetPolicyInput, completion: @escaping (ClientRuntime.SdkResult<GetPolicyOutputResponse, GetPolicyOutputError>) -> Void)
```

### getProvisionedConcurrencyConfig(input:completion:)

Retrieves the provisioned concurrency configuration for a function's alias or version.

``` swift
func getProvisionedConcurrencyConfig(input: GetProvisionedConcurrencyConfigInput, completion: @escaping (ClientRuntime.SdkResult<GetProvisionedConcurrencyConfigOutputResponse, GetProvisionedConcurrencyConfigOutputError>) -> Void)
```

### invoke(input:completion:)

Invokes a Lambda function. You can invoke a function synchronously (and wait for the response), or asynchronously. To invoke a function asynchronously, set InvocationType to Event. For [synchronous invocation](https://docs.aws.amazon.com/lambda/latest/dg/invocation-sync.html), details about the function response, including errors, are included in the response body and headers. For either invocation type, you can find more information in the [execution log](https://docs.aws.amazon.com/lambda/latest/dg/monitoring-functions.html) and [trace](https://docs.aws.amazon.com/lambda/latest/dg/lambda-x-ray.html). When an error occurs, your function may be invoked multiple times. Retry behavior varies by error type, client, event source, and invocation type. For example, if you invoke a function asynchronously and it returns an error, Lambda executes the function up to two more times. For more information, see [Retry Behavior](https://docs.aws.amazon.com/lambda/latest/dg/retries-on-errors.html). For [asynchronous invocation](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html), Lambda adds events to a queue before sending them to your function. If your function does not have enough capacity to keep up with the queue, events may be lost. Occasionally, your function may receive the same event multiple times, even if no error occurs. To retain events that were not processed, configure your function with a [dead-letter queue](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq). The status code in the API response doesn't reflect function errors. Error codes are reserved for errors that prevent your function from executing, such as permissions errors, [limit errors](https://docs.aws.amazon.com/lambda/latest/dg/limits.html), or issues with your function's code and configuration. For example, Lambda returns TooManyRequestsException if executing the function would cause you to exceed a concurrency limit at either the account level (ConcurrentInvocationLimitExceeded) or function level (ReservedFunctionConcurrentInvocationLimitExceeded). For functions with a long timeout, your client might be disconnected during synchronous invocation while it waits for a response. Configure your HTTP client, SDK, firewall, proxy, or operating system to allow for long connections with timeout or keep-alive settings. This operation requires permission for the [lambda:InvokeFunction](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html) action.

``` swift
func invoke(input: InvokeInput, completion: @escaping (ClientRuntime.SdkResult<InvokeOutputResponse, InvokeOutputError>) -> Void)
```

### invokeAsync(input:completion:)

For asynchronous function invocation, use \[Invoke\]. Invokes a function asynchronously.

``` swift
@available(*, deprecated)
    func invokeAsync(input: InvokeAsyncInput, completion: @escaping (ClientRuntime.SdkResult<InvokeAsyncOutputResponse, InvokeAsyncOutputError>) -> Void)
```

### listAliases(input:completion:)

Returns a list of [aliases](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html) for a Lambda function.

``` swift
func listAliases(input: ListAliasesInput, completion: @escaping (ClientRuntime.SdkResult<ListAliasesOutputResponse, ListAliasesOutputError>) -> Void)
```

### listCodeSigningConfigs(input:completion:)

Returns a list of [code signing configurations](https://docs.aws.amazon.com/lambda/latest/dg/configuring-codesigning.html). A request returns up to 10,000 configurations per call. You can use the MaxItems parameter to return fewer configurations per call.

``` swift
func listCodeSigningConfigs(input: ListCodeSigningConfigsInput, completion: @escaping (ClientRuntime.SdkResult<ListCodeSigningConfigsOutputResponse, ListCodeSigningConfigsOutputError>) -> Void)
```

### listEventSourceMappings(input:completion:)

Lists event source mappings. Specify an EventSourceArn to only show event source mappings for a single event source.

``` swift
func listEventSourceMappings(input: ListEventSourceMappingsInput, completion: @escaping (ClientRuntime.SdkResult<ListEventSourceMappingsOutputResponse, ListEventSourceMappingsOutputError>) -> Void)
```

### listFunctionEventInvokeConfigs(input:completion:)

Retrieves a list of configurations for asynchronous invocation for a function. To configure options for asynchronous invocation, use \[PutFunctionEventInvokeConfig\].

``` swift
func listFunctionEventInvokeConfigs(input: ListFunctionEventInvokeConfigsInput, completion: @escaping (ClientRuntime.SdkResult<ListFunctionEventInvokeConfigsOutputResponse, ListFunctionEventInvokeConfigsOutputError>) -> Void)
```

### listFunctions(input:completion:)

Returns a list of Lambda functions, with the version-specific configuration of each. Lambda returns up to 50 functions per call. Set FunctionVersion to ALL to include all published versions of each function in addition to the unpublished version. The ListFunctions action returns a subset of the \[FunctionConfiguration\] fields. To get the additional fields (State, StateReasonCode, StateReason, LastUpdateStatus, LastUpdateStatusReason, LastUpdateStatusReasonCode) for a function or version, use \[GetFunction\].

``` swift
func listFunctions(input: ListFunctionsInput, completion: @escaping (ClientRuntime.SdkResult<ListFunctionsOutputResponse, ListFunctionsOutputError>) -> Void)
```

### listFunctionsByCodeSigningConfig(input:completion:)

List the functions that use the specified code signing configuration. You can use this method prior to deleting a code signing configuration, to verify that no functions are using it.

``` swift
func listFunctionsByCodeSigningConfig(input: ListFunctionsByCodeSigningConfigInput, completion: @escaping (ClientRuntime.SdkResult<ListFunctionsByCodeSigningConfigOutputResponse, ListFunctionsByCodeSigningConfigOutputError>) -> Void)
```

### listLayers(input:completion:)

Lists [Lambda layers](https://docs.aws.amazon.com/lambda/latest/dg/invocation-layers.html) and shows information about the latest version of each. Specify a [runtime identifier](https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html) to list only layers that indicate that they're compatible with that runtime. Specify a compatible architecture to include only layers that are compatible with that [instruction set architecture](https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html).

``` swift
func listLayers(input: ListLayersInput, completion: @escaping (ClientRuntime.SdkResult<ListLayersOutputResponse, ListLayersOutputError>) -> Void)
```

### listLayerVersions(input:completion:)

Lists the versions of an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html). Versions that have been deleted aren't listed. Specify a [runtime identifier](https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html) to list only versions that indicate that they're compatible with that runtime. Specify a compatible architecture to include only layer versions that are compatible with that architecture.

``` swift
func listLayerVersions(input: ListLayerVersionsInput, completion: @escaping (ClientRuntime.SdkResult<ListLayerVersionsOutputResponse, ListLayerVersionsOutputError>) -> Void)
```

### listProvisionedConcurrencyConfigs(input:completion:)

Retrieves a list of provisioned concurrency configurations for a function.

``` swift
func listProvisionedConcurrencyConfigs(input: ListProvisionedConcurrencyConfigsInput, completion: @escaping (ClientRuntime.SdkResult<ListProvisionedConcurrencyConfigsOutputResponse, ListProvisionedConcurrencyConfigsOutputError>) -> Void)
```

### listTags(input:completion:)

Returns a function's [tags](https://docs.aws.amazon.com/lambda/latest/dg/tagging.html). You can also view tags with \[GetFunction\].

``` swift
func listTags(input: ListTagsInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsOutputResponse, ListTagsOutputError>) -> Void)
```

### listVersionsByFunction(input:completion:)

Returns a list of [versions](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html), with the version-specific configuration of each. Lambda returns up to 50 versions per call.

``` swift
func listVersionsByFunction(input: ListVersionsByFunctionInput, completion: @escaping (ClientRuntime.SdkResult<ListVersionsByFunctionOutputResponse, ListVersionsByFunctionOutputError>) -> Void)
```

### publishLayerVersion(input:completion:)

Creates an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html) from a ZIP archive. Each time you call PublishLayerVersion with the same layer name, a new version is created. Add layers to your function with \[CreateFunction\] or \[UpdateFunctionConfiguration\].

``` swift
func publishLayerVersion(input: PublishLayerVersionInput, completion: @escaping (ClientRuntime.SdkResult<PublishLayerVersionOutputResponse, PublishLayerVersionOutputError>) -> Void)
```

### publishVersion(input:completion:)

Creates a [version](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html) from the current code and configuration of a function. Use versions to create a snapshot of your function code and configuration that doesn't change. Lambda doesn't publish a version if the function's configuration and code haven't changed since the last version. Use \[UpdateFunctionCode\] or \[UpdateFunctionConfiguration\] to update the function before publishing a version. Clients can invoke versions directly or with an alias. To create an alias, use \[CreateAlias\].

``` swift
func publishVersion(input: PublishVersionInput, completion: @escaping (ClientRuntime.SdkResult<PublishVersionOutputResponse, PublishVersionOutputError>) -> Void)
```

### putFunctionCodeSigningConfig(input:completion:)

Update the code signing configuration for the function. Changes to the code signing configuration take effect the next time a user tries to deploy a code package to the function.

``` swift
func putFunctionCodeSigningConfig(input: PutFunctionCodeSigningConfigInput, completion: @escaping (ClientRuntime.SdkResult<PutFunctionCodeSigningConfigOutputResponse, PutFunctionCodeSigningConfigOutputError>) -> Void)
```

### putFunctionConcurrency(input:completion:)

Sets the maximum number of simultaneous executions for a function, and reserves capacity for that concurrency level. Concurrency settings apply to the function as a whole, including all published versions and the unpublished version. Reserving concurrency both ensures that your function has capacity to process the specified number of events simultaneously, and prevents it from scaling beyond that level. Use \[GetFunction\] to see the current setting for a function. Use \[GetAccountSettings\] to see your Regional concurrency limit. You can reserve concurrency for as many functions as you like, as long as you leave at least 100 simultaneous executions unreserved for functions that aren't configured with a per-function limit. For more information, see [Managing Concurrency](https://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html).

``` swift
func putFunctionConcurrency(input: PutFunctionConcurrencyInput, completion: @escaping (ClientRuntime.SdkResult<PutFunctionConcurrencyOutputResponse, PutFunctionConcurrencyOutputError>) -> Void)
```

### putFunctionEventInvokeConfig(input:completion:)

Configures options for [asynchronous invocation](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html) on a function, version, or alias. If a configuration already exists for a function, version, or alias, this operation overwrites it. If you exclude any settings, they are removed. To set one option without affecting existing settings for other options, use \[UpdateFunctionEventInvokeConfig\]. By default, Lambda retries an asynchronous invocation twice if the function returns an error. It retains events in a queue for up to six hours. When an event fails all processing attempts or stays in the asynchronous invocation queue for too long, Lambda discards it. To retain discarded events, configure a dead-letter queue with \[UpdateFunctionConfiguration\]. To send an invocation record to a queue, topic, function, or event bus, specify a [destination](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-async-destinations). You can configure separate destinations for successful invocations (on-success) and events that fail all processing attempts (on-failure). You can configure destinations in addition to or instead of a dead-letter queue.

``` swift
func putFunctionEventInvokeConfig(input: PutFunctionEventInvokeConfigInput, completion: @escaping (ClientRuntime.SdkResult<PutFunctionEventInvokeConfigOutputResponse, PutFunctionEventInvokeConfigOutputError>) -> Void)
```

### putProvisionedConcurrencyConfig(input:completion:)

Adds a provisioned concurrency configuration to a function's alias or version.

``` swift
func putProvisionedConcurrencyConfig(input: PutProvisionedConcurrencyConfigInput, completion: @escaping (ClientRuntime.SdkResult<PutProvisionedConcurrencyConfigOutputResponse, PutProvisionedConcurrencyConfigOutputError>) -> Void)
```

### removeLayerVersionPermission(input:completion:)

Removes a statement from the permissions policy for a version of an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html). For more information, see \[AddLayerVersionPermission\].

``` swift
func removeLayerVersionPermission(input: RemoveLayerVersionPermissionInput, completion: @escaping (ClientRuntime.SdkResult<RemoveLayerVersionPermissionOutputResponse, RemoveLayerVersionPermissionOutputError>) -> Void)
```

### removePermission(input:completion:)

Revokes function-use permission from an Amazon Web Services service or another account. You can get the ID of the statement from the output of \[GetPolicy\].

``` swift
func removePermission(input: RemovePermissionInput, completion: @escaping (ClientRuntime.SdkResult<RemovePermissionOutputResponse, RemovePermissionOutputError>) -> Void)
```

### tagResource(input:completion:)

Adds [tags](https://docs.aws.amazon.com/lambda/latest/dg/tagging.html) to a function.

``` swift
func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
```

### untagResource(input:completion:)

Removes [tags](https://docs.aws.amazon.com/lambda/latest/dg/tagging.html) from a function.

``` swift
func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
```

### updateAlias(input:completion:)

Updates the configuration of a Lambda function [alias](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

``` swift
func updateAlias(input: UpdateAliasInput, completion: @escaping (ClientRuntime.SdkResult<UpdateAliasOutputResponse, UpdateAliasOutputError>) -> Void)
```

### updateCodeSigningConfig(input:completion:)

Update the code signing configuration. Changes to the code signing configuration take effect the next time a user tries to deploy a code package to the function.

``` swift
func updateCodeSigningConfig(input: UpdateCodeSigningConfigInput, completion: @escaping (ClientRuntime.SdkResult<UpdateCodeSigningConfigOutputResponse, UpdateCodeSigningConfigOutputError>) -> Void)
```

### updateEventSourceMapping(input:completion:)

Updates an event source mapping. You can change the function that Lambda invokes, or pause invocation and resume later from the same location. The following error handling options are only available for stream sources (DynamoDB and Kinesis):

``` swift
func updateEventSourceMapping(input: UpdateEventSourceMappingInput, completion: @escaping (ClientRuntime.SdkResult<UpdateEventSourceMappingOutputResponse, UpdateEventSourceMappingOutputError>) -> Void)
```

  - BisectBatchOnFunctionError - If the function returns an error, split the batch in two and retry.

  - DestinationConfig - Send discarded records to an Amazon SQS queue or Amazon SNS topic.

  - MaximumRecordAgeInSeconds - Discard records older than the specified age. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires

  - MaximumRetryAttempts - Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.

  - ParallelizationFactor - Process multiple batches from each shard concurrently.

### updateFunctionCode(input:completion:)

Updates a Lambda function's code. If code signing is enabled for the function, the code package must be signed by a trusted publisher. For more information, see [Configuring code signing](https://docs.aws.amazon.com/lambda/latest/dg/configuration-trustedcode.html). The function's code is locked when you publish a version. You can't modify the code of a published version, only the unpublished version. For a function defined as a container image, Lambda resolves the image tag to an image digest. In Amazon ECR, if you update the image tag to a new image, Lambda does not automatically update the function.

``` swift
func updateFunctionCode(input: UpdateFunctionCodeInput, completion: @escaping (ClientRuntime.SdkResult<UpdateFunctionCodeOutputResponse, UpdateFunctionCodeOutputError>) -> Void)
```

### updateFunctionConfiguration(input:completion:)

Modify the version-specific settings of a Lambda function. When you update a function, Lambda provisions an instance of the function and its supporting resources. If your function connects to a VPC, this process can take a minute. During this time, you can't modify the function, but you can still invoke it. The LastUpdateStatus, LastUpdateStatusReason, and LastUpdateStatusReasonCode fields in the response from \[GetFunctionConfiguration\] indicate when the update is complete and the function is processing events with the new configuration. For more information, see [Function States](https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html). These settings can vary between versions of a function and are locked when you publish a version. You can't modify the configuration of a published version, only the unpublished version. To configure function concurrency, use \[PutFunctionConcurrency\]. To grant invoke permissions to an account or Amazon Web Services service, use \[AddPermission\].

``` swift
func updateFunctionConfiguration(input: UpdateFunctionConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<UpdateFunctionConfigurationOutputResponse, UpdateFunctionConfigurationOutputError>) -> Void)
```

### updateFunctionEventInvokeConfig(input:completion:)

Updates the configuration for asynchronous invocation for a function, version, or alias. To configure options for asynchronous invocation, use \[PutFunctionEventInvokeConfig\].

``` swift
func updateFunctionEventInvokeConfig(input: UpdateFunctionEventInvokeConfigInput, completion: @escaping (ClientRuntime.SdkResult<UpdateFunctionEventInvokeConfigOutputResponse, UpdateFunctionEventInvokeConfigOutputError>) -> Void)
```