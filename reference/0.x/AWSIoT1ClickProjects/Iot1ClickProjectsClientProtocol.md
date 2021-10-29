# Iot1ClickProjectsClientProtocol

The AWS IoT 1-Click Projects API Reference

``` swift
public protocol Iot1ClickProjectsClientProtocol 
```

## Requirements

### associateDeviceWithPlacement(input:completion:)

Associates a physical device with a placement.

``` swift
func associateDeviceWithPlacement(input: AssociateDeviceWithPlacementInput, completion: @escaping (ClientRuntime.SdkResult<AssociateDeviceWithPlacementOutputResponse, AssociateDeviceWithPlacementOutputError>) -> Void)
```

### createPlacement(input:completion:)

Creates an empty placement.

``` swift
func createPlacement(input: CreatePlacementInput, completion: @escaping (ClientRuntime.SdkResult<CreatePlacementOutputResponse, CreatePlacementOutputError>) -> Void)
```

### createProject(input:completion:)

Creates an empty project with a placement template. A project contains zero or more placements that adhere to the placement template defined in the project.

``` swift
func createProject(input: CreateProjectInput, completion: @escaping (ClientRuntime.SdkResult<CreateProjectOutputResponse, CreateProjectOutputError>) -> Void)
```

### deletePlacement(input:completion:)

Deletes a placement. To delete a placement, it must not have any devices associated with it. When you delete a placement, all associated data becomes irretrievable.

``` swift
func deletePlacement(input: DeletePlacementInput, completion: @escaping (ClientRuntime.SdkResult<DeletePlacementOutputResponse, DeletePlacementOutputError>) -> Void)
```

### deleteProject(input:completion:)

Deletes a project. To delete a project, it must not have any placements associated with it. When you delete a project, all associated data becomes irretrievable.

``` swift
func deleteProject(input: DeleteProjectInput, completion: @escaping (ClientRuntime.SdkResult<DeleteProjectOutputResponse, DeleteProjectOutputError>) -> Void)
```

### describePlacement(input:completion:)

Describes a placement in a project.

``` swift
func describePlacement(input: DescribePlacementInput, completion: @escaping (ClientRuntime.SdkResult<DescribePlacementOutputResponse, DescribePlacementOutputError>) -> Void)
```

### describeProject(input:completion:)

Returns an object describing a project.

``` swift
func describeProject(input: DescribeProjectInput, completion: @escaping (ClientRuntime.SdkResult<DescribeProjectOutputResponse, DescribeProjectOutputError>) -> Void)
```

### disassociateDeviceFromPlacement(input:completion:)

Removes a physical device from a placement.

``` swift
func disassociateDeviceFromPlacement(input: DisassociateDeviceFromPlacementInput, completion: @escaping (ClientRuntime.SdkResult<DisassociateDeviceFromPlacementOutputResponse, DisassociateDeviceFromPlacementOutputError>) -> Void)
```

### getDevicesInPlacement(input:completion:)

Returns an object enumerating the devices in a placement.

``` swift
func getDevicesInPlacement(input: GetDevicesInPlacementInput, completion: @escaping (ClientRuntime.SdkResult<GetDevicesInPlacementOutputResponse, GetDevicesInPlacementOutputError>) -> Void)
```

### listPlacements(input:completion:)

Lists the placement(s) of a project.

``` swift
func listPlacements(input: ListPlacementsInput, completion: @escaping (ClientRuntime.SdkResult<ListPlacementsOutputResponse, ListPlacementsOutputError>) -> Void)
```

### listProjects(input:completion:)

Lists the AWS IoT 1-Click project(s) associated with your AWS account and region.

``` swift
func listProjects(input: ListProjectsInput, completion: @escaping (ClientRuntime.SdkResult<ListProjectsOutputResponse, ListProjectsOutputError>) -> Void)
```

### listTagsForResource(input:completion:)

Lists the tags (metadata key/value pairs) which you have assigned to the resource.

``` swift
func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
```

### tagResource(input:completion:)

Creates or modifies tags for a resource. Tags are key/value pairs (metadata) that can be used to manage a resource. For more information, see [AWS Tagging Strategies](https://aws.amazon.com/answers/account-management/aws-tagging-strategies/).

``` swift
func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
```

### untagResource(input:completion:)

Removes one or more tags (metadata key/value pairs) from a resource.

``` swift
func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
```

### updatePlacement(input:completion:)

Updates a placement with the given attributes. To clear an attribute, pass an empty value (i.e., "").

``` swift
func updatePlacement(input: UpdatePlacementInput, completion: @escaping (ClientRuntime.SdkResult<UpdatePlacementOutputResponse, UpdatePlacementOutputError>) -> Void)
```

### updateProject(input:completion:)

Updates a project associated with your AWS account and region. With the exception of device template names, you can pass just the values that need to be updated because the update request will change only the values that are provided. To clear a value, pass the empty string (i.e., "").

``` swift
func updateProject(input: UpdateProjectInput, completion: @escaping (ClientRuntime.SdkResult<UpdateProjectOutputResponse, UpdateProjectOutputError>) -> Void)
```