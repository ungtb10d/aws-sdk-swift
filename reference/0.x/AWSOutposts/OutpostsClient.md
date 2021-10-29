# OutpostsClient

``` swift
public class OutpostsClient 
```

## Inheritance

[`OutpostsClientProtocol`](/aws-sdk-swift/reference/0.x/AWSOutposts/OutpostsClientProtocol)

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
public static let clientName = "OutpostsClient"
```

## Methods

### `createOrder(input:completion:)`

Creates an order for an Outpost.

``` swift
public func createOrder(input: CreateOrderInput, completion: @escaping (ClientRuntime.SdkResult<CreateOrderOutputResponse, CreateOrderOutputError>) -> Void)
```

### `createOutpost(input:completion:)`

Creates an Outpost. You can specify AvailabilityZone or AvailabilityZoneId.

``` swift
public func createOutpost(input: CreateOutpostInput, completion: @escaping (ClientRuntime.SdkResult<CreateOutpostOutputResponse, CreateOutpostOutputError>) -> Void)
```

### `deleteOutpost(input:completion:)`

Deletes the Outpost.

``` swift
public func deleteOutpost(input: DeleteOutpostInput, completion: @escaping (ClientRuntime.SdkResult<DeleteOutpostOutputResponse, DeleteOutpostOutputError>) -> Void)
```

### `deleteSite(input:completion:)`

Deletes the site.

``` swift
public func deleteSite(input: DeleteSiteInput, completion: @escaping (ClientRuntime.SdkResult<DeleteSiteOutputResponse, DeleteSiteOutputError>) -> Void)
```

### `getOutpost(input:completion:)`

Gets information about the specified Outpost.

``` swift
public func getOutpost(input: GetOutpostInput, completion: @escaping (ClientRuntime.SdkResult<GetOutpostOutputResponse, GetOutpostOutputError>) -> Void)
```

### `getOutpostInstanceTypes(input:completion:)`

Lists the instance types for the specified Outpost.

``` swift
public func getOutpostInstanceTypes(input: GetOutpostInstanceTypesInput, completion: @escaping (ClientRuntime.SdkResult<GetOutpostInstanceTypesOutputResponse, GetOutpostInstanceTypesOutputError>) -> Void)
```

### `listOutposts(input:completion:)`

Create a list of the Outposts for your AWS account. Add filters to your request to return a more specific list of results. Use filters to match an Outpost lifecycle status, Availibility Zone (us-east-1a), and AZ ID (use1-az1). If you specify multiple filters, the filters are joined with an AND, and the request returns only results that match all of the specified filters.

``` swift
public func listOutposts(input: ListOutpostsInput, completion: @escaping (ClientRuntime.SdkResult<ListOutpostsOutputResponse, ListOutpostsOutputError>) -> Void)
```

### `listSites(input:completion:)`

Lists the sites for the specified AWS account.

``` swift
public func listSites(input: ListSitesInput, completion: @escaping (ClientRuntime.SdkResult<ListSitesOutputResponse, ListSitesOutputError>) -> Void)
```

### `listTagsForResource(input:completion:)`

Lists the tags for the specified resource.

``` swift
public func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
```

### `tagResource(input:completion:)`

Adds tags to the specified resource.

``` swift
public func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
```

### `untagResource(input:completion:)`

Removes tags from the specified resource.

``` swift
public func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
```