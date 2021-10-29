# WorkMailMessageFlowClient

``` swift
public class WorkMailMessageFlowClient 
```

## Inheritance

[`WorkMailMessageFlowClientProtocol`](/aws-sdk-swift/reference/0.x/AWSWorkMailMessageFlow/WorkMailMessageFlowClientProtocol)

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
public static let clientName = "WorkMailMessageFlowClient"
```

## Methods

### `getRawMessageContent(input:completion:)`

Retrieves the raw content of an in-transit email message, in MIME format.

``` swift
public func getRawMessageContent(input: GetRawMessageContentInput, completion: @escaping (ClientRuntime.SdkResult<GetRawMessageContentOutputResponse, GetRawMessageContentOutputError>) -> Void)
```

### `putRawMessageContent(input:completion:)`

Updates the raw content of an in-transit email message, in MIME format. This example describes how to update in-transit email message. For more information and examples for using this API, see [ Updating message content with AWS Lambda](https://docs.aws.amazon.com/workmail/latest/adminguide/update-with-lambda.html). Updates to an in-transit message only appear when you call PutRawMessageContent from an AWS Lambda function configured with a synchronous [ Run Lambda](https://docs.aws.amazon.com/workmail/latest/adminguide/lambda.html#synchronous-rules) rule. If you call PutRawMessageContent on a delivered or sent message, the message remains unchanged, even though [GetRawMessageContent](https://docs.aws.amazon.com/workmail/latest/APIReference/API_messageflow_GetRawMessageContent.html) returns an updated message.

``` swift
public func putRawMessageContent(input: PutRawMessageContentInput, completion: @escaping (ClientRuntime.SdkResult<PutRawMessageContentOutputResponse, PutRawMessageContentOutputError>) -> Void)
```