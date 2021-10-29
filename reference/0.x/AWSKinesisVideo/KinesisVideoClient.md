# KinesisVideoClient

``` swift
public class KinesisVideoClient 
```

## Inheritance

[`KinesisVideoClientProtocol`](/aws-sdk-swift/reference/0.x/AWSKinesisVideo/KinesisVideoClientProtocol)

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
public static let clientName = "KinesisVideoClient"
```

## Methods

### `createSignalingChannel(input:completion:)`

Creates a signaling channel. CreateSignalingChannel is an asynchronous operation.

``` swift
public func createSignalingChannel(input: CreateSignalingChannelInput, completion: @escaping (ClientRuntime.SdkResult<CreateSignalingChannelOutputResponse, CreateSignalingChannelOutputError>) -> Void)
```

### `createStream(input:completion:)`

Creates a new Kinesis video stream. When you create a new stream, Kinesis Video Streams assigns it a version number. When you change the stream's metadata, Kinesis Video Streams updates the version. CreateStream is an asynchronous operation. For information about how the service works, see [How it Works](https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/how-it-works.html). You must have permissions for the KinesisVideo:CreateStream action.

``` swift
public func createStream(input: CreateStreamInput, completion: @escaping (ClientRuntime.SdkResult<CreateStreamOutputResponse, CreateStreamOutputError>) -> Void)
```

### `deleteSignalingChannel(input:completion:)`

Deletes a specified signaling channel. DeleteSignalingChannel is an asynchronous operation. If you don't specify the channel's current version, the most recent version is deleted.

``` swift
public func deleteSignalingChannel(input: DeleteSignalingChannelInput, completion: @escaping (ClientRuntime.SdkResult<DeleteSignalingChannelOutputResponse, DeleteSignalingChannelOutputError>) -> Void)
```

### `deleteStream(input:completion:)`

Deletes a Kinesis video stream and the data contained in the stream. This method marks the stream for deletion, and makes the data in the stream inaccessible immediately. To ensure that you have the latest version of the stream before deleting it, you can specify the stream version. Kinesis Video Streams assigns a version to each stream. When you update a stream, Kinesis Video Streams assigns a new version number. To get the latest stream version, use the DescribeStream API. This operation requires permission for the KinesisVideo:DeleteStream action.

``` swift
public func deleteStream(input: DeleteStreamInput, completion: @escaping (ClientRuntime.SdkResult<DeleteStreamOutputResponse, DeleteStreamOutputError>) -> Void)
```

### `describeSignalingChannel(input:completion:)`

Returns the most current information about the signaling channel. You must specify either the name or the Amazon Resource Name (ARN) of the channel that you want to describe.

``` swift
public func describeSignalingChannel(input: DescribeSignalingChannelInput, completion: @escaping (ClientRuntime.SdkResult<DescribeSignalingChannelOutputResponse, DescribeSignalingChannelOutputError>) -> Void)
```

### `describeStream(input:completion:)`

Returns the most current information about the specified stream. You must specify either the StreamName or the StreamARN.

``` swift
public func describeStream(input: DescribeStreamInput, completion: @escaping (ClientRuntime.SdkResult<DescribeStreamOutputResponse, DescribeStreamOutputError>) -> Void)
```

### `getDataEndpoint(input:completion:)`

Gets an endpoint for a specified stream for either reading or writing. Use this endpoint in your application to read from the specified stream (using the GetMedia or GetMediaForFragmentList operations) or write to it (using the PutMedia operation). The returned endpoint does not have the API name appended. The client needs to add the API name to the returned endpoint. In the request, specify the stream either by StreamName or StreamARN.

``` swift
public func getDataEndpoint(input: GetDataEndpointInput, completion: @escaping (ClientRuntime.SdkResult<GetDataEndpointOutputResponse, GetDataEndpointOutputError>) -> Void)
```

### `getSignalingChannelEndpoint(input:completion:)`

Provides an endpoint for the specified signaling channel to send and receive messages. This API uses the SingleMasterChannelEndpointConfiguration input parameter, which consists of the Protocols and Role properties. Protocols is used to determine the communication mechanism. For example, if you specify WSS as the protocol, this API produces a secure websocket endpoint. If you specify HTTPS as the protocol, this API generates an HTTPS endpoint. Role determines the messaging permissions. A MASTER role results in this API generating an endpoint that a client can use to communicate with any of the viewers on the channel. A VIEWER role results in this API generating an endpoint that a client can use to communicate only with a MASTER.

``` swift
public func getSignalingChannelEndpoint(input: GetSignalingChannelEndpointInput, completion: @escaping (ClientRuntime.SdkResult<GetSignalingChannelEndpointOutputResponse, GetSignalingChannelEndpointOutputError>) -> Void)
```

### `listSignalingChannels(input:completion:)`

Returns an array of ChannelInfo objects. Each object describes a signaling channel. To retrieve only those channels that satisfy a specific condition, you can specify a ChannelNameCondition.

``` swift
public func listSignalingChannels(input: ListSignalingChannelsInput, completion: @escaping (ClientRuntime.SdkResult<ListSignalingChannelsOutputResponse, ListSignalingChannelsOutputError>) -> Void)
```

### `listStreams(input:completion:)`

Returns an array of StreamInfo objects. Each object describes a stream. To retrieve only streams that satisfy a specific condition, you can specify a StreamNameCondition.

``` swift
public func listStreams(input: ListStreamsInput, completion: @escaping (ClientRuntime.SdkResult<ListStreamsOutputResponse, ListStreamsOutputError>) -> Void)
```

### `listTagsForResource(input:completion:)`

Returns a list of tags associated with the specified signaling channel.

``` swift
public func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
```

### `listTagsForStream(input:completion:)`

Returns a list of tags associated with the specified stream. In the request, you must specify either the StreamName or the StreamARN.

``` swift
public func listTagsForStream(input: ListTagsForStreamInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForStreamOutputResponse, ListTagsForStreamOutputError>) -> Void)
```

### `tagResource(input:completion:)`

Adds one or more tags to a signaling channel. A tag is a key-value pair (the value is optional) that you can define and assign to AWS resources. If you specify a tag that already exists, the tag value is replaced with the value that you specify in the request. For more information, see [Using Cost Allocation Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html) in the AWS Billing and Cost Management User Guide.

``` swift
public func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
```

### `tagStream(input:completion:)`

Adds one or more tags to a stream. A tag is a key-value pair (the value is optional) that you can define and assign to AWS resources. If you specify a tag that already exists, the tag value is replaced with the value that you specify in the request. For more information, see [Using Cost Allocation Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html) in the AWS Billing and Cost Management User Guide. You must provide either the StreamName or the StreamARN. This operation requires permission for the KinesisVideo:TagStream action. Kinesis video streams support up to 50 tags.

``` swift
public func tagStream(input: TagStreamInput, completion: @escaping (ClientRuntime.SdkResult<TagStreamOutputResponse, TagStreamOutputError>) -> Void)
```

### `untagResource(input:completion:)`

Removes one or more tags from a signaling channel. In the request, specify only a tag key or keys; don't specify the value. If you specify a tag key that does not exist, it's ignored.

``` swift
public func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
```

### `untagStream(input:completion:)`

Removes one or more tags from a stream. In the request, specify only a tag key or keys; don't specify the value. If you specify a tag key that does not exist, it's ignored. In the request, you must provide the StreamName or StreamARN.

``` swift
public func untagStream(input: UntagStreamInput, completion: @escaping (ClientRuntime.SdkResult<UntagStreamOutputResponse, UntagStreamOutputError>) -> Void)
```

### `updateDataRetention(input:completion:)`

Increases or decreases the stream's data retention period by the value that you specify. To indicate whether you want to increase or decrease the data retention period, specify the Operation parameter in the request body. In the request, you must specify either the StreamName or the StreamARN. The retention period that you specify replaces the current value. This operation requires permission for the KinesisVideo:UpdateDataRetention action. Changing the data retention period affects the data in the stream as follows:

``` swift
public func updateDataRetention(input: UpdateDataRetentionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateDataRetentionOutputResponse, UpdateDataRetentionOutputError>) -> Void)
```

  - If the data retention period is increased, existing data is retained for the new retention period. For example, if the data retention period is increased from one hour to seven hours, all existing data is retained for seven hours.

  - If the data retention period is decreased, existing data is retained for the new retention period. For example, if the data retention period is decreased from seven hours to one hour, all existing data is retained for one hour, and any data older than one hour is deleted immediately.

### `updateSignalingChannel(input:completion:)`

Updates the existing signaling channel. This is an asynchronous operation and takes time to complete. If the MessageTtlSeconds value is updated (either increased or reduced), it only applies to new messages sent via this channel after it's been updated. Existing messages are still expired as per the previous MessageTtlSeconds value.

``` swift
public func updateSignalingChannel(input: UpdateSignalingChannelInput, completion: @escaping (ClientRuntime.SdkResult<UpdateSignalingChannelOutputResponse, UpdateSignalingChannelOutputError>) -> Void)
```

### `updateStream(input:completion:)`

Updates stream metadata, such as the device name and media type. You must provide the stream name or the Amazon Resource Name (ARN) of the stream. To make sure that you have the latest version of the stream before updating it, you can specify the stream version. Kinesis Video Streams assigns a version to each stream. When you update a stream, Kinesis Video Streams assigns a new version number. To get the latest stream version, use the DescribeStream API. UpdateStream is an asynchronous operation, and takes time to complete.

``` swift
public func updateStream(input: UpdateStreamInput, completion: @escaping (ClientRuntime.SdkResult<UpdateStreamOutputResponse, UpdateStreamOutputError>) -> Void)
```