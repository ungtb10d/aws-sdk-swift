# DataSyncClientProtocol

DataSync DataSync is a managed data transfer service that makes it simpler for you to automate moving data between on-premises storage and Amazon Simple Storage Service (Amazon S3) or Amazon Elastic File System (Amazon EFS). This API interface reference for DataSync contains documentation for a programming interface that you can use to manage DataSync.

``` swift
public protocol DataSyncClientProtocol 
```

## Requirements

### cancelTaskExecution(input:completion:)

Cancels execution of a task. When you cancel a task execution, the transfer of some files is abruptly interrupted. The contents of files that are transferred to the destination might be incomplete or inconsistent with the source files. However, if you start a new task execution on the same task and you allow the task execution to complete, file content on the destination is complete and consistent. This applies to other unexpected failures that interrupt a task execution. In all of these cases, DataSync successfully complete the transfer when you start the next task execution.

``` swift
func cancelTaskExecution(input: CancelTaskExecutionInput, completion: @escaping (ClientRuntime.SdkResult<CancelTaskExecutionOutputResponse, CancelTaskExecutionOutputError>) -> Void)
```

### createAgent(input:completion:)

Activates an DataSync agent that you have deployed on your host. The activation process associates your agent with your account. In the activation process, you specify information such as the Amazon Web Services Region that you want to activate the agent in. You activate the agent in the Amazon Web Services Region where your target locations (in Amazon S3 or Amazon EFS) reside. Your tasks are created in this Amazon Web Services Region. You can activate the agent in a VPC (virtual private cloud) or provide the agent access to a VPC endpoint so you can run tasks without going over the public internet. You can use an agent for more than one location. If a task uses multiple agents, all of them need to have status AVAILABLE for the task to run. If you use multiple agents for a source location, the status of all the agents must be AVAILABLE for the task to run. Agents are automatically updated by Amazon Web Services on a regular basis, using a mechanism that ensures minimal interruption to your tasks.

``` swift
func createAgent(input: CreateAgentInput, completion: @escaping (ClientRuntime.SdkResult<CreateAgentOutputResponse, CreateAgentOutputError>) -> Void)
```

### createLocationEfs(input:completion:)

Creates an endpoint for an Amazon EFS file system.

``` swift
func createLocationEfs(input: CreateLocationEfsInput, completion: @escaping (ClientRuntime.SdkResult<CreateLocationEfsOutputResponse, CreateLocationEfsOutputError>) -> Void)
```

### createLocationFsxWindows(input:completion:)

Creates an endpoint for an Amazon FSx for Windows File Server file system.

``` swift
func createLocationFsxWindows(input: CreateLocationFsxWindowsInput, completion: @escaping (ClientRuntime.SdkResult<CreateLocationFsxWindowsOutputResponse, CreateLocationFsxWindowsOutputError>) -> Void)
```

### createLocationNfs(input:completion:)

Defines a file system on a Network File System (NFS) server that can be read from or written to.

``` swift
func createLocationNfs(input: CreateLocationNfsInput, completion: @escaping (ClientRuntime.SdkResult<CreateLocationNfsOutputResponse, CreateLocationNfsOutputError>) -> Void)
```

### createLocationObjectStorage(input:completion:)

Creates an endpoint for a self-managed object storage bucket. For more information about self-managed object storage locations, see [Creating a location for object storage](https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html).

``` swift
func createLocationObjectStorage(input: CreateLocationObjectStorageInput, completion: @escaping (ClientRuntime.SdkResult<CreateLocationObjectStorageOutputResponse, CreateLocationObjectStorageOutputError>) -> Void)
```

### createLocationS3(input:completion:)

