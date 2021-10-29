# ElasticBeanstalkClient

``` swift
public class ElasticBeanstalkClient 
```

## Inheritance

[`ElasticBeanstalkClientProtocol`](/aws-sdk-swift/reference/0.x/AWSElasticBeanstalk/ElasticBeanstalkClientProtocol)

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
public static let clientName = "ElasticBeanstalkClient"
```

## Methods

### `abortEnvironmentUpdate(input:completion:)`

Cancels in-progress environment configuration update or application version deployment.

``` swift
public func abortEnvironmentUpdate(input: AbortEnvironmentUpdateInput, completion: @escaping (ClientRuntime.SdkResult<AbortEnvironmentUpdateOutputResponse, AbortEnvironmentUpdateOutputError>) -> Void)
```

### `applyEnvironmentManagedAction(input:completion:)`

Applies a scheduled managed action immediately. A managed action can be applied only if its status is Scheduled. Get the status and action ID of a managed action with \[DescribeEnvironmentManagedActions\].

``` swift
public func applyEnvironmentManagedAction(input: ApplyEnvironmentManagedActionInput, completion: @escaping (ClientRuntime.SdkResult<ApplyEnvironmentManagedActionOutputResponse, ApplyEnvironmentManagedActionOutputError>) -> Void)
```

### `associateEnvironmentOperationsRole(input:completion:)`

Add or change the operations role used by an environment. After this call is made, Elastic Beanstalk uses the associated operations role for permissions to downstream services during subsequent calls acting on this environment. For more information, see [Operations roles](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html) in the AWS Elastic Beanstalk Developer Guide.

``` swift
public func associateEnvironmentOperationsRole(input: AssociateEnvironmentOperationsRoleInput, completion: @escaping (ClientRuntime.SdkResult<AssociateEnvironmentOperationsRoleOutputResponse, AssociateEnvironmentOperationsRoleOutputError>) -> Void)
```

### `checkDNSAvailability(input:completion:)`

Checks if the specified CNAME is available.

``` swift
public func checkDNSAvailability(input: CheckDNSAvailabilityInput, completion: @escaping (ClientRuntime.SdkResult<CheckDNSAvailabilityOutputResponse, CheckDNSAvailabilityOutputError>) -> Void)
```

### `composeEnvironments(input:completion:)`

Create or update a group of environments that each run a separate component of a single application. Takes a list of version labels that specify application source bundles for each of the environments to create or update. The name of each environment and other required information must be included in the source bundles in an environment manifest named env.yaml. See [Compose Environments](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-mgmt-compose.html) for details.

``` swift
public func composeEnvironments(input: ComposeEnvironmentsInput, completion: @escaping (ClientRuntime.SdkResult<ComposeEnvironmentsOutputResponse, ComposeEnvironmentsOutputError>) -> Void)
```

### `createApplication(input:completion:)`

Creates an application that has one configuration template named default and no application versions.

``` swift
public func createApplication(input: CreateApplicationInput, completion: @escaping (ClientRuntime.SdkResult<CreateApplicationOutputResponse, CreateApplicationOutputError>) -> Void)
```

### `createApplicationVersion(input:completion:)`

Creates an application version for the specified application. You can create an application version from a source bundle in Amazon S3, a commit in AWS CodeCommit, or the output of an AWS CodeBuild build as follows: Specify a commit in an AWS CodeCommit repository with SourceBuildInformation. Specify a build in an AWS CodeBuild with SourceBuildInformation and BuildConfiguration. Specify a source bundle in S3 with SourceBundle Omit both SourceBuildInformation and SourceBundle to use the default sample application. After you create an application version with a specified Amazon S3 bucket and key location, you can't change that Amazon S3 location. If you change the Amazon S3 location, you receive an exception when you attempt to launch an environment from the application version.

``` swift
public func createApplicationVersion(input: CreateApplicationVersionInput, completion: @escaping (ClientRuntime.SdkResult<CreateApplicationVersionOutputResponse, CreateApplicationVersionOutputError>) -> Void)
```

### `createConfigurationTemplate(input:completion:)`

Creates an AWS Elastic Beanstalk configuration template, associated with a specific Elastic Beanstalk application. You define application configuration settings in a configuration template. You can then use the configuration template to deploy different versions of the application with the same configuration settings. Templates aren't associated with any environment. The EnvironmentName response element is always null. Related Topics

``` swift
public func createConfigurationTemplate(input: CreateConfigurationTemplateInput, completion: @escaping (ClientRuntime.SdkResult<CreateConfigurationTemplateOutputResponse, CreateConfigurationTemplateOutputError>) -> Void)
```

  - \[DescribeConfigurationOptions\]

  - \[DescribeConfigurationSettings\]

  - \[ListAvailableSolutionStacks\]

### `createEnvironment(input:completion:)`

Launches an AWS Elastic Beanstalk environment for the specified application using the specified configuration.

``` swift
public func createEnvironment(input: CreateEnvironmentInput, completion: @escaping (ClientRuntime.SdkResult<CreateEnvironmentOutputResponse, CreateEnvironmentOutputError>) -> Void)
```

### `createPlatformVersion(input:completion:)`

Create a new version of your custom platform.

``` swift
public func createPlatformVersion(input: CreatePlatformVersionInput, completion: @escaping (ClientRuntime.SdkResult<CreatePlatformVersionOutputResponse, CreatePlatformVersionOutputError>) -> Void)
```

### `createStorageLocation(input:completion:)`

Creates a bucket in Amazon S3 to store application versions, logs, and other files used by Elastic Beanstalk environments. The Elastic Beanstalk console and EB CLI call this API the first time you create an environment in a region. If the storage location already exists, CreateStorageLocation still returns the bucket name but does not create a new bucket.

``` swift
public func createStorageLocation(input: CreateStorageLocationInput, completion: @escaping (ClientRuntime.SdkResult<CreateStorageLocationOutputResponse, CreateStorageLocationOutputError>) -> Void)
```

### `deleteApplication(input:completion:)`

Deletes the specified application along with all associated versions and configurations. The application versions will not be deleted from your Amazon S3 bucket. You cannot delete an application that has a running environment.

``` swift
public func deleteApplication(input: DeleteApplicationInput, completion: @escaping (ClientRuntime.SdkResult<DeleteApplicationOutputResponse, DeleteApplicationOutputError>) -> Void)
```

### `deleteApplicationVersion(input:completion:)`

Deletes the specified version from the specified application. You cannot delete an application version that is associated with a running environment.

``` swift
public func deleteApplicationVersion(input: DeleteApplicationVersionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteApplicationVersionOutputResponse, DeleteApplicationVersionOutputError>) -> Void)
```

### `deleteConfigurationTemplate(input:completion:)`

Deletes the specified configuration template. When you launch an environment using a configuration template, the environment gets a copy of the template. You can delete or modify the environment's copy of the template without affecting the running environment.

``` swift
public func deleteConfigurationTemplate(input: DeleteConfigurationTemplateInput, completion: @escaping (ClientRuntime.SdkResult<DeleteConfigurationTemplateOutputResponse, DeleteConfigurationTemplateOutputError>) -> Void)
```

### `deleteEnvironmentConfiguration(input:completion:)`

Deletes the draft configuration associated with the running environment. Updating a running environment with any configuration changes creates a draft configuration set. You can get the draft configuration using \[DescribeConfigurationSettings\] while the update is in progress or if the update fails. The DeploymentStatus for the draft configuration indicates whether the deployment is in process or has failed. The draft configuration remains in existence until it is deleted with this action.

``` swift
public func deleteEnvironmentConfiguration(input: DeleteEnvironmentConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<DeleteEnvironmentConfigurationOutputResponse, DeleteEnvironmentConfigurationOutputError>) -> Void)
```

### `deletePlatformVersion(input:completion:)`

Deletes the specified version of a custom platform.

``` swift
public func deletePlatformVersion(input: DeletePlatformVersionInput, completion: @escaping (ClientRuntime.SdkResult<DeletePlatformVersionOutputResponse, DeletePlatformVersionOutputError>) -> Void)
```

### `describeAccountAttributes(input:completion:)`

Returns attributes related to AWS Elastic Beanstalk that are associated with the calling AWS account. The result currently has one set of attributes—resource quotas.

``` swift
public func describeAccountAttributes(input: DescribeAccountAttributesInput, completion: @escaping (ClientRuntime.SdkResult<DescribeAccountAttributesOutputResponse, DescribeAccountAttributesOutputError>) -> Void)
```

### `describeApplicationVersions(input:completion:)`

Retrieve a list of application versions.

``` swift
public func describeApplicationVersions(input: DescribeApplicationVersionsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeApplicationVersionsOutputResponse, DescribeApplicationVersionsOutputError>) -> Void)
```

### `describeApplications(input:completion:)`

Returns the descriptions of existing applications.

``` swift
public func describeApplications(input: DescribeApplicationsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeApplicationsOutputResponse, DescribeApplicationsOutputError>) -> Void)
```

### `describeConfigurationOptions(input:completion:)`

Describes the configuration options that are used in a particular configuration template or environment, or that a specified solution stack defines. The description includes the values the options, their default values, and an indication of the required action on a running environment if an option value is changed.

``` swift
public func describeConfigurationOptions(input: DescribeConfigurationOptionsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeConfigurationOptionsOutputResponse, DescribeConfigurationOptionsOutputError>) -> Void)
```

### `describeConfigurationSettings(input:completion:)`

Returns a description of the settings for the specified configuration set, that is, either a configuration template or the configuration set associated with a running environment. When describing the settings for the configuration set associated with a running environment, it is possible to receive two sets of setting descriptions. One is the deployed configuration set, and the other is a draft configuration of an environment that is either in the process of deployment or that failed to deploy. Related Topics

``` swift
public func describeConfigurationSettings(input: DescribeConfigurationSettingsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeConfigurationSettingsOutputResponse, DescribeConfigurationSettingsOutputError>) -> Void)
```

  - \[DeleteEnvironmentConfiguration\]

### `describeEnvironmentHealth(input:completion:)`

Returns information about the overall health of the specified environment. The DescribeEnvironmentHealth operation is only available with AWS Elastic Beanstalk Enhanced Health.

``` swift
public func describeEnvironmentHealth(input: DescribeEnvironmentHealthInput, completion: @escaping (ClientRuntime.SdkResult<DescribeEnvironmentHealthOutputResponse, DescribeEnvironmentHealthOutputError>) -> Void)
```

### `describeEnvironmentManagedActionHistory(input:completion:)`

Lists an environment's completed and failed managed actions.

``` swift
public func describeEnvironmentManagedActionHistory(input: DescribeEnvironmentManagedActionHistoryInput, completion: @escaping (ClientRuntime.SdkResult<DescribeEnvironmentManagedActionHistoryOutputResponse, DescribeEnvironmentManagedActionHistoryOutputError>) -> Void)
```

### `describeEnvironmentManagedActions(input:completion:)`

Lists an environment's upcoming and in-progress managed actions.

``` swift
public func describeEnvironmentManagedActions(input: DescribeEnvironmentManagedActionsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeEnvironmentManagedActionsOutputResponse, DescribeEnvironmentManagedActionsOutputError>) -> Void)
```

### `describeEnvironmentResources(input:completion:)`

Returns AWS resources for this environment.

``` swift
public func describeEnvironmentResources(input: DescribeEnvironmentResourcesInput, completion: @escaping (ClientRuntime.SdkResult<DescribeEnvironmentResourcesOutputResponse, DescribeEnvironmentResourcesOutputError>) -> Void)
```

### `describeEnvironments(input:completion:)`

Returns descriptions for existing environments.

``` swift
public func describeEnvironments(input: DescribeEnvironmentsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeEnvironmentsOutputResponse, DescribeEnvironmentsOutputError>) -> Void)
```

### `describeEvents(input:completion:)`

Returns list of event descriptions matching criteria up to the last 6 weeks. This action returns the most recent 1,000 events from the specified NextToken.

``` swift
public func describeEvents(input: DescribeEventsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeEventsOutputResponse, DescribeEventsOutputError>) -> Void)
```

### `describeInstancesHealth(input:completion:)`

Retrieves detailed information about the health of instances in your AWS Elastic Beanstalk. This operation requires [enhanced health reporting](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced.html).

``` swift
public func describeInstancesHealth(input: DescribeInstancesHealthInput, completion: @escaping (ClientRuntime.SdkResult<DescribeInstancesHealthOutputResponse, DescribeInstancesHealthOutputError>) -> Void)
```

### `describePlatformVersion(input:completion:)`

Describes a platform version. Provides full details. Compare to \[ListPlatformVersions\], which provides summary information about a list of platform versions. For definitions of platform version and other platform-related terms, see [AWS Elastic Beanstalk Platforms Glossary](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html).

``` swift
public func describePlatformVersion(input: DescribePlatformVersionInput, completion: @escaping (ClientRuntime.SdkResult<DescribePlatformVersionOutputResponse, DescribePlatformVersionOutputError>) -> Void)
```

### `disassociateEnvironmentOperationsRole(input:completion:)`

Disassociate the operations role from an environment. After this call is made, Elastic Beanstalk uses the caller's permissions for permissions to downstream services during subsequent calls acting on this environment. For more information, see [Operations roles](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html) in the AWS Elastic Beanstalk Developer Guide.

``` swift
public func disassociateEnvironmentOperationsRole(input: DisassociateEnvironmentOperationsRoleInput, completion: @escaping (ClientRuntime.SdkResult<DisassociateEnvironmentOperationsRoleOutputResponse, DisassociateEnvironmentOperationsRoleOutputError>) -> Void)
```

### `listAvailableSolutionStacks(input:completion:)`

Returns a list of the available solution stack names, with the public version first and then in reverse chronological order.

``` swift
public func listAvailableSolutionStacks(input: ListAvailableSolutionStacksInput, completion: @escaping (ClientRuntime.SdkResult<ListAvailableSolutionStacksOutputResponse, ListAvailableSolutionStacksOutputError>) -> Void)
```

### `listPlatformBranches(input:completion:)`

Lists the platform branches available for your account in an AWS Region. Provides summary information about each platform branch. For definitions of platform branch and other platform-related terms, see [AWS Elastic Beanstalk Platforms Glossary](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html).

``` swift
public func listPlatformBranches(input: ListPlatformBranchesInput, completion: @escaping (ClientRuntime.SdkResult<ListPlatformBranchesOutputResponse, ListPlatformBranchesOutputError>) -> Void)
```

### `listPlatformVersions(input:completion:)`

Lists the platform versions available for your account in an AWS Region. Provides summary information about each platform version. Compare to \[DescribePlatformVersion\], which provides full details about a single platform version. For definitions of platform version and other platform-related terms, see [AWS Elastic Beanstalk Platforms Glossary](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html).

``` swift
public func listPlatformVersions(input: ListPlatformVersionsInput, completion: @escaping (ClientRuntime.SdkResult<ListPlatformVersionsOutputResponse, ListPlatformVersionsOutputError>) -> Void)
```

### `listTagsForResource(input:completion:)`

Return the tags applied to an AWS Elastic Beanstalk resource. The response contains a list of tag key-value pairs. Elastic Beanstalk supports tagging of all of its resources. For details about resource tagging, see [Tagging Application Resources](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/applications-tagging-resources.html).

``` swift
public func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
```

### `rebuildEnvironment(input:completion:)`

Deletes and recreates all of the AWS resources (for example: the Auto Scaling group, load balancer, etc.) for a specified environment and forces a restart.

``` swift
public func rebuildEnvironment(input: RebuildEnvironmentInput, completion: @escaping (ClientRuntime.SdkResult<RebuildEnvironmentOutputResponse, RebuildEnvironmentOutputError>) -> Void)
```

### `requestEnvironmentInfo(input:completion:)`

Initiates a request to compile the specified type of information of the deployed environment. Setting the InfoType to tail compiles the last lines from the application server log files of every Amazon EC2 instance in your environment. Setting the InfoType to bundle compresses the application server log files for every Amazon EC2 instance into a .zip file. Legacy and .NET containers do not support bundle logs. Use \[RetrieveEnvironmentInfo\] to obtain the set of logs. Related Topics

``` swift
public func requestEnvironmentInfo(input: RequestEnvironmentInfoInput, completion: @escaping (ClientRuntime.SdkResult<RequestEnvironmentInfoOutputResponse, RequestEnvironmentInfoOutputError>) -> Void)
```

  - \[RetrieveEnvironmentInfo\]

### `restartAppServer(input:completion:)`

Causes the environment to restart the application container server running on each Amazon EC2 instance.

``` swift
public func restartAppServer(input: RestartAppServerInput, completion: @escaping (ClientRuntime.SdkResult<RestartAppServerOutputResponse, RestartAppServerOutputError>) -> Void)
```

### `retrieveEnvironmentInfo(input:completion:)`

Retrieves the compiled information from a \[RequestEnvironmentInfo\] request. Related Topics

``` swift
public func retrieveEnvironmentInfo(input: RetrieveEnvironmentInfoInput, completion: @escaping (ClientRuntime.SdkResult<RetrieveEnvironmentInfoOutputResponse, RetrieveEnvironmentInfoOutputError>) -> Void)
```

  - \[RequestEnvironmentInfo\]

### `swapEnvironmentCNAMEs(input:completion:)`

Swaps the CNAMEs of two environments.

``` swift
public func swapEnvironmentCNAMEs(input: SwapEnvironmentCNAMEsInput, completion: @escaping (ClientRuntime.SdkResult<SwapEnvironmentCNAMEsOutputResponse, SwapEnvironmentCNAMEsOutputError>) -> Void)
```

### `terminateEnvironment(input:completion:)`

Terminates the specified environment.

``` swift
public func terminateEnvironment(input: TerminateEnvironmentInput, completion: @escaping (ClientRuntime.SdkResult<TerminateEnvironmentOutputResponse, TerminateEnvironmentOutputError>) -> Void)
```

### `updateApplication(input:completion:)`

Updates the specified application to have the specified properties. If a property (for example, description) is not provided, the value remains unchanged. To clear these properties, specify an empty string.

``` swift
public func updateApplication(input: UpdateApplicationInput, completion: @escaping (ClientRuntime.SdkResult<UpdateApplicationOutputResponse, UpdateApplicationOutputError>) -> Void)
```

### `updateApplicationResourceLifecycle(input:completion:)`

Modifies lifecycle settings for an application.

``` swift
public func updateApplicationResourceLifecycle(input: UpdateApplicationResourceLifecycleInput, completion: @escaping (ClientRuntime.SdkResult<UpdateApplicationResourceLifecycleOutputResponse, UpdateApplicationResourceLifecycleOutputError>) -> Void)
```

### `updateApplicationVersion(input:completion:)`

Updates the specified application version to have the specified properties. If a property (for example, description) is not provided, the value remains unchanged. To clear properties, specify an empty string.

``` swift
public func updateApplicationVersion(input: UpdateApplicationVersionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateApplicationVersionOutputResponse, UpdateApplicationVersionOutputError>) -> Void)
```

### `updateConfigurationTemplate(input:completion:)`

Updates the specified configuration template to have the specified properties or configuration option values. If a property (for example, ApplicationName) is not provided, its value remains unchanged. To clear such properties, specify an empty string. Related Topics

``` swift
public func updateConfigurationTemplate(input: UpdateConfigurationTemplateInput, completion: @escaping (ClientRuntime.SdkResult<UpdateConfigurationTemplateOutputResponse, UpdateConfigurationTemplateOutputError>) -> Void)
```

  - \[DescribeConfigurationOptions\]

### `updateEnvironment(input:completion:)`

Updates the environment description, deploys a new application version, updates the configuration settings to an entirely new configuration template, or updates select configuration option values in the running environment. Attempting to update both the release and configuration is not allowed and AWS Elastic Beanstalk returns an InvalidParameterCombination error. When updating the configuration settings to a new template or individual settings, a draft configuration is created and \[DescribeConfigurationSettings\] for this environment returns two setting descriptions with different DeploymentStatus values.

``` swift
public func updateEnvironment(input: UpdateEnvironmentInput, completion: @escaping (ClientRuntime.SdkResult<UpdateEnvironmentOutputResponse, UpdateEnvironmentOutputError>) -> Void)
```

### `updateTagsForResource(input:completion:)`

Update the list of tags applied to an AWS Elastic Beanstalk resource. Two lists can be passed: TagsToAdd for tags to add or update, and TagsToRemove. Elastic Beanstalk supports tagging of all of its resources. For details about resource tagging, see [Tagging Application Resources](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/applications-tagging-resources.html). If you create a custom IAM user policy to control permission to this operation, specify one of the following two virtual actions (or both) instead of the API operation name: elasticbeanstalk:AddTags Controls permission to call UpdateTagsForResource and pass a list of tags to add in the TagsToAdd parameter. elasticbeanstalk:RemoveTags Controls permission to call UpdateTagsForResource and pass a list of tag keys to remove in the TagsToRemove parameter. For details about creating a custom user policy, see [Creating a Custom User Policy](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/AWSHowTo.iam.managed-policies.html#AWSHowTo.iam.policies).

``` swift
public func updateTagsForResource(input: UpdateTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<UpdateTagsForResourceOutputResponse, UpdateTagsForResourceOutputError>) -> Void)
```

### `validateConfigurationSettings(input:completion:)`

Takes a set of configuration settings and either a configuration template or environment, and determines whether those values are valid. This action returns a list of messages indicating any errors or warnings associated with the selection of option values.

``` swift
public func validateConfigurationSettings(input: ValidateConfigurationSettingsInput, completion: @escaping (ClientRuntime.SdkResult<ValidateConfigurationSettingsOutputResponse, ValidateConfigurationSettingsOutputError>) -> Void)
```