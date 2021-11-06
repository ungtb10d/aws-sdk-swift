// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS Server Migration Service AWS Server Migration Service (AWS SMS) makes it easier and faster for you to migrate your on-premises workloads to AWS. To learn more about AWS SMS, see the following resources:
///
/// * [AWS Server Migration Service product page](http://aws.amazon.com/server-migration-service/)
///
/// * [AWS Server Migration Service User Guide](https://docs.aws.amazon.com/server-migration-service/latest/userguide/)
public protocol SmsClientProtocol {
    /// Creates an application. An application consists of one or more server groups. Each server group contain one or more servers.
    func createApp(input: CreateAppInput, completion: @escaping (ClientRuntime.SdkResult<CreateAppOutputResponse, CreateAppOutputError>) -> Void)
    /// Creates a replication job. The replication job schedules periodic replication runs to replicate your server to AWS. Each replication run creates an Amazon Machine Image (AMI).
    func createReplicationJob(input: CreateReplicationJobInput, completion: @escaping (ClientRuntime.SdkResult<CreateReplicationJobOutputResponse, CreateReplicationJobOutputError>) -> Void)
    /// Deletes the specified application. Optionally deletes the launched stack associated with the application and all AWS SMS replication jobs for servers in the application.
    func deleteApp(input: DeleteAppInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAppOutputResponse, DeleteAppOutputError>) -> Void)
    /// Deletes the launch configuration for the specified application.
    func deleteAppLaunchConfiguration(input: DeleteAppLaunchConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAppLaunchConfigurationOutputResponse, DeleteAppLaunchConfigurationOutputError>) -> Void)
    /// Deletes the replication configuration for the specified application.
    func deleteAppReplicationConfiguration(input: DeleteAppReplicationConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAppReplicationConfigurationOutputResponse, DeleteAppReplicationConfigurationOutputError>) -> Void)
    /// Deletes the validation configuration for the specified application.
    func deleteAppValidationConfiguration(input: DeleteAppValidationConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAppValidationConfigurationOutputResponse, DeleteAppValidationConfigurationOutputError>) -> Void)
    /// Deletes the specified replication job. After you delete a replication job, there are no further replication runs. AWS deletes the contents of the Amazon S3 bucket used to store AWS SMS artifacts. The AMIs created by the replication runs are not deleted.
    func deleteReplicationJob(input: DeleteReplicationJobInput, completion: @escaping (ClientRuntime.SdkResult<DeleteReplicationJobOutputResponse, DeleteReplicationJobOutputError>) -> Void)
    /// Deletes all servers from your server catalog.
    func deleteServerCatalog(input: DeleteServerCatalogInput, completion: @escaping (ClientRuntime.SdkResult<DeleteServerCatalogOutputResponse, DeleteServerCatalogOutputError>) -> Void)
    /// Disassociates the specified connector from AWS SMS. After you disassociate a connector, it is no longer available to support replication jobs.
    func disassociateConnector(input: DisassociateConnectorInput, completion: @escaping (ClientRuntime.SdkResult<DisassociateConnectorOutputResponse, DisassociateConnectorOutputError>) -> Void)
    /// Generates a target change set for a currently launched stack and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.
    func generateChangeSet(input: GenerateChangeSetInput, completion: @escaping (ClientRuntime.SdkResult<GenerateChangeSetOutputResponse, GenerateChangeSetOutputError>) -> Void)
    /// Generates an AWS CloudFormation template based on the current launch configuration and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.
    func generateTemplate(input: GenerateTemplateInput, completion: @escaping (ClientRuntime.SdkResult<GenerateTemplateOutputResponse, GenerateTemplateOutputError>) -> Void)
    /// Retrieve information about the specified application.
    func getApp(input: GetAppInput, completion: @escaping (ClientRuntime.SdkResult<GetAppOutputResponse, GetAppOutputError>) -> Void)
    /// Retrieves the application launch configuration associated with the specified application.
    func getAppLaunchConfiguration(input: GetAppLaunchConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<GetAppLaunchConfigurationOutputResponse, GetAppLaunchConfigurationOutputError>) -> Void)
    /// Retrieves the application replication configuration associated with the specified application.
    func getAppReplicationConfiguration(input: GetAppReplicationConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<GetAppReplicationConfigurationOutputResponse, GetAppReplicationConfigurationOutputError>) -> Void)
    /// Retrieves information about a configuration for validating an application.
    func getAppValidationConfiguration(input: GetAppValidationConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<GetAppValidationConfigurationOutputResponse, GetAppValidationConfigurationOutputError>) -> Void)
    /// Retrieves output from validating an application.
    func getAppValidationOutput(input: GetAppValidationOutputInput, completion: @escaping (ClientRuntime.SdkResult<GetAppValidationOutputOutputResponse, GetAppValidationOutputOutputError>) -> Void)
    /// Describes the connectors registered with the AWS SMS.
    func getConnectors(input: GetConnectorsInput, completion: @escaping (ClientRuntime.SdkResult<GetConnectorsOutputResponse, GetConnectorsOutputError>) -> Void)
    /// Describes the specified replication job or all of your replication jobs.
    func getReplicationJobs(input: GetReplicationJobsInput, completion: @escaping (ClientRuntime.SdkResult<GetReplicationJobsOutputResponse, GetReplicationJobsOutputError>) -> Void)
    /// Describes the replication runs for the specified replication job.
    func getReplicationRuns(input: GetReplicationRunsInput, completion: @escaping (ClientRuntime.SdkResult<GetReplicationRunsOutputResponse, GetReplicationRunsOutputError>) -> Void)
    /// Describes the servers in your server catalog. Before you can describe your servers, you must import them using [ImportServerCatalog].
    func getServers(input: GetServersInput, completion: @escaping (ClientRuntime.SdkResult<GetServersOutputResponse, GetServersOutputError>) -> Void)
    /// Allows application import from AWS Migration Hub.
    func importAppCatalog(input: ImportAppCatalogInput, completion: @escaping (ClientRuntime.SdkResult<ImportAppCatalogOutputResponse, ImportAppCatalogOutputError>) -> Void)
    /// Gathers a complete list of on-premises servers. Connectors must be installed and monitoring all servers to import. This call returns immediately, but might take additional time to retrieve all the servers.
    func importServerCatalog(input: ImportServerCatalogInput, completion: @escaping (ClientRuntime.SdkResult<ImportServerCatalogOutputResponse, ImportServerCatalogOutputError>) -> Void)
    /// Launches the specified application as a stack in AWS CloudFormation.
    func launchApp(input: LaunchAppInput, completion: @escaping (ClientRuntime.SdkResult<LaunchAppOutputResponse, LaunchAppOutputError>) -> Void)
    /// Retrieves summaries for all applications.
    func listApps(input: ListAppsInput, completion: @escaping (ClientRuntime.SdkResult<ListAppsOutputResponse, ListAppsOutputError>) -> Void)
    /// Provides information to AWS SMS about whether application validation is successful.
    func notifyAppValidationOutput(input: NotifyAppValidationOutputInput, completion: @escaping (ClientRuntime.SdkResult<NotifyAppValidationOutputOutputResponse, NotifyAppValidationOutputOutputError>) -> Void)
    /// Creates or updates the launch configuration for the specified application.
    func putAppLaunchConfiguration(input: PutAppLaunchConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<PutAppLaunchConfigurationOutputResponse, PutAppLaunchConfigurationOutputError>) -> Void)
    /// Creates or updates the replication configuration for the specified application.
    func putAppReplicationConfiguration(input: PutAppReplicationConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<PutAppReplicationConfigurationOutputResponse, PutAppReplicationConfigurationOutputError>) -> Void)
    /// Creates or updates a validation configuration for the specified application.
    func putAppValidationConfiguration(input: PutAppValidationConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<PutAppValidationConfigurationOutputResponse, PutAppValidationConfigurationOutputError>) -> Void)
    /// Starts replicating the specified application by creating replication jobs for each server in the application.
    func startAppReplication(input: StartAppReplicationInput, completion: @escaping (ClientRuntime.SdkResult<StartAppReplicationOutputResponse, StartAppReplicationOutputError>) -> Void)
    /// Starts an on-demand replication run for the specified application.
    func startOnDemandAppReplication(input: StartOnDemandAppReplicationInput, completion: @escaping (ClientRuntime.SdkResult<StartOnDemandAppReplicationOutputResponse, StartOnDemandAppReplicationOutputError>) -> Void)
    /// Starts an on-demand replication run for the specified replication job. This replication run starts immediately. This replication run is in addition to the ones already scheduled. There is a limit on the number of on-demand replications runs that you can request in a 24-hour period.
    func startOnDemandReplicationRun(input: StartOnDemandReplicationRunInput, completion: @escaping (ClientRuntime.SdkResult<StartOnDemandReplicationRunOutputResponse, StartOnDemandReplicationRunOutputError>) -> Void)
    /// Stops replicating the specified application by deleting the replication job for each server in the application.
    func stopAppReplication(input: StopAppReplicationInput, completion: @escaping (ClientRuntime.SdkResult<StopAppReplicationOutputResponse, StopAppReplicationOutputError>) -> Void)
    /// Terminates the stack for the specified application.
    func terminateApp(input: TerminateAppInput, completion: @escaping (ClientRuntime.SdkResult<TerminateAppOutputResponse, TerminateAppOutputError>) -> Void)
    /// Updates the specified application.
    func updateApp(input: UpdateAppInput, completion: @escaping (ClientRuntime.SdkResult<UpdateAppOutputResponse, UpdateAppOutputError>) -> Void)
    /// Updates the specified settings for the specified replication job.
    func updateReplicationJob(input: UpdateReplicationJobInput, completion: @escaping (ClientRuntime.SdkResult<UpdateReplicationJobOutputResponse, UpdateReplicationJobOutputError>) -> Void)
}

public enum SmsClientTypes {}
