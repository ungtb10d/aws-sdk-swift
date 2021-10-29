# DeviceFarmClient

``` swift
public class DeviceFarmClient 
```

## Inheritance

[`DeviceFarmClientProtocol`](/aws-sdk-swift/reference/0.x/AWSDeviceFarm/DeviceFarmClientProtocol)

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
public static let clientName = "DeviceFarmClient"
```

## Methods

### `createDevicePool(input:completion:)`

Creates a device pool.

``` swift
public func createDevicePool(input: CreateDevicePoolInput, completion: @escaping (ClientRuntime.SdkResult<CreateDevicePoolOutputResponse, CreateDevicePoolOutputError>) -> Void)
```

### `createInstanceProfile(input:completion:)`

Creates a profile that can be applied to one or more private fleet device instances.

``` swift
public func createInstanceProfile(input: CreateInstanceProfileInput, completion: @escaping (ClientRuntime.SdkResult<CreateInstanceProfileOutputResponse, CreateInstanceProfileOutputError>) -> Void)
```

### `createNetworkProfile(input:completion:)`

Creates a network profile.

``` swift
public func createNetworkProfile(input: CreateNetworkProfileInput, completion: @escaping (ClientRuntime.SdkResult<CreateNetworkProfileOutputResponse, CreateNetworkProfileOutputError>) -> Void)
```

### `createProject(input:completion:)`

Creates a project.

``` swift
public func createProject(input: CreateProjectInput, completion: @escaping (ClientRuntime.SdkResult<CreateProjectOutputResponse, CreateProjectOutputError>) -> Void)
```

### `createRemoteAccessSession(input:completion:)`

Specifies and starts a remote access session.

``` swift
public func createRemoteAccessSession(input: CreateRemoteAccessSessionInput, completion: @escaping (ClientRuntime.SdkResult<CreateRemoteAccessSessionOutputResponse, CreateRemoteAccessSessionOutputError>) -> Void)
```

### `createTestGridProject(input:completion:)`

Creates a Selenium testing project. Projects are used to track \[TestGridSession\] instances.

``` swift
public func createTestGridProject(input: CreateTestGridProjectInput, completion: @escaping (ClientRuntime.SdkResult<CreateTestGridProjectOutputResponse, CreateTestGridProjectOutputError>) -> Void)
```

### `createTestGridUrl(input:completion:)`

Creates a signed, short-term URL that can be passed to a Selenium RemoteWebDriver constructor.

``` swift
public func createTestGridUrl(input: CreateTestGridUrlInput, completion: @escaping (ClientRuntime.SdkResult<CreateTestGridUrlOutputResponse, CreateTestGridUrlOutputError>) -> Void)
```

### `createUpload(input:completion:)`

Uploads an app or test scripts.

``` swift
public func createUpload(input: CreateUploadInput, completion: @escaping (ClientRuntime.SdkResult<CreateUploadOutputResponse, CreateUploadOutputError>) -> Void)
```

### `createVPCEConfiguration(input:completion:)`

Creates a configuration record in Device Farm for your Amazon Virtual Private Cloud (VPC) endpoint.

``` swift
public func createVPCEConfiguration(input: CreateVPCEConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<CreateVPCEConfigurationOutputResponse, CreateVPCEConfigurationOutputError>) -> Void)
```

### `deleteDevicePool(input:completion:)`

Deletes a device pool given the pool ARN. Does not allow deletion of curated pools owned by the system.

``` swift
public func deleteDevicePool(input: DeleteDevicePoolInput, completion: @escaping (ClientRuntime.SdkResult<DeleteDevicePoolOutputResponse, DeleteDevicePoolOutputError>) -> Void)
```

### `deleteInstanceProfile(input:completion:)`

Deletes a profile that can be applied to one or more private device instances.

``` swift
public func deleteInstanceProfile(input: DeleteInstanceProfileInput, completion: @escaping (ClientRuntime.SdkResult<DeleteInstanceProfileOutputResponse, DeleteInstanceProfileOutputError>) -> Void)
```

### `deleteNetworkProfile(input:completion:)`

Deletes a network profile.

``` swift
public func deleteNetworkProfile(input: DeleteNetworkProfileInput, completion: @escaping (ClientRuntime.SdkResult<DeleteNetworkProfileOutputResponse, DeleteNetworkProfileOutputError>) -> Void)
```

### `deleteProject(input:completion:)`

Deletes an AWS Device Farm project, given the project ARN. Deleting this resource does not stop an in-progress run.

``` swift
public func deleteProject(input: DeleteProjectInput, completion: @escaping (ClientRuntime.SdkResult<DeleteProjectOutputResponse, DeleteProjectOutputError>) -> Void)
```

### `deleteRemoteAccessSession(input:completion:)`

Deletes a completed remote access session and its results.

``` swift
public func deleteRemoteAccessSession(input: DeleteRemoteAccessSessionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteRemoteAccessSessionOutputResponse, DeleteRemoteAccessSessionOutputError>) -> Void)
```

### `deleteRun(input:completion:)`

Deletes the run, given the run ARN. Deleting this resource does not stop an in-progress run.

``` swift
public func deleteRun(input: DeleteRunInput, completion: @escaping (ClientRuntime.SdkResult<DeleteRunOutputResponse, DeleteRunOutputError>) -> Void)
```

### `deleteTestGridProject(input:completion:)`

Deletes a Selenium testing project and all content generated under it. You cannot undo this operation. You cannot delete a project if it has active sessions.

``` swift
public func deleteTestGridProject(input: DeleteTestGridProjectInput, completion: @escaping (ClientRuntime.SdkResult<DeleteTestGridProjectOutputResponse, DeleteTestGridProjectOutputError>) -> Void)
```

### `deleteUpload(input:completion:)`

Deletes an upload given the upload ARN.

``` swift
public func deleteUpload(input: DeleteUploadInput, completion: @escaping (ClientRuntime.SdkResult<DeleteUploadOutputResponse, DeleteUploadOutputError>) -> Void)
```

### `deleteVPCEConfiguration(input:completion:)`

Deletes a configuration for your Amazon Virtual Private Cloud (VPC) endpoint.

``` swift
public func deleteVPCEConfiguration(input: DeleteVPCEConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<DeleteVPCEConfigurationOutputResponse, DeleteVPCEConfigurationOutputError>) -> Void)
```

### `getAccountSettings(input:completion:)`

Returns the number of unmetered iOS or unmetered Android devices that have been purchased by the account.

``` swift
public func getAccountSettings(input: GetAccountSettingsInput, completion: @escaping (ClientRuntime.SdkResult<GetAccountSettingsOutputResponse, GetAccountSettingsOutputError>) -> Void)
```

### `getDevice(input:completion:)`

Gets information about a unique device type.

``` swift
public func getDevice(input: GetDeviceInput, completion: @escaping (ClientRuntime.SdkResult<GetDeviceOutputResponse, GetDeviceOutputError>) -> Void)
```

### `getDeviceInstance(input:completion:)`

Returns information about a device instance that belongs to a private device fleet.

``` swift
public func getDeviceInstance(input: GetDeviceInstanceInput, completion: @escaping (ClientRuntime.SdkResult<GetDeviceInstanceOutputResponse, GetDeviceInstanceOutputError>) -> Void)
```

### `getDevicePool(input:completion:)`

Gets information about a device pool.

``` swift
public func getDevicePool(input: GetDevicePoolInput, completion: @escaping (ClientRuntime.SdkResult<GetDevicePoolOutputResponse, GetDevicePoolOutputError>) -> Void)
```

### `getDevicePoolCompatibility(input:completion:)`

Gets information about compatibility with a device pool.

``` swift
public func getDevicePoolCompatibility(input: GetDevicePoolCompatibilityInput, completion: @escaping (ClientRuntime.SdkResult<GetDevicePoolCompatibilityOutputResponse, GetDevicePoolCompatibilityOutputError>) -> Void)
```

### `getInstanceProfile(input:completion:)`

Returns information about the specified instance profile.

``` swift
public func getInstanceProfile(input: GetInstanceProfileInput, completion: @escaping (ClientRuntime.SdkResult<GetInstanceProfileOutputResponse, GetInstanceProfileOutputError>) -> Void)
```

### `getJob(input:completion:)`

Gets information about a job.

``` swift
public func getJob(input: GetJobInput, completion: @escaping (ClientRuntime.SdkResult<GetJobOutputResponse, GetJobOutputError>) -> Void)
```

### `getNetworkProfile(input:completion:)`

Returns information about a network profile.

``` swift
public func getNetworkProfile(input: GetNetworkProfileInput, completion: @escaping (ClientRuntime.SdkResult<GetNetworkProfileOutputResponse, GetNetworkProfileOutputError>) -> Void)
```

### `getOfferingStatus(input:completion:)`

Gets the current status and future status of all offerings purchased by an AWS account. The response indicates how many offerings are currently available and the offerings that will be available in the next period. The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact <aws-devicefarm-support@amazon.com>.

``` swift
public func getOfferingStatus(input: GetOfferingStatusInput, completion: @escaping (ClientRuntime.SdkResult<GetOfferingStatusOutputResponse, GetOfferingStatusOutputError>) -> Void)
```

### `getProject(input:completion:)`

Gets information about a project.

``` swift
public func getProject(input: GetProjectInput, completion: @escaping (ClientRuntime.SdkResult<GetProjectOutputResponse, GetProjectOutputError>) -> Void)
```

### `getRemoteAccessSession(input:completion:)`

Returns a link to a currently running remote access session.

``` swift
public func getRemoteAccessSession(input: GetRemoteAccessSessionInput, completion: @escaping (ClientRuntime.SdkResult<GetRemoteAccessSessionOutputResponse, GetRemoteAccessSessionOutputError>) -> Void)
```

### `getRun(input:completion:)`

Gets information about a run.

``` swift
public func getRun(input: GetRunInput, completion: @escaping (ClientRuntime.SdkResult<GetRunOutputResponse, GetRunOutputError>) -> Void)
```

### `getSuite(input:completion:)`

Gets information about a suite.

``` swift
public func getSuite(input: GetSuiteInput, completion: @escaping (ClientRuntime.SdkResult<GetSuiteOutputResponse, GetSuiteOutputError>) -> Void)
```

### `getTest(input:completion:)`

Gets information about a test.

``` swift
public func getTest(input: GetTestInput, completion: @escaping (ClientRuntime.SdkResult<GetTestOutputResponse, GetTestOutputError>) -> Void)
```

### `getTestGridProject(input:completion:)`

Retrieves information about a Selenium testing project.

``` swift
public func getTestGridProject(input: GetTestGridProjectInput, completion: @escaping (ClientRuntime.SdkResult<GetTestGridProjectOutputResponse, GetTestGridProjectOutputError>) -> Void)
```

### `getTestGridSession(input:completion:)`

A session is an instance of a browser created through a RemoteWebDriver with the URL from \[CreateTestGridUrlResult$url\]. You can use the following to look up sessions:

``` swift
public func getTestGridSession(input: GetTestGridSessionInput, completion: @escaping (ClientRuntime.SdkResult<GetTestGridSessionOutputResponse, GetTestGridSessionOutputError>) -> Void)
```

  - The session ARN (\[GetTestGridSessionRequest$sessionArn\]).

  - The project ARN and a session ID (\[GetTestGridSessionRequest$projectArn\] and \[GetTestGridSessionRequest$sessionId\]).

### `getUpload(input:completion:)`

Gets information about an upload.

``` swift
public func getUpload(input: GetUploadInput, completion: @escaping (ClientRuntime.SdkResult<GetUploadOutputResponse, GetUploadOutputError>) -> Void)
```

### `getVPCEConfiguration(input:completion:)`

Returns information about the configuration settings for your Amazon Virtual Private Cloud (VPC) endpoint.

``` swift
public func getVPCEConfiguration(input: GetVPCEConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<GetVPCEConfigurationOutputResponse, GetVPCEConfigurationOutputError>) -> Void)
```

### `installToRemoteAccessSession(input:completion:)`

Installs an application to the device in a remote access session. For Android applications, the file must be in .apk format. For iOS applications, the file must be in .ipa format.

``` swift
public func installToRemoteAccessSession(input: InstallToRemoteAccessSessionInput, completion: @escaping (ClientRuntime.SdkResult<InstallToRemoteAccessSessionOutputResponse, InstallToRemoteAccessSessionOutputError>) -> Void)
```

### `listArtifacts(input:completion:)`

Gets information about artifacts.

``` swift
public func listArtifacts(input: ListArtifactsInput, completion: @escaping (ClientRuntime.SdkResult<ListArtifactsOutputResponse, ListArtifactsOutputError>) -> Void)
```

### `listDeviceInstances(input:completion:)`

Returns information about the private device instances associated with one or more AWS accounts.

``` swift
public func listDeviceInstances(input: ListDeviceInstancesInput, completion: @escaping (ClientRuntime.SdkResult<ListDeviceInstancesOutputResponse, ListDeviceInstancesOutputError>) -> Void)
```

### `listDevicePools(input:completion:)`

Gets information about device pools.

``` swift
public func listDevicePools(input: ListDevicePoolsInput, completion: @escaping (ClientRuntime.SdkResult<ListDevicePoolsOutputResponse, ListDevicePoolsOutputError>) -> Void)
```

### `listDevices(input:completion:)`

Gets information about unique device types.

``` swift
public func listDevices(input: ListDevicesInput, completion: @escaping (ClientRuntime.SdkResult<ListDevicesOutputResponse, ListDevicesOutputError>) -> Void)
```

### `listInstanceProfiles(input:completion:)`

Returns information about all the instance profiles in an AWS account.

``` swift
public func listInstanceProfiles(input: ListInstanceProfilesInput, completion: @escaping (ClientRuntime.SdkResult<ListInstanceProfilesOutputResponse, ListInstanceProfilesOutputError>) -> Void)
```

### `listJobs(input:completion:)`

Gets information about jobs for a given test run.

``` swift
public func listJobs(input: ListJobsInput, completion: @escaping (ClientRuntime.SdkResult<ListJobsOutputResponse, ListJobsOutputError>) -> Void)
```

### `listNetworkProfiles(input:completion:)`

Returns the list of available network profiles.

``` swift
public func listNetworkProfiles(input: ListNetworkProfilesInput, completion: @escaping (ClientRuntime.SdkResult<ListNetworkProfilesOutputResponse, ListNetworkProfilesOutputError>) -> Void)
```

### `listOfferingPromotions(input:completion:)`

Returns a list of offering promotions. Each offering promotion record contains the ID and description of the promotion. The API returns a NotEligible error if the caller is not permitted to invoke the operation. Contact <aws-devicefarm-support@amazon.com> if you must be able to invoke this operation.

``` swift
public func listOfferingPromotions(input: ListOfferingPromotionsInput, completion: @escaping (ClientRuntime.SdkResult<ListOfferingPromotionsOutputResponse, ListOfferingPromotionsOutputError>) -> Void)
```

### `listOfferingTransactions(input:completion:)`

Returns a list of all historical purchases, renewals, and system renewal transactions for an AWS account. The list is paginated and ordered by a descending timestamp (most recent transactions are first). The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact <aws-devicefarm-support@amazon.com>.

``` swift
public func listOfferingTransactions(input: ListOfferingTransactionsInput, completion: @escaping (ClientRuntime.SdkResult<ListOfferingTransactionsOutputResponse, ListOfferingTransactionsOutputError>) -> Void)
```

### `listOfferings(input:completion:)`

Returns a list of products or offerings that the user can manage through the API. Each offering record indicates the recurring price per unit and the frequency for that offering. The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact <aws-devicefarm-support@amazon.com>.

``` swift
public func listOfferings(input: ListOfferingsInput, completion: @escaping (ClientRuntime.SdkResult<ListOfferingsOutputResponse, ListOfferingsOutputError>) -> Void)
```

### `listProjects(input:completion:)`

Gets information about projects.

``` swift
public func listProjects(input: ListProjectsInput, completion: @escaping (ClientRuntime.SdkResult<ListProjectsOutputResponse, ListProjectsOutputError>) -> Void)
```

### `listRemoteAccessSessions(input:completion:)`

Returns a list of all currently running remote access sessions.

``` swift
public func listRemoteAccessSessions(input: ListRemoteAccessSessionsInput, completion: @escaping (ClientRuntime.SdkResult<ListRemoteAccessSessionsOutputResponse, ListRemoteAccessSessionsOutputError>) -> Void)
```

### `listRuns(input:completion:)`

Gets information about runs, given an AWS Device Farm project ARN.

``` swift
public func listRuns(input: ListRunsInput, completion: @escaping (ClientRuntime.SdkResult<ListRunsOutputResponse, ListRunsOutputError>) -> Void)
```

### `listSamples(input:completion:)`

Gets information about samples, given an AWS Device Farm job ARN.

``` swift
public func listSamples(input: ListSamplesInput, completion: @escaping (ClientRuntime.SdkResult<ListSamplesOutputResponse, ListSamplesOutputError>) -> Void)
```

### `listSuites(input:completion:)`

Gets information about test suites for a given job.

``` swift
public func listSuites(input: ListSuitesInput, completion: @escaping (ClientRuntime.SdkResult<ListSuitesOutputResponse, ListSuitesOutputError>) -> Void)
```

### `listTagsForResource(input:completion:)`

List the tags for an AWS Device Farm resource.

``` swift
public func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
```

### `listTestGridProjects(input:completion:)`

Gets a list of all Selenium testing projects in your account.

``` swift
public func listTestGridProjects(input: ListTestGridProjectsInput, completion: @escaping (ClientRuntime.SdkResult<ListTestGridProjectsOutputResponse, ListTestGridProjectsOutputError>) -> Void)
```

### `listTestGridSessionActions(input:completion:)`

Returns a list of the actions taken in a \[TestGridSession\].

``` swift
public func listTestGridSessionActions(input: ListTestGridSessionActionsInput, completion: @escaping (ClientRuntime.SdkResult<ListTestGridSessionActionsOutputResponse, ListTestGridSessionActionsOutputError>) -> Void)
```

### `listTestGridSessionArtifacts(input:completion:)`

Retrieves a list of artifacts created during the session.

``` swift
public func listTestGridSessionArtifacts(input: ListTestGridSessionArtifactsInput, completion: @escaping (ClientRuntime.SdkResult<ListTestGridSessionArtifactsOutputResponse, ListTestGridSessionArtifactsOutputError>) -> Void)
```

### `listTestGridSessions(input:completion:)`

Retrieves a list of sessions for a \[TestGridProject\].

``` swift
public func listTestGridSessions(input: ListTestGridSessionsInput, completion: @escaping (ClientRuntime.SdkResult<ListTestGridSessionsOutputResponse, ListTestGridSessionsOutputError>) -> Void)
```

### `listTests(input:completion:)`

Gets information about tests in a given test suite.

``` swift
public func listTests(input: ListTestsInput, completion: @escaping (ClientRuntime.SdkResult<ListTestsOutputResponse, ListTestsOutputError>) -> Void)
```

### `listUniqueProblems(input:completion:)`

Gets information about unique problems, such as exceptions or crashes. Unique problems are defined as a single instance of an error across a run, job, or suite. For example, if a call in your application consistently raises an exception (OutOfBoundsException in MyActivity.java:386), ListUniqueProblems returns a single entry instead of many individual entries for that exception.

``` swift
public func listUniqueProblems(input: ListUniqueProblemsInput, completion: @escaping (ClientRuntime.SdkResult<ListUniqueProblemsOutputResponse, ListUniqueProblemsOutputError>) -> Void)
```

### `listUploads(input:completion:)`

Gets information about uploads, given an AWS Device Farm project ARN.

``` swift
public func listUploads(input: ListUploadsInput, completion: @escaping (ClientRuntime.SdkResult<ListUploadsOutputResponse, ListUploadsOutputError>) -> Void)
```

### `listVPCEConfigurations(input:completion:)`

Returns information about all Amazon Virtual Private Cloud (VPC) endpoint configurations in the AWS account.

``` swift
public func listVPCEConfigurations(input: ListVPCEConfigurationsInput, completion: @escaping (ClientRuntime.SdkResult<ListVPCEConfigurationsOutputResponse, ListVPCEConfigurationsOutputError>) -> Void)
```

### `purchaseOffering(input:completion:)`

Immediately purchases offerings for an AWS account. Offerings renew with the latest total purchased quantity for an offering, unless the renewal was overridden. The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact <aws-devicefarm-support@amazon.com>.

``` swift
public func purchaseOffering(input: PurchaseOfferingInput, completion: @escaping (ClientRuntime.SdkResult<PurchaseOfferingOutputResponse, PurchaseOfferingOutputError>) -> Void)
```

### `renewOffering(input:completion:)`

Explicitly sets the quantity of devices to renew for an offering, starting from the effectiveDate of the next period. The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact <aws-devicefarm-support@amazon.com>.

``` swift
public func renewOffering(input: RenewOfferingInput, completion: @escaping (ClientRuntime.SdkResult<RenewOfferingOutputResponse, RenewOfferingOutputError>) -> Void)
```

### `scheduleRun(input:completion:)`

Schedules a run.

``` swift
public func scheduleRun(input: ScheduleRunInput, completion: @escaping (ClientRuntime.SdkResult<ScheduleRunOutputResponse, ScheduleRunOutputError>) -> Void)
```

### `stopJob(input:completion:)`

Initiates a stop request for the current job. AWS Device Farm immediately stops the job on the device where tests have not started. You are not billed for this device. On the device where tests have started, setup suite and teardown suite tests run to completion on the device. You are billed for setup, teardown, and any tests that were in progress or already completed.

``` swift
public func stopJob(input: StopJobInput, completion: @escaping (ClientRuntime.SdkResult<StopJobOutputResponse, StopJobOutputError>) -> Void)
```

### `stopRemoteAccessSession(input:completion:)`

Ends a specified remote access session.

``` swift
public func stopRemoteAccessSession(input: StopRemoteAccessSessionInput, completion: @escaping (ClientRuntime.SdkResult<StopRemoteAccessSessionOutputResponse, StopRemoteAccessSessionOutputError>) -> Void)
```

### `stopRun(input:completion:)`

Initiates a stop request for the current test run. AWS Device Farm immediately stops the run on devices where tests have not started. You are not billed for these devices. On devices where tests have started executing, setup suite and teardown suite tests run to completion on those devices. You are billed for setup, teardown, and any tests that were in progress or already completed.

``` swift
public func stopRun(input: StopRunInput, completion: @escaping (ClientRuntime.SdkResult<StopRunOutputResponse, StopRunOutputError>) -> Void)
```

### `tagResource(input:completion:)`

Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are also deleted.

``` swift
public func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
```

### `untagResource(input:completion:)`

Deletes the specified tags from a resource.

``` swift
public func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
```

### `updateDeviceInstance(input:completion:)`

Updates information about a private device instance.

``` swift
public func updateDeviceInstance(input: UpdateDeviceInstanceInput, completion: @escaping (ClientRuntime.SdkResult<UpdateDeviceInstanceOutputResponse, UpdateDeviceInstanceOutputError>) -> Void)
```

### `updateDevicePool(input:completion:)`

Modifies the name, description, and rules in a device pool given the attributes and the pool ARN. Rule updates are all-or-nothing, meaning they can only be updated as a whole (or not at all).

``` swift
public func updateDevicePool(input: UpdateDevicePoolInput, completion: @escaping (ClientRuntime.SdkResult<UpdateDevicePoolOutputResponse, UpdateDevicePoolOutputError>) -> Void)
```

### `updateInstanceProfile(input:completion:)`

Updates information about an existing private device instance profile.

``` swift
public func updateInstanceProfile(input: UpdateInstanceProfileInput, completion: @escaping (ClientRuntime.SdkResult<UpdateInstanceProfileOutputResponse, UpdateInstanceProfileOutputError>) -> Void)
```

### `updateNetworkProfile(input:completion:)`

Updates the network profile.

``` swift
public func updateNetworkProfile(input: UpdateNetworkProfileInput, completion: @escaping (ClientRuntime.SdkResult<UpdateNetworkProfileOutputResponse, UpdateNetworkProfileOutputError>) -> Void)
```

### `updateProject(input:completion:)`

Modifies the specified project name, given the project ARN and a new name.

``` swift
public func updateProject(input: UpdateProjectInput, completion: @escaping (ClientRuntime.SdkResult<UpdateProjectOutputResponse, UpdateProjectOutputError>) -> Void)
```

### `updateTestGridProject(input:completion:)`

Change details of a project.

``` swift
public func updateTestGridProject(input: UpdateTestGridProjectInput, completion: @escaping (ClientRuntime.SdkResult<UpdateTestGridProjectOutputResponse, UpdateTestGridProjectOutputError>) -> Void)
```

### `updateUpload(input:completion:)`

Updates an uploaded test spec.

``` swift
public func updateUpload(input: UpdateUploadInput, completion: @escaping (ClientRuntime.SdkResult<UpdateUploadOutputResponse, UpdateUploadOutputError>) -> Void)
```

### `updateVPCEConfiguration(input:completion:)`

Updates information about an Amazon Virtual Private Cloud (VPC) endpoint configuration.

``` swift
public func updateVPCEConfiguration(input: UpdateVPCEConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<UpdateVPCEConfigurationOutputResponse, UpdateVPCEConfigurationOutputError>) -> Void)
```