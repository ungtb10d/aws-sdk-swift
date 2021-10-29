# QldbSessionClient

``` swift
public class QldbSessionClient 
```

## Inheritance

[`QldbSessionClientProtocol`](/aws-sdk-swift/reference/0.x/AWSQLDBSession/QldbSessionClientProtocol)

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
public static let clientName = "QldbSessionClient"
```

## Methods

### `sendCommand(input:completion:)`

Sends a command to an Amazon QLDB ledger. Instead of interacting directly with this API, we recommend using the QLDB driver or the QLDB shell to execute data transactions on a ledger.

``` swift
public func sendCommand(input: SendCommandInput, completion: @escaping (ClientRuntime.SdkResult<SendCommandOutputResponse, SendCommandOutputError>) -> Void)
```

  - If you are working with an AWS SDK, use the QLDB driver. The driver provides a high-level abstraction layer above this QLDB Session data plane and manages SendCommand API calls for you. For information and a list of supported programming languages, see [Getting started with the driver](https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-driver.html) in the Amazon QLDB Developer Guide.

  - If you are working with the AWS Command Line Interface (AWS CLI), use the QLDB shell. The shell is a command line interface that uses the QLDB driver to interact with a ledger. For information, see [Accessing Amazon QLDB using the QLDB shell](https://docs.aws.amazon.com/qldb/latest/developerguide/data-shell.html).