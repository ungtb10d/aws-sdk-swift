// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS AppConfig Use AWS AppConfig, a capability of AWS Systems Manager, to create, manage, and quickly deploy application configurations. AppConfig supports controlled deployments to applications of any size and includes built-in validation checks and monitoring. You can use AppConfig with applications hosted on Amazon EC2 instances, AWS Lambda, containers, mobile applications, or IoT devices. To prevent errors when deploying application configurations, especially for production systems where a simple typo could cause an unexpected outage, AppConfig includes validators. A validator provides a syntactic or semantic check to ensure that the configuration you want to deploy works as intended. To validate your application configuration data, you provide a schema or a Lambda function that runs against the configuration. The configuration deployment or update can only proceed when the configuration data is valid. During a configuration deployment, AppConfig monitors the application to ensure that the deployment is successful. If the system encounters an error, AppConfig rolls back the change to minimize impact for your application users. You can configure a deployment strategy for each application or environment that includes deployment criteria, including velocity, bake time, and alarms to monitor. Similar to error monitoring, if a deployment triggers an alarm, AppConfig automatically rolls back to the previous version. AppConfig supports multiple use cases. Here are some examples.
///
/// * Application tuning: Use AppConfig to carefully introduce changes to your application that can only be tested with production traffic.
///
/// * Feature toggle: Use AppConfig to turn on new features that require a timely deployment, such as a product launch or announcement.
///
/// * Allow list: Use AppConfig to allow premium subscribers to access paid content.
///
/// * Operational issues: Use AppConfig to reduce stress on your application when a dependency or other external factor impacts the system.
///
///
/// This reference is intended to be used with the [AWS AppConfig User Guide](http://docs.aws.amazon.com/systems-manager/latest/userguide/appconfig.html).
public protocol AppConfigClientProtocol {
    /// An application in AppConfig is a logical unit of code that provides capabilities for your customers. For example, an application can be a microservice that runs on Amazon EC2 instances, a mobile application installed by your users, a serverless application using Amazon API Gateway and AWS Lambda, or any system you run on behalf of others.
    func createApplication(input: CreateApplicationInput, completion: @escaping (ClientRuntime.SdkResult<CreateApplicationOutputResponse, CreateApplicationOutputError>) -> Void)
    /// Information that enables AppConfig to access the configuration source. Valid configuration sources include Systems Manager (SSM) documents, SSM Parameter Store parameters, and Amazon S3 objects. A configuration profile includes the following information.
    ///
    /// * The Uri location of the configuration data.
    ///
    /// * The AWS Identity and Access Management (IAM) role that provides access to the configuration data.
    ///
    /// * A validator for the configuration data. Available validators include either a JSON Schema or an AWS Lambda function.
    ///
    ///
    /// For more information, see [Create a Configuration and a Configuration Profile](http://docs.aws.amazon.com/systems-manager/latest/userguide/appconfig-creating-configuration-and-profile.html) in the AWS AppConfig User Guide.
    func createConfigurationProfile(input: CreateConfigurationProfileInput, completion: @escaping (ClientRuntime.SdkResult<CreateConfigurationProfileOutputResponse, CreateConfigurationProfileOutputError>) -> Void)
    /// A deployment strategy defines important criteria for rolling out your configuration to the designated targets. A deployment strategy includes: the overall duration required, a percentage of targets to receive the deployment during each interval, an algorithm that defines how percentage grows, and bake time.
    func createDeploymentStrategy(input: CreateDeploymentStrategyInput, completion: @escaping (ClientRuntime.SdkResult<CreateDeploymentStrategyOutputResponse, CreateDeploymentStrategyOutputError>) -> Void)
    /// For each application, you define one or more environments. An environment is a logical deployment group of AppConfig targets, such as applications in a Beta or Production environment. You can also define environments for application subcomponents such as the Web, Mobile and Back-end components for your application. You can configure Amazon CloudWatch alarms for each environment. The system monitors alarms during a configuration deployment. If an alarm is triggered, the system rolls back the configuration.
    func createEnvironment(input: CreateEnvironmentInput, completion: @escaping (ClientRuntime.SdkResult<CreateEnvironmentOutputResponse, CreateEnvironmentOutputError>) -> Void)
    /// Create a new configuration in the AppConfig configuration store.
    func createHostedConfigurationVersion(input: CreateHostedConfigurationVersionInput, completion: @escaping (ClientRuntime.SdkResult<CreateHostedConfigurationVersionOutputResponse, CreateHostedConfigurationVersionOutputError>) -> Void)
    /// Delete an application. Deleting an application does not delete a configuration from a host.
    func deleteApplication(input: DeleteApplicationInput, completion: @escaping (ClientRuntime.SdkResult<DeleteApplicationOutputResponse, DeleteApplicationOutputError>) -> Void)
    /// Delete a configuration profile. Deleting a configuration profile does not delete a configuration from a host.
    func deleteConfigurationProfile(input: DeleteConfigurationProfileInput, completion: @escaping (ClientRuntime.SdkResult<DeleteConfigurationProfileOutputResponse, DeleteConfigurationProfileOutputError>) -> Void)
    /// Delete a deployment strategy. Deleting a deployment strategy does not delete a configuration from a host.
    func deleteDeploymentStrategy(input: DeleteDeploymentStrategyInput, completion: @escaping (ClientRuntime.SdkResult<DeleteDeploymentStrategyOutputResponse, DeleteDeploymentStrategyOutputError>) -> Void)
    /// Delete an environment. Deleting an environment does not delete a configuration from a host.
    func deleteEnvironment(input: DeleteEnvironmentInput, completion: @escaping (ClientRuntime.SdkResult<DeleteEnvironmentOutputResponse, DeleteEnvironmentOutputError>) -> Void)
    /// Delete a version of a configuration from the AppConfig configuration store.
    func deleteHostedConfigurationVersion(input: DeleteHostedConfigurationVersionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteHostedConfigurationVersionOutputResponse, DeleteHostedConfigurationVersionOutputError>) -> Void)
    /// Retrieve information about an application.
    func getApplication(input: GetApplicationInput, completion: @escaping (ClientRuntime.SdkResult<GetApplicationOutputResponse, GetApplicationOutputError>) -> Void)
    /// Receive information about a configuration. AWS AppConfig uses the value of the ClientConfigurationVersion parameter to identify the configuration version on your clients. If you don’t send ClientConfigurationVersion with each call to GetConfiguration, your clients receive the current configuration. You are charged each time your clients receive a configuration. To avoid excess charges, we recommend that you include the ClientConfigurationVersion value with every call to GetConfiguration. This value must be saved on your client. Subsequent calls to GetConfiguration must pass this value by using the ClientConfigurationVersion parameter.
    func getConfiguration(input: GetConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<GetConfigurationOutputResponse, GetConfigurationOutputError>) -> Void)
    /// Retrieve information about a configuration profile.
    func getConfigurationProfile(input: GetConfigurationProfileInput, completion: @escaping (ClientRuntime.SdkResult<GetConfigurationProfileOutputResponse, GetConfigurationProfileOutputError>) -> Void)
    /// Retrieve information about a configuration deployment.
    func getDeployment(input: GetDeploymentInput, completion: @escaping (ClientRuntime.SdkResult<GetDeploymentOutputResponse, GetDeploymentOutputError>) -> Void)
    /// Retrieve information about a deployment strategy. A deployment strategy defines important criteria for rolling out your configuration to the designated targets. A deployment strategy includes: the overall duration required, a percentage of targets to receive the deployment during each interval, an algorithm that defines how percentage grows, and bake time.
    func getDeploymentStrategy(input: GetDeploymentStrategyInput, completion: @escaping (ClientRuntime.SdkResult<GetDeploymentStrategyOutputResponse, GetDeploymentStrategyOutputError>) -> Void)
    /// Retrieve information about an environment. An environment is a logical deployment group of AppConfig applications, such as applications in a Production environment or in an EU_Region environment. Each configuration deployment targets an environment. You can enable one or more Amazon CloudWatch alarms for an environment. If an alarm is triggered during a deployment, AppConfig roles back the configuration.
    func getEnvironment(input: GetEnvironmentInput, completion: @escaping (ClientRuntime.SdkResult<GetEnvironmentOutputResponse, GetEnvironmentOutputError>) -> Void)
    /// Get information about a specific configuration version.
    func getHostedConfigurationVersion(input: GetHostedConfigurationVersionInput, completion: @escaping (ClientRuntime.SdkResult<GetHostedConfigurationVersionOutputResponse, GetHostedConfigurationVersionOutputError>) -> Void)
    /// List all applications in your AWS account.
    func listApplications(input: ListApplicationsInput, completion: @escaping (ClientRuntime.SdkResult<ListApplicationsOutputResponse, ListApplicationsOutputError>) -> Void)
    /// Lists the configuration profiles for an application.
    func listConfigurationProfiles(input: ListConfigurationProfilesInput, completion: @escaping (ClientRuntime.SdkResult<ListConfigurationProfilesOutputResponse, ListConfigurationProfilesOutputError>) -> Void)
    /// Lists the deployments for an environment.
    func listDeployments(input: ListDeploymentsInput, completion: @escaping (ClientRuntime.SdkResult<ListDeploymentsOutputResponse, ListDeploymentsOutputError>) -> Void)
    /// List deployment strategies.
    func listDeploymentStrategies(input: ListDeploymentStrategiesInput, completion: @escaping (ClientRuntime.SdkResult<ListDeploymentStrategiesOutputResponse, ListDeploymentStrategiesOutputError>) -> Void)
    /// List the environments for an application.
    func listEnvironments(input: ListEnvironmentsInput, completion: @escaping (ClientRuntime.SdkResult<ListEnvironmentsOutputResponse, ListEnvironmentsOutputError>) -> Void)
    /// View a list of configurations stored in the AppConfig configuration store by version.
    func listHostedConfigurationVersions(input: ListHostedConfigurationVersionsInput, completion: @escaping (ClientRuntime.SdkResult<ListHostedConfigurationVersionsOutputResponse, ListHostedConfigurationVersionsOutputError>) -> Void)
    /// Retrieves the list of key-value tags assigned to the resource.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// Starts a deployment.
    func startDeployment(input: StartDeploymentInput, completion: @escaping (ClientRuntime.SdkResult<StartDeploymentOutputResponse, StartDeploymentOutputError>) -> Void)
    /// Stops a deployment. This API action works only on deployments that have a status of DEPLOYING. This action moves the deployment to a status of ROLLED_BACK.
    func stopDeployment(input: StopDeploymentInput, completion: @escaping (ClientRuntime.SdkResult<StopDeploymentOutputResponse, StopDeploymentOutputError>) -> Void)
    /// Metadata to assign to an AppConfig resource. Tags help organize and categorize your AppConfig resources. Each tag consists of a key and an optional value, both of which you define. You can specify a maximum of 50 tags for a resource.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Deletes a tag key and value from an AppConfig resource.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Updates an application.
    func updateApplication(input: UpdateApplicationInput, completion: @escaping (ClientRuntime.SdkResult<UpdateApplicationOutputResponse, UpdateApplicationOutputError>) -> Void)
    /// Updates a configuration profile.
    func updateConfigurationProfile(input: UpdateConfigurationProfileInput, completion: @escaping (ClientRuntime.SdkResult<UpdateConfigurationProfileOutputResponse, UpdateConfigurationProfileOutputError>) -> Void)
    /// Updates a deployment strategy.
    func updateDeploymentStrategy(input: UpdateDeploymentStrategyInput, completion: @escaping (ClientRuntime.SdkResult<UpdateDeploymentStrategyOutputResponse, UpdateDeploymentStrategyOutputError>) -> Void)
    /// Updates an environment.
    func updateEnvironment(input: UpdateEnvironmentInput, completion: @escaping (ClientRuntime.SdkResult<UpdateEnvironmentOutputResponse, UpdateEnvironmentOutputError>) -> Void)
    /// Uses the validators in a configuration profile to validate a configuration.
    func validateConfiguration(input: ValidateConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<ValidateConfigurationOutputResponse, ValidateConfigurationOutputError>) -> Void)
}

public enum AppConfigClientTypes {}