Creates an endpoint for an Amazon S3 bucket. For more information, see [Create an Amazon S3 location](https://docs.aws.amazon.com/datasync/latest/userguide/create-locations-cli.html#create-location-s3-cli) in the DataSync User Guide.

``` swift
func createLocationS3(input: CreateLocationS3Input, completion: @escaping (ClientRuntime.SdkResult<CreateLocationS3OutputResponse, CreateLocationS3OutputError>) -> Void)
```

### createLocationSmb(input:completion:)

Defines a file system on a Server Message Block (SMB) server that can be read from or written to.

``` swift
func createLocationSmb(input: CreateLocationSmbInput, completion: @escaping (ClientRuntime.SdkResult<CreateLocationSmbOutputResponse, CreateLocationSmbOutputError>) -> Void)
```

### createTask(input:completion:)

Creates a task. A task includes a source location and a destination location, and a configuration that specifies how data is transferred. A task always transfers data from the source location to the destination location. The configuration specifies options such as task scheduling, bandwidth limits, etc. A task is the complete definition of a data transfer. When you create a task that transfers data between Amazon Web Services services in different Amazon Web Services Regions, one of the two locations that you specify must reside in the Region where DataSync is being used. The other location must be specified in a different Region. You can transfer data between commercial Amazon Web Services Regions except for China, or between Amazon Web Services GovCloud (US) Regions. When you use DataSync to copy files or objects between Amazon Web Services Regions, you pay for data transfer between Regions. This is billed as data transfer OUT from your source Region to your destination Region. For more information, see [Data Transfer pricing](http://aws.amazon.com/ec2/pricing/on-demand/#Data_Transfer).

``` swift
func createTask(input: CreateTaskInput, completion: @escaping (ClientRuntime.SdkResult<CreateTaskOutputResponse, CreateTaskOutputError>) -> Void)
```

### deleteAgent(input:completion:)

Deletes an agent. To specify which agent to delete, use the Amazon Resource Name (ARN) of the agent in your request. The operation disassociates the agent from your Amazon Web Services account. However, it doesn't delete the agent virtual machine (VM) from your on-premises environment.

``` swift
func deleteAgent(input: DeleteAgentInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAgentOutputResponse, DeleteAgentOutputError>) -> Void)
```

### deleteLocation(input:completion:)

Deletes the configuration of a location used by DataSync.

``` swift
func deleteLocation(input: DeleteLocationInput, completion: @escaping (ClientRuntime.SdkResult<DeleteLocationOutputResponse, DeleteLocationOutputError>) -> Void)
```

### deleteTask(input:completion:)

Deletes a task.

``` swift
func deleteTask(input: DeleteTaskInput, completion: @escaping (ClientRuntime.SdkResult<DeleteTaskOutputResponse, DeleteTaskOutputError>) -> Void)
```

### describeAgent(input:completion:)

Returns metadata such as the name, the network interfaces, and the status (that is, whether the agent is running or not) for an agent. To specify which agent to describe, use the Amazon Resource Name (ARN) of the agent in your request.

``` swift
func describeAgent(input: DescribeAgentInput, completion: @escaping (ClientRuntime.SdkResult<DescribeAgentOutputResponse, DescribeAgentOutputError>) -> Void)
```

### describeLocationEfs(input:completion:)

Returns metadata, such as the path information about an Amazon EFS location.

``` swift
func describeLocationEfs(input: DescribeLocationEfsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeLocationEfsOutputResponse, DescribeLocationEfsOutputError>) -> Void)
```

### describeLocationFsxWindows(input:completion:)

Returns metadata, such as the path information about an Amazon FSx for Windows File Server location.

``` swift
func describeLocationFsxWindows(input: DescribeLocationFsxWindowsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeLocationFsxWindowsOutputResponse, DescribeLocationFsxWindowsOutputError>) -> Void)
```

### describeLocationNfs(input:completion:)

Returns metadata, such as the path information, about an NFS location.

``` swift
func describeLocationNfs(input: DescribeLocationNfsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeLocationNfsOutputResponse, DescribeLocationNfsOutputError>) -> Void)
```

### describeLocationObjectStorage(input:completion:)

Returns metadata about a self-managed object storage server location. For more information about self-managed object storage locations, see [Creating a location for object storage](https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html).

``` swift
func describeLocationObjectStorage(input: DescribeLocationObjectStorageInput, completion: @escaping (ClientRuntime.SdkResult<DescribeLocationObjectStorageOutputResponse, DescribeLocationObjectStorageOutputError>) -> Void)
```

### describeLocationS3(input:completion:)

Returns metadata, such as bucket name, about an Amazon S3 bucket location.

``` swift
func describeLocationS3(input: DescribeLocationS3Input, completion: @escaping (ClientRuntime.SdkResult<DescribeLocationS3OutputResponse, DescribeLocationS3OutputError>) -> Void)
```

### describeLocationSmb(input:completion:)

Returns metadata, such as the path and user information about an SMB location.

``` swift
func describeLocationSmb(input: DescribeLocationSmbInput, completion: @escaping (ClientRuntime.SdkResult<DescribeLocationSmbOutputResponse, DescribeLocationSmbOutputError>) -> Void)
```

### describeTask(input:completion:)

Returns metadata about a task.

``` swift
func describeTask(input: DescribeTaskInput, completion: @escaping (ClientRuntime.SdkResult<DescribeTaskOutputResponse, DescribeTaskOutputError>) -> Void)
```

### describeTaskExecution(input:completion:)

Returns detailed metadata about a task that is being executed.

``` swift
func describeTaskExecution(input: DescribeTaskExecutionInput, completion: @escaping (ClientRuntime.SdkResult<DescribeTaskExecutionOutputResponse, DescribeTaskExecutionOutputError>) -> Void)
```

### listAgents(input:completion:)

Returns a list of agents owned by an Amazon Web Services account in the Amazon Web Services Region specified in the request. The returned list is ordered by agent Amazon Resource Name (ARN). By default, this operation returns a maximum of 100 agents. This operation supports pagination that enables you to optionally reduce the number of agents returned in a response. If you have more agents than are returned in a response (that is, the response returns only a truncated list of your agents), the response contains a marker that you can specify in your next request to fetch the next page of agents.

``` swift
func listAgents(input: ListAgentsInput, completion: @escaping (ClientRuntime.SdkResult<ListAgentsOutputResponse, ListAgentsOutputError>) -> Void)
```

### listLocations(input:completion:)

Returns a list of source and destination locations. If you have more locations than are returned in a response (that is, the response returns only a truncated list of your agents), the response contains a token that you can specify in your next request to fetch the next page of locations.

``` swift
func listLocations(input: ListLocationsInput, completion: @escaping (ClientRuntime.SdkResult<ListLocationsOutputResponse, ListLocationsOutputError>) -> Void)
```

### listTagsForResource(input:completion:)

Returns all the tags associated with a specified resource.

``` swift
func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
```

### listTaskExecutions(input:completion:)

Returns a list of executed tasks.

``` swift
func listTaskExecutions(input: ListTaskExecutionsInput, completion: @escaping (ClientRuntime.SdkResult<ListTaskExecutionsOutputResponse, ListTaskExecutionsOutputError>) -> Void)
```

### listTasks(input:completion:)

Returns a list of all the tasks.

``` swift
func listTasks(input: ListTasksInput, completion: @escaping (ClientRuntime.SdkResult<ListTasksOutputResponse, ListTasksOutputError>) -> Void)
```

### startTaskExecution(input:completion:)

Starts a specific invocation of a task. A TaskExecution value represents an individual run of a task. Each task can have at most one TaskExecution at a time. TaskExecution has the following transition phases: INITIALIZING | PREPARING | TRANSFERRING | VERIFYING | SUCCESS/FAILURE. For detailed information, see the Task Execution section in the Components and Terminology topic in the DataSync User Guide.

``` swift
func startTaskExecution(input: StartTaskExecutionInput, completion: @escaping (ClientRuntime.SdkResult<StartTaskExecutionOutputResponse, StartTaskExecutionOutputError>) -> Void)
```

### tagResource(input:completion:)

Applies a key-value pair to an Amazon Web Services resource.

``` swift
func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
```

### untagResource(input:completion:)

Removes a tag from an Amazon Web Services resource.

``` swift
func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
```

### updateAgent(input:completion:)

Updates the name of an agent.

``` swift
func updateAgent(input: UpdateAgentInput, completion: @escaping (ClientRuntime.SdkResult<UpdateAgentOutputResponse, UpdateAgentOutputError>) -> Void)
```

### updateLocationNfs(input:completion:)

Updates some of the parameters of a previously created location for Network File System (NFS) access. For information about creating an NFS location, see [Creating a location for NFS](https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html).

``` swift
func updateLocationNfs(input: UpdateLocationNfsInput, completion: @escaping (ClientRuntime.SdkResult<UpdateLocationNfsOutputResponse, UpdateLocationNfsOutputError>) -> Void)
```

### updateLocationObjectStorage(input:completion:)

Updates some of the parameters of a previously created location for self-managed object storage server access. For information about creating a self-managed object storage location, see [Creating a location for object storage](https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html).

``` swift
func updateLocationObjectStorage(input: UpdateLocationObjectStorageInput, completion: @escaping (ClientRuntime.SdkResult<UpdateLocationObjectStorageOutputResponse, UpdateLocationObjectStorageOutputError>) -> Void)
```

### updateLocationSmb(input:completion:)

Updates some of the parameters of a previously created location for Server Message Block (SMB) file system access. For information about creating an SMB location, see [Creating a location for SMB](https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html).

``` swift
func updateLocationSmb(input: UpdateLocationSmbInput, completion: @escaping (ClientRuntime.SdkResult<UpdateLocationSmbOutputResponse, UpdateLocationSmbOutputError>) -> Void)
```

### updateTask(input:completion:)

Updates the metadata associated with a task.

``` swift
func updateTask(input: UpdateTaskInput, completion: @escaping (ClientRuntime.SdkResult<UpdateTaskOutputResponse, UpdateTaskOutputError>) -> Void)
```

### updateTaskExecution(input:completion:)

Updates execution of a task. You can modify bandwidth throttling for a task execution that is running or queued. For more information, see [Adjusting Bandwidth Throttling for a Task Execution](https://docs.aws.amazon.com/datasync/latest/userguide/working-with-task-executions.html#adjust-bandwidth-throttling). The only Option that can be modified by UpdateTaskExecution is [BytesPerSecond](https://docs.aws.amazon.com/datasync/latest/userguide/API_Options.html#DataSync-Type-Options-BytesPerSecond).

``` swift
func updateTaskExecution(input: UpdateTaskExecutionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateTaskExecutionOutputResponse, UpdateTaskExecutionOutputError>) -> Void)
```