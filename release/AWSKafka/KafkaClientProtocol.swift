// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// The operations for managing an Amazon MSK cluster.
public protocol KafkaClientProtocol {
    /// Associates one or more Scram Secrets with an Amazon MSK cluster.
    func batchAssociateScramSecret(input: BatchAssociateScramSecretInput, completion: @escaping (ClientRuntime.SdkResult<BatchAssociateScramSecretOutputResponse, BatchAssociateScramSecretOutputError>) -> Void)
    /// Disassociates one or more Scram Secrets from an Amazon MSK cluster.
    func batchDisassociateScramSecret(input: BatchDisassociateScramSecretInput, completion: @escaping (ClientRuntime.SdkResult<BatchDisassociateScramSecretOutputResponse, BatchDisassociateScramSecretOutputError>) -> Void)
    /// Creates a new MSK cluster.
    func createCluster(input: CreateClusterInput, completion: @escaping (ClientRuntime.SdkResult<CreateClusterOutputResponse, CreateClusterOutputError>) -> Void)
    /// Creates a new MSK configuration.
    func createConfiguration(input: CreateConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<CreateConfigurationOutputResponse, CreateConfigurationOutputError>) -> Void)
    /// Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in the request.
    func deleteCluster(input: DeleteClusterInput, completion: @escaping (ClientRuntime.SdkResult<DeleteClusterOutputResponse, DeleteClusterOutputError>) -> Void)
    /// Deletes an MSK Configuration.
    func deleteConfiguration(input: DeleteConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<DeleteConfigurationOutputResponse, DeleteConfigurationOutputError>) -> Void)
    /// Returns a description of the MSK cluster whose Amazon Resource Name (ARN) is specified in the request.
    func describeCluster(input: DescribeClusterInput, completion: @escaping (ClientRuntime.SdkResult<DescribeClusterOutputResponse, DescribeClusterOutputError>) -> Void)
    /// Returns a description of the cluster operation specified by the ARN.
    func describeClusterOperation(input: DescribeClusterOperationInput, completion: @escaping (ClientRuntime.SdkResult<DescribeClusterOperationOutputResponse, DescribeClusterOperationOutputError>) -> Void)
    /// Returns a description of this MSK configuration.
    func describeConfiguration(input: DescribeConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<DescribeConfigurationOutputResponse, DescribeConfigurationOutputError>) -> Void)
    /// Returns a description of this revision of the configuration.
    func describeConfigurationRevision(input: DescribeConfigurationRevisionInput, completion: @escaping (ClientRuntime.SdkResult<DescribeConfigurationRevisionOutputResponse, DescribeConfigurationRevisionOutputError>) -> Void)
    /// A list of brokers that a client application can use to bootstrap.
    func getBootstrapBrokers(input: GetBootstrapBrokersInput, completion: @escaping (ClientRuntime.SdkResult<GetBootstrapBrokersOutputResponse, GetBootstrapBrokersOutputError>) -> Void)
    /// Gets the Apache Kafka versions to which you can update the MSK cluster.
    func getCompatibleKafkaVersions(input: GetCompatibleKafkaVersionsInput, completion: @escaping (ClientRuntime.SdkResult<GetCompatibleKafkaVersionsOutputResponse, GetCompatibleKafkaVersionsOutputError>) -> Void)
    /// Returns a list of all the operations that have been performed on the specified MSK cluster.
    func listClusterOperations(input: ListClusterOperationsInput, completion: @escaping (ClientRuntime.SdkResult<ListClusterOperationsOutputResponse, ListClusterOperationsOutputError>) -> Void)
    /// Returns a list of all the MSK clusters in the current Region.
    func listClusters(input: ListClustersInput, completion: @escaping (ClientRuntime.SdkResult<ListClustersOutputResponse, ListClustersOutputError>) -> Void)
    /// Returns a list of all the MSK configurations in this Region.
    func listConfigurationRevisions(input: ListConfigurationRevisionsInput, completion: @escaping (ClientRuntime.SdkResult<ListConfigurationRevisionsOutputResponse, ListConfigurationRevisionsOutputError>) -> Void)
    /// Returns a list of all the MSK configurations in this Region.
    func listConfigurations(input: ListConfigurationsInput, completion: @escaping (ClientRuntime.SdkResult<ListConfigurationsOutputResponse, ListConfigurationsOutputError>) -> Void)
    /// Returns a list of Kafka versions.
    func listKafkaVersions(input: ListKafkaVersionsInput, completion: @escaping (ClientRuntime.SdkResult<ListKafkaVersionsOutputResponse, ListKafkaVersionsOutputError>) -> Void)
    /// Returns a list of the broker nodes in the cluster.
    func listNodes(input: ListNodesInput, completion: @escaping (ClientRuntime.SdkResult<ListNodesOutputResponse, ListNodesOutputError>) -> Void)
    /// Returns a list of the Scram Secrets associated with an Amazon MSK cluster.
    func listScramSecrets(input: ListScramSecretsInput, completion: @escaping (ClientRuntime.SdkResult<ListScramSecretsOutputResponse, ListScramSecretsOutputError>) -> Void)
    /// Returns a list of the tags associated with the specified resource.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// Reboots brokers.
    func rebootBroker(input: RebootBrokerInput, completion: @escaping (ClientRuntime.SdkResult<RebootBrokerOutputResponse, RebootBrokerOutputError>) -> Void)
    /// Adds tags to the specified MSK resource.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Removes the tags associated with the keys that are provided in the query.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Updates the number of broker nodes in the cluster.
    func updateBrokerCount(input: UpdateBrokerCountInput, completion: @escaping (ClientRuntime.SdkResult<UpdateBrokerCountOutputResponse, UpdateBrokerCountOutputError>) -> Void)
    /// Updates the EBS storage associated with MSK brokers.
    func updateBrokerStorage(input: UpdateBrokerStorageInput, completion: @escaping (ClientRuntime.SdkResult<UpdateBrokerStorageOutputResponse, UpdateBrokerStorageOutputError>) -> Void)
    /// Updates EC2 instance type.
    func updateBrokerType(input: UpdateBrokerTypeInput, completion: @escaping (ClientRuntime.SdkResult<UpdateBrokerTypeOutputResponse, UpdateBrokerTypeOutputError>) -> Void)
    /// Updates the cluster with the configuration that is specified in the request body.
    func updateClusterConfiguration(input: UpdateClusterConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<UpdateClusterConfigurationOutputResponse, UpdateClusterConfigurationOutputError>) -> Void)
    /// Updates the Apache Kafka version for the cluster.
    func updateClusterKafkaVersion(input: UpdateClusterKafkaVersionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateClusterKafkaVersionOutputResponse, UpdateClusterKafkaVersionOutputError>) -> Void)
    /// Updates an MSK configuration.
    func updateConfiguration(input: UpdateConfigurationInput, completion: @escaping (ClientRuntime.SdkResult<UpdateConfigurationOutputResponse, UpdateConfigurationOutputError>) -> Void)
    /// Updates the monitoring settings for the cluster. You can use this operation to specify which Apache Kafka metrics you want Amazon MSK to send to Amazon CloudWatch. You can also specify settings for open monitoring with Prometheus.
    func updateMonitoring(input: UpdateMonitoringInput, completion: @escaping (ClientRuntime.SdkResult<UpdateMonitoringOutputResponse, UpdateMonitoringOutputError>) -> Void)
    /// Updates the security settings for the cluster. You can use this operation to specify encryption and authentication on existing clusters.
    func updateSecurity(input: UpdateSecurityInput, completion: @escaping (ClientRuntime.SdkResult<UpdateSecurityOutputResponse, UpdateSecurityOutputError>) -> Void)
}

public enum KafkaClientTypes {}
