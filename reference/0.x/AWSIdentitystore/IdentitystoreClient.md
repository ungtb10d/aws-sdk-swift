# IdentitystoreClient

``` swift
public class IdentitystoreClient 
```

## Inheritance

[`IdentitystoreClientProtocol`](/aws-sdk-swift/reference/0.x/AWSIdentitystore/IdentitystoreClientProtocol)

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
public static let clientName = "IdentitystoreClient"
```

## Methods

### `describeGroup(input:completion:)`

Retrieves the group metadata and attributes from GroupId in an identity store.

``` swift
public func describeGroup(input: DescribeGroupInput, completion: @escaping (ClientRuntime.SdkResult<DescribeGroupOutputResponse, DescribeGroupOutputError>) -> Void)
```

### `describeUser(input:completion:)`

Retrieves the user metadata and attributes from UserId in an identity store.

``` swift
public func describeUser(input: DescribeUserInput, completion: @escaping (ClientRuntime.SdkResult<DescribeUserOutputResponse, DescribeUserOutputError>) -> Void)
```

### `listGroups(input:completion:)`

Lists the attribute name and value of the group that you specified in the search. We only support DisplayName as a valid filter attribute path currently, and filter is required. This API returns minimum attributes, including GroupId and group DisplayName in the response.

``` swift
public func listGroups(input: ListGroupsInput, completion: @escaping (ClientRuntime.SdkResult<ListGroupsOutputResponse, ListGroupsOutputError>) -> Void)
```

### `listUsers(input:completion:)`

Lists the attribute name and value of the user that you specified in the search. We only support UserName as a valid filter attribute path currently, and filter is required. This API returns minimum attributes, including UserId and UserName in the response.

``` swift
public func listUsers(input: ListUsersInput, completion: @escaping (ClientRuntime.SdkResult<ListUsersOutputResponse, ListUsersOutputError>) -> Void)
```