// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS IoT Greengrass seamlessly extends AWS onto physical devices so they can act locally on the data they generate, while still using the cloud for management, analytics, and durable storage. AWS IoT Greengrass ensures your devices can respond quickly to local events and operate with intermittent connectivity. AWS IoT Greengrass minimizes the cost of transmitting data to the cloud by allowing you to author AWS Lambda functions that execute locally.
public protocol GreengrassClientProtocol {
    /// Associates a role with a group. Your Greengrass core will use the role to access AWS cloud services. The role's permissions should allow Greengrass core Lambda functions to perform actions against the cloud.
    func associateRoleToGroup(input: AssociateRoleToGroupInput, completion: @escaping (ClientRuntime.SdkResult<AssociateRoleToGroupOutputResponse, AssociateRoleToGroupOutputError>) -> Void)
    /// Associates a role with your account. AWS IoT Greengrass will use the role to access your Lambda functions and AWS IoT resources. This is necessary for deployments to succeed. The role must have at least minimum permissions in the policy ''AWSGreengrassResourceAccessRolePolicy''.
    func associateServiceRoleToAccount(input: AssociateServiceRoleToAccountInput, completion: @escaping (ClientRuntime.SdkResult<AssociateServiceRoleToAccountOutputResponse, AssociateServiceRoleToAccountOutputError>) -> Void)
    /// Creates a connector definition. You may provide the initial version of the connector definition now or use ''CreateConnectorDefinitionVersion'' at a later time.
    func createConnectorDefinition(input: CreateConnectorDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<CreateConnectorDefinitionOutputResponse, CreateConnectorDefinitionOutputError>) -> Void)
    /// Creates a version of a connector definition which has already been defined.
    func createConnectorDefinitionVersion(input: CreateConnectorDefinitionVersionInput, completion: @escaping (ClientRuntime.SdkResult<CreateConnectorDefinitionVersionOutputResponse, CreateConnectorDefinitionVersionOutputError>) -> Void)
    /// Creates a core definition. You may provide the initial version of the core definition now or use ''CreateCoreDefinitionVersion'' at a later time. Greengrass groups must each contain exactly one Greengrass core.
    func createCoreDefinition(input: CreateCoreDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<CreateCoreDefinitionOutputResponse, CreateCoreDefinitionOutputError>) -> Void)
    /// Creates a version of a core definition that has already been defined. Greengrass groups must each contain exactly one Greengrass core.
    func createCoreDefinitionVersion(input: CreateCoreDefinitionVersionInput, completion: @escaping (ClientRuntime.SdkResult<CreateCoreDefinitionVersionOutputResponse, CreateCoreDefinitionVersionOutputError>) -> Void)
    /// Creates a deployment. ''CreateDeployment'' requests are idempotent with respect to the ''X-Amzn-Client-Token'' token and the request parameters.
    func createDeployment(input: CreateDeploymentInput, completion: @escaping (ClientRuntime.SdkResult<CreateDeploymentOutputResponse, CreateDeploymentOutputError>) -> Void)
    /// Creates a device definition. You may provide the initial version of the device definition now or use ''CreateDeviceDefinitionVersion'' at a later time.
    func createDeviceDefinition(input: CreateDeviceDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<CreateDeviceDefinitionOutputResponse, CreateDeviceDefinitionOutputError>) -> Void)
    /// Creates a version of a device definition that has already been defined.
    func createDeviceDefinitionVersion(input: CreateDeviceDefinitionVersionInput, completion: @escaping (ClientRuntime.SdkResult<CreateDeviceDefinitionVersionOutputResponse, CreateDeviceDefinitionVersionOutputError>) -> Void)
    /// Creates a Lambda function definition which contains a list of Lambda functions and their configurations to be used in a group. You can create an initial version of the definition by providing a list of Lambda functions and their configurations now, or use ''CreateFunctionDefinitionVersion'' later.
    func createFunctionDefinition(input: CreateFunctionDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<CreateFunctionDefinitionOutputResponse, CreateFunctionDefinitionOutputError>) -> Void)
    /// Creates a version of a Lambda function definition that has already been defined.
    func createFunctionDefinitionVersion(input: CreateFunctionDefinitionVersionInput, completion: @escaping (ClientRuntime.SdkResult<CreateFunctionDefinitionVersionOutputResponse, CreateFunctionDefinitionVersionOutputError>) -> Void)
    /// Creates a group. You may provide the initial version of the group or use ''CreateGroupVersion'' at a later time. Tip: You can use the ''gg_group_setup'' package (https://github.com/awslabs/aws-greengrass-group-setup) as a library or command-line application to create and deploy Greengrass groups.
    func createGroup(input: CreateGroupInput, completion: @escaping (ClientRuntime.SdkResult<CreateGroupOutputResponse, CreateGroupOutputError>) -> Void)
    /// Creates a CA for the group. If a CA already exists, it will rotate the existing CA.
    func createGroupCertificateAuthority(input: CreateGroupCertificateAuthorityInput, completion: @escaping (ClientRuntime.SdkResult<CreateGroupCertificateAuthorityOutputResponse, CreateGroupCertificateAuthorityOutputError>) -> Void)
    /// Creates a version of a group which has already been defined.
    func createGroupVersion(input: CreateGroupVersionInput, completion: @escaping (ClientRuntime.SdkResult<CreateGroupVersionOutputResponse, CreateGroupVersionOutputError>) -> Void)
    /// Creates a logger definition. You may provide the initial version of the logger definition now or use ''CreateLoggerDefinitionVersion'' at a later time.
    func createLoggerDefinition(input: CreateLoggerDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<CreateLoggerDefinitionOutputResponse, CreateLoggerDefinitionOutputError>) -> Void)
    /// Creates a version of a logger definition that has already been defined.
    func createLoggerDefinitionVersion(input: CreateLoggerDefinitionVersionInput, completion: @escaping (ClientRuntime.SdkResult<CreateLoggerDefinitionVersionOutputResponse, CreateLoggerDefinitionVersionOutputError>) -> Void)
    /// Creates a resource definition which contains a list of resources to be used in a group. You can create an initial version of the definition by providing a list of resources now, or use ''CreateResourceDefinitionVersion'' later.
    func createResourceDefinition(input: CreateResourceDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<CreateResourceDefinitionOutputResponse, CreateResourceDefinitionOutputError>) -> Void)
    /// Creates a version of a resource definition that has already been defined.
    func createResourceDefinitionVersion(input: CreateResourceDefinitionVersionInput, completion: @escaping (ClientRuntime.SdkResult<CreateResourceDefinitionVersionOutputResponse, CreateResourceDefinitionVersionOutputError>) -> Void)
    /// Creates a software update for a core or group of cores (specified as an IoT thing group.) Use this to update the OTA Agent as well as the Greengrass core software. It makes use of the IoT Jobs feature which provides additional commands to manage a Greengrass core software update job.
    func createSoftwareUpdateJob(input: CreateSoftwareUpdateJobInput, completion: @escaping (ClientRuntime.SdkResult<CreateSoftwareUpdateJobOutputResponse, CreateSoftwareUpdateJobOutputError>) -> Void)
    /// Creates a subscription definition. You may provide the initial version of the subscription definition now or use ''CreateSubscriptionDefinitionVersion'' at a later time.
    func createSubscriptionDefinition(input: CreateSubscriptionDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<CreateSubscriptionDefinitionOutputResponse, CreateSubscriptionDefinitionOutputError>) -> Void)
    /// Creates a version of a subscription definition which has already been defined.
    func createSubscriptionDefinitionVersion(input: CreateSubscriptionDefinitionVersionInput, completion: @escaping (ClientRuntime.SdkResult<CreateSubscriptionDefinitionVersionOutputResponse, CreateSubscriptionDefinitionVersionOutputError>) -> Void)
    /// Deletes a connector definition.
    func deleteConnectorDefinition(input: DeleteConnectorDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteConnectorDefinitionOutputResponse, DeleteConnectorDefinitionOutputError>) -> Void)
    /// Deletes a core definition.
    func deleteCoreDefinition(input: DeleteCoreDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteCoreDefinitionOutputResponse, DeleteCoreDefinitionOutputError>) -> Void)
    /// Deletes a device definition.
    func deleteDeviceDefinition(input: DeleteDeviceDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteDeviceDefinitionOutputResponse, DeleteDeviceDefinitionOutputError>) -> Void)
    /// Deletes a Lambda function definition.
    func deleteFunctionDefinition(input: DeleteFunctionDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteFunctionDefinitionOutputResponse, DeleteFunctionDefinitionOutputError>) -> Void)
    /// Deletes a group.
    func deleteGroup(input: DeleteGroupInput, completion: @escaping (ClientRuntime.SdkResult<DeleteGroupOutputResponse, DeleteGroupOutputError>) -> Void)
    /// Deletes a logger definition.
    func deleteLoggerDefinition(input: DeleteLoggerDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteLoggerDefinitionOutputResponse, DeleteLoggerDefinitionOutputError>) -> Void)
    /// Deletes a resource definition.
    func deleteResourceDefinition(input: DeleteResourceDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteResourceDefinitionOutputResponse, DeleteResourceDefinitionOutputError>) -> Void)
    /// Deletes a subscription definition.
    func deleteSubscriptionDefinition(input: DeleteSubscriptionDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteSubscriptionDefinitionOutputResponse, DeleteSubscriptionDefinitionOutputError>) -> Void)
    /// Disassociates the role from a group.
    func disassociateRoleFromGroup(input: DisassociateRoleFromGroupInput, completion: @escaping (ClientRuntime.SdkResult<DisassociateRoleFromGroupOutputResponse, DisassociateRoleFromGroupOutputError>) -> Void)
    /// Disassociates the service role from your account. Without a service role, deployments will not work.
    func disassociateServiceRoleFromAccount(input: DisassociateServiceRoleFromAccountInput, completion: @escaping (ClientRuntime.SdkResult<DisassociateServiceRoleFromAccountOutputResponse, DisassociateServiceRoleFromAccountOutputError>) -> Void)
    /// Retrieves the role associated with a particular group.
    func getAssociatedRole(input: GetAssociatedRoleInput, completion: @escaping (ClientRuntime.SdkResult<GetAssociatedRoleOutputResponse, GetAssociatedRoleOutputError>) -> Void)
    /// Returns the status of a bulk deployment.
    func getBulkDeploymentStatus(input: GetBulkDeploymentStatusInput, completion: @escaping (ClientRuntime.SdkResult<GetBulkDeploymentStatusOutputResponse, GetBulkDeploymentStatusOutputError>) -> Void)
    /// Retrieves the connectivity information for a core.
    func getConnectivityInfo(input: GetConnectivityInfoInput, completion: @escaping (ClientRuntime.SdkResult<GetConnectivityInfoOutputResponse, GetConnectivityInfoOutputError>) -> Void)
    /// Retrieves information about a connector definition.
    func getConnectorDefinition(input: GetConnectorDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<GetConnectorDefinitionOutputResponse, GetConnectorDefinitionOutputError>) -> Void)
    /// Retrieves information about a connector definition version, including the connectors that the version contains. Connectors are prebuilt modules that interact with local infrastructure, device protocols, AWS, and other cloud services.
    func getConnectorDefinitionVersion(input: GetConnectorDefinitionVersionInput, completion: @escaping (ClientRuntime.SdkResult<GetConnectorDefinitionVersionOutputResponse, GetConnectorDefinitionVersionOutputError>) -> Void)
    /// Retrieves information about a core definition version.
    func getCoreDefinition(input: GetCoreDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<GetCoreDefinitionOutputResponse, GetCoreDefinitionOutputError>) -> Void)
    /// Retrieves information about a core definition version.
    func getCoreDefinitionVersion(input: GetCoreDefinitionVersionInput, completion: @escaping (ClientRuntime.SdkResult<GetCoreDefinitionVersionOutputResponse, GetCoreDefinitionVersionOutputError>) -> Void)
    /// Returns the status of a deployment.
    func getDeploymentStatus(input: GetDeploymentStatusInput, completion: @escaping (ClientRuntime.SdkResult<GetDeploymentStatusOutputResponse, GetDeploymentStatusOutputError>) -> Void)
    /// Retrieves information about a device definition.
    func getDeviceDefinition(input: GetDeviceDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<GetDeviceDefinitionOutputResponse, GetDeviceDefinitionOutputError>) -> Void)
    /// Retrieves information about a device definition version.
    func getDeviceDefinitionVersion(input: GetDeviceDefinitionVersionInput, completion: @escaping (ClientRuntime.SdkResult<GetDeviceDefinitionVersionOutputResponse, GetDeviceDefinitionVersionOutputError>) -> Void)
    /// Retrieves information about a Lambda function definition, including its creation time and latest version.
    func getFunctionDefinition(input: GetFunctionDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<GetFunctionDefinitionOutputResponse, GetFunctionDefinitionOutputError>) -> Void)
    /// Retrieves information about a Lambda function definition version, including which Lambda functions are included in the version and their configurations.
    func getFunctionDefinitionVersion(input: GetFunctionDefinitionVersionInput, completion: @escaping (ClientRuntime.SdkResult<GetFunctionDefinitionVersionOutputResponse, GetFunctionDefinitionVersionOutputError>) -> Void)
    /// Retrieves information about a group.
    func getGroup(input: GetGroupInput, completion: @escaping (ClientRuntime.SdkResult<GetGroupOutputResponse, GetGroupOutputError>) -> Void)
    /// Retreives the CA associated with a group. Returns the public key of the CA.
    func getGroupCertificateAuthority(input: GetGroupCertificateAuthorityInput, completion: @escaping (ClientRuntime.SdkResult<GetGroupCertificateAuthorityOutputResponse, GetGroupCertificateAuthorityOutputError>) -> Void)
    /// Retrieves the current configuration for the CA used by the group.
    func getGroupCertificateConfiguration(input: GetGroupCertificateConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<GetGroupCertificateConfigurationOutputResponse, GetGroupCertificateConfigurationOutputError>) -> Void)
    /// Retrieves information about a group version.
    func getGroupVersion(input: GetGroupVersionInput, completion: @escaping (ClientRuntime.SdkResult<GetGroupVersionOutputResponse, GetGroupVersionOutputError>) -> Void)
    /// Retrieves information about a logger definition.
    func getLoggerDefinition(input: GetLoggerDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<GetLoggerDefinitionOutputResponse, GetLoggerDefinitionOutputError>) -> Void)
    /// Retrieves information about a logger definition version.
    func getLoggerDefinitionVersion(input: GetLoggerDefinitionVersionInput, completion: @escaping (ClientRuntime.SdkResult<GetLoggerDefinitionVersionOutputResponse, GetLoggerDefinitionVersionOutputError>) -> Void)
    /// Retrieves information about a resource definition, including its creation time and latest version.
    func getResourceDefinition(input: GetResourceDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<GetResourceDefinitionOutputResponse, GetResourceDefinitionOutputError>) -> Void)
    /// Retrieves information about a resource definition version, including which resources are included in the version.
    func getResourceDefinitionVersion(input: GetResourceDefinitionVersionInput, completion: @escaping (ClientRuntime.SdkResult<GetResourceDefinitionVersionOutputResponse, GetResourceDefinitionVersionOutputError>) -> Void)
    /// Retrieves the service role that is attached to your account.
    func getServiceRoleForAccount(input: GetServiceRoleForAccountInput, completion: @escaping (ClientRuntime.SdkResult<GetServiceRoleForAccountOutputResponse, GetServiceRoleForAccountOutputError>) -> Void)
    /// Retrieves information about a subscription definition.
    func getSubscriptionDefinition(input: GetSubscriptionDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<GetSubscriptionDefinitionOutputResponse, GetSubscriptionDefinitionOutputError>) -> Void)
    /// Retrieves information about a subscription definition version.
    func getSubscriptionDefinitionVersion(input: GetSubscriptionDefinitionVersionInput, completion: @escaping (ClientRuntime.SdkResult<GetSubscriptionDefinitionVersionOutputResponse, GetSubscriptionDefinitionVersionOutputError>) -> Void)
    /// Get the runtime configuration of a thing.
    func getThingRuntimeConfiguration(input: GetThingRuntimeConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<GetThingRuntimeConfigurationOutputResponse, GetThingRuntimeConfigurationOutputError>) -> Void)
    /// Gets a paginated list of the deployments that have been started in a bulk deployment operation, and their current deployment status.
    func listBulkDeploymentDetailedReports(input: ListBulkDeploymentDetailedReportsInput, completion: @escaping (ClientRuntime.SdkResult<ListBulkDeploymentDetailedReportsOutputResponse, ListBulkDeploymentDetailedReportsOutputError>) -> Void)
    /// Returns a list of bulk deployments.
    func listBulkDeployments(input: ListBulkDeploymentsInput, completion: @escaping (ClientRuntime.SdkResult<ListBulkDeploymentsOutputResponse, ListBulkDeploymentsOutputError>) -> Void)
    /// Retrieves a list of connector definitions.
    func listConnectorDefinitions(input: ListConnectorDefinitionsInput, completion: @escaping (ClientRuntime.SdkResult<ListConnectorDefinitionsOutputResponse, ListConnectorDefinitionsOutputError>) -> Void)
    /// Lists the versions of a connector definition, which are containers for connectors. Connectors run on the Greengrass core and contain built-in integration with local infrastructure, device protocols, AWS, and other cloud services.
    func listConnectorDefinitionVersions(input: ListConnectorDefinitionVersionsInput, completion: @escaping (ClientRuntime.SdkResult<ListConnectorDefinitionVersionsOutputResponse, ListConnectorDefinitionVersionsOutputError>) -> Void)
    /// Retrieves a list of core definitions.
    func listCoreDefinitions(input: ListCoreDefinitionsInput, completion: @escaping (ClientRuntime.SdkResult<ListCoreDefinitionsOutputResponse, ListCoreDefinitionsOutputError>) -> Void)
    /// Lists the versions of a core definition.
    func listCoreDefinitionVersions(input: ListCoreDefinitionVersionsInput, completion: @escaping (ClientRuntime.SdkResult<ListCoreDefinitionVersionsOutputResponse, ListCoreDefinitionVersionsOutputError>) -> Void)
    /// Returns a history of deployments for the group.
    func listDeployments(input: ListDeploymentsInput, completion: @escaping (ClientRuntime.SdkResult<ListDeploymentsOutputResponse, ListDeploymentsOutputError>) -> Void)
    /// Retrieves a list of device definitions.
    func listDeviceDefinitions(input: ListDeviceDefinitionsInput, completion: @escaping (ClientRuntime.SdkResult<ListDeviceDefinitionsOutputResponse, ListDeviceDefinitionsOutputError>) -> Void)
    /// Lists the versions of a device definition.
    func listDeviceDefinitionVersions(input: ListDeviceDefinitionVersionsInput, completion: @escaping (ClientRuntime.SdkResult<ListDeviceDefinitionVersionsOutputResponse, ListDeviceDefinitionVersionsOutputError>) -> Void)
    /// Retrieves a list of Lambda function definitions.
    func listFunctionDefinitions(input: ListFunctionDefinitionsInput, completion: @escaping (ClientRuntime.SdkResult<ListFunctionDefinitionsOutputResponse, ListFunctionDefinitionsOutputError>) -> Void)
    /// Lists the versions of a Lambda function definition.
    func listFunctionDefinitionVersions(input: ListFunctionDefinitionVersionsInput, completion: @escaping (ClientRuntime.SdkResult<ListFunctionDefinitionVersionsOutputResponse, ListFunctionDefinitionVersionsOutputError>) -> Void)
    /// Retrieves the current CAs for a group.
    func listGroupCertificateAuthorities(input: ListGroupCertificateAuthoritiesInput, completion: @escaping (ClientRuntime.SdkResult<ListGroupCertificateAuthoritiesOutputResponse, ListGroupCertificateAuthoritiesOutputError>) -> Void)
    /// Retrieves a list of groups.
    func listGroups(input: ListGroupsInput, completion: @escaping (ClientRuntime.SdkResult<ListGroupsOutputResponse, ListGroupsOutputError>) -> Void)
    /// Lists the versions of a group.
    func listGroupVersions(input: ListGroupVersionsInput, completion: @escaping (ClientRuntime.SdkResult<ListGroupVersionsOutputResponse, ListGroupVersionsOutputError>) -> Void)
    /// Retrieves a list of logger definitions.
    func listLoggerDefinitions(input: ListLoggerDefinitionsInput, completion: @escaping (ClientRuntime.SdkResult<ListLoggerDefinitionsOutputResponse, ListLoggerDefinitionsOutputError>) -> Void)
    /// Lists the versions of a logger definition.
    func listLoggerDefinitionVersions(input: ListLoggerDefinitionVersionsInput, completion: @escaping (ClientRuntime.SdkResult<ListLoggerDefinitionVersionsOutputResponse, ListLoggerDefinitionVersionsOutputError>) -> Void)
    /// Retrieves a list of resource definitions.
    func listResourceDefinitions(input: ListResourceDefinitionsInput, completion: @escaping (ClientRuntime.SdkResult<ListResourceDefinitionsOutputResponse, ListResourceDefinitionsOutputError>) -> Void)
    /// Lists the versions of a resource definition.
    func listResourceDefinitionVersions(input: ListResourceDefinitionVersionsInput, completion: @escaping (ClientRuntime.SdkResult<ListResourceDefinitionVersionsOutputResponse, ListResourceDefinitionVersionsOutputError>) -> Void)
    /// Retrieves a list of subscription definitions.
    func listSubscriptionDefinitions(input: ListSubscriptionDefinitionsInput, completion: @escaping (ClientRuntime.SdkResult<ListSubscriptionDefinitionsOutputResponse, ListSubscriptionDefinitionsOutputError>) -> Void)
    /// Lists the versions of a subscription definition.
    func listSubscriptionDefinitionVersions(input: ListSubscriptionDefinitionVersionsInput, completion: @escaping (ClientRuntime.SdkResult<ListSubscriptionDefinitionVersionsOutputResponse, ListSubscriptionDefinitionVersionsOutputError>) -> Void)
    /// Retrieves a list of resource tags for a resource arn.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// Resets a group's deployments.
    func resetDeployments(input: ResetDeploymentsInput, completion: @escaping (ClientRuntime.SdkResult<ResetDeploymentsOutputResponse, ResetDeploymentsOutputError>) -> Void)
    /// Deploys multiple groups in one operation. This action starts the bulk deployment of a specified set of group versions. Each group version deployment will be triggered with an adaptive rate that has a fixed upper limit. We recommend that you include an ''X-Amzn-Client-Token'' token in every ''StartBulkDeployment'' request. These requests are idempotent with respect to the token and the request parameters.
    func startBulkDeployment(input: StartBulkDeploymentInput, completion: @escaping (ClientRuntime.SdkResult<StartBulkDeploymentOutputResponse, StartBulkDeploymentOutputError>) -> Void)
    /// Stops the execution of a bulk deployment. This action returns a status of ''Stopping'' until the deployment is stopped. You cannot start a new bulk deployment while a previous deployment is in the ''Stopping'' state. This action doesn't rollback completed deployments or cancel pending deployments.
    func stopBulkDeployment(input: StopBulkDeploymentInput, completion: @escaping (ClientRuntime.SdkResult<StopBulkDeploymentOutputResponse, StopBulkDeploymentOutputError>) -> Void)
    /// Adds tags to a Greengrass resource. Valid resources are 'Group', 'ConnectorDefinition', 'CoreDefinition', 'DeviceDefinition', 'FunctionDefinition', 'LoggerDefinition', 'SubscriptionDefinition', 'ResourceDefinition', and 'BulkDeployment'.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Remove resource tags from a Greengrass Resource.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Updates the connectivity information for the core. Any devices that belong to the group which has this core will receive this information in order to find the location of the core and connect to it.
    func updateConnectivityInfo(input: UpdateConnectivityInfoInput, completion: @escaping (ClientRuntime.SdkResult<UpdateConnectivityInfoOutputResponse, UpdateConnectivityInfoOutputError>) -> Void)
    /// Updates a connector definition.
    func updateConnectorDefinition(input: UpdateConnectorDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateConnectorDefinitionOutputResponse, UpdateConnectorDefinitionOutputError>) -> Void)
    /// Updates a core definition.
    func updateCoreDefinition(input: UpdateCoreDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateCoreDefinitionOutputResponse, UpdateCoreDefinitionOutputError>) -> Void)
    /// Updates a device definition.
    func updateDeviceDefinition(input: UpdateDeviceDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateDeviceDefinitionOutputResponse, UpdateDeviceDefinitionOutputError>) -> Void)
    /// Updates a Lambda function definition.
    func updateFunctionDefinition(input: UpdateFunctionDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateFunctionDefinitionOutputResponse, UpdateFunctionDefinitionOutputError>) -> Void)
    /// Updates a group.
    func updateGroup(input: UpdateGroupInput, completion: @escaping (ClientRuntime.SdkResult<UpdateGroupOutputResponse, UpdateGroupOutputError>) -> Void)
    /// Updates the Certificate expiry time for a group.
    func updateGroupCertificateConfiguration(input: UpdateGroupCertificateConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<UpdateGroupCertificateConfigurationOutputResponse, UpdateGroupCertificateConfigurationOutputError>) -> Void)
    /// Updates a logger definition.
    func updateLoggerDefinition(input: UpdateLoggerDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateLoggerDefinitionOutputResponse, UpdateLoggerDefinitionOutputError>) -> Void)
    /// Updates a resource definition.
    func updateResourceDefinition(input: UpdateResourceDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateResourceDefinitionOutputResponse, UpdateResourceDefinitionOutputError>) -> Void)
    /// Updates a subscription definition.
    func updateSubscriptionDefinition(input: UpdateSubscriptionDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateSubscriptionDefinitionOutputResponse, UpdateSubscriptionDefinitionOutputError>) -> Void)
    /// Updates the runtime configuration of a thing.
    func updateThingRuntimeConfiguration(input: UpdateThingRuntimeConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<UpdateThingRuntimeConfigurationOutputResponse, UpdateThingRuntimeConfigurationOutputError>) -> Void)
}

public enum GreengrassClientTypes {}
