// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon EMR on EKS provides a deployment option for Amazon EMR that allows you to run open-source big data frameworks on Amazon Elastic Kubernetes Service (Amazon EKS). With this deployment option, you can focus on running analytics workloads while Amazon EMR on EKS builds, configures, and manages containers for open-source applications. For more information about Amazon EMR on EKS concepts and tasks, see [What is Amazon EMR on EKS](https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/emr-eks.html). Amazon EMR containers is the API name for Amazon EMR on EKS. The emr-containers prefix is used in the following scenarios:
///
/// * It is the prefix in the CLI commands for Amazon EMR on EKS. For example, aws emr-containers start-job-run.
///
/// * It is the prefix before IAM policy actions for Amazon EMR on EKS. For example, "Action": [ "emr-containers:StartJobRun"]. For more information, see [Policy actions for Amazon EMR on EKS](https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-actions).
///
/// * It is the prefix used in Amazon EMR on EKS service endpoints. For example, emr-containers.us-east-2.amazonaws.com. For more information, see [Amazon EMR on EKS Service Endpoints](https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/service-quotas.html#service-endpoints).
public protocol EmrContainersClientProtocol {
    /// Cancels a job run. A job run is a unit of work, such as a Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.
    func cancelJobRun(input: CancelJobRunInput) async throws -> CancelJobRunOutputResponse
    /// Creates a managed endpoint. A managed endpoint is a gateway that connects EMR Studio to Amazon EMR on EKS so that EMR Studio can communicate with your virtual cluster.
    func createManagedEndpoint(input: CreateManagedEndpointInput) async throws -> CreateManagedEndpointOutputResponse
    /// Creates a virtual cluster. Virtual cluster is a managed entity on Amazon EMR on EKS. You can create, describe, list and delete virtual clusters. They do not consume any additional resource in your system. A single virtual cluster maps to a single Kubernetes namespace. Given this relationship, you can model virtual clusters the same way you model Kubernetes namespaces to meet your requirements.
    func createVirtualCluster(input: CreateVirtualClusterInput) async throws -> CreateVirtualClusterOutputResponse
    /// Deletes a managed endpoint. A managed endpoint is a gateway that connects EMR Studio to Amazon EMR on EKS so that EMR Studio can communicate with your virtual cluster.
    func deleteManagedEndpoint(input: DeleteManagedEndpointInput) async throws -> DeleteManagedEndpointOutputResponse
    /// Deletes a virtual cluster. Virtual cluster is a managed entity on Amazon EMR on EKS. You can create, describe, list and delete virtual clusters. They do not consume any additional resource in your system. A single virtual cluster maps to a single Kubernetes namespace. Given this relationship, you can model virtual clusters the same way you model Kubernetes namespaces to meet your requirements.
    func deleteVirtualCluster(input: DeleteVirtualClusterInput) async throws -> DeleteVirtualClusterOutputResponse
    /// Displays detailed information about a job run. A job run is a unit of work, such as a Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.
    func describeJobRun(input: DescribeJobRunInput) async throws -> DescribeJobRunOutputResponse
    /// Displays detailed information about a managed endpoint. A managed endpoint is a gateway that connects EMR Studio to Amazon EMR on EKS so that EMR Studio can communicate with your virtual cluster.
    func describeManagedEndpoint(input: DescribeManagedEndpointInput) async throws -> DescribeManagedEndpointOutputResponse
    /// Displays detailed information about a specified virtual cluster. Virtual cluster is a managed entity on Amazon EMR on EKS. You can create, describe, list and delete virtual clusters. They do not consume any additional resource in your system. A single virtual cluster maps to a single Kubernetes namespace. Given this relationship, you can model virtual clusters the same way you model Kubernetes namespaces to meet your requirements.
    func describeVirtualCluster(input: DescribeVirtualClusterInput) async throws -> DescribeVirtualClusterOutputResponse
    /// Lists job runs based on a set of parameters. A job run is a unit of work, such as a Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.
    func listJobRuns(input: ListJobRunsInput) async throws -> ListJobRunsOutputResponse
    /// Lists managed endpoints based on a set of parameters. A managed endpoint is a gateway that connects EMR Studio to Amazon EMR on EKS so that EMR Studio can communicate with your virtual cluster.
    func listManagedEndpoints(input: ListManagedEndpointsInput) async throws -> ListManagedEndpointsOutputResponse
    /// Lists the tags assigned to the resources.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Lists information about the specified virtual cluster. Virtual cluster is a managed entity on Amazon EMR on EKS. You can create, describe, list and delete virtual clusters. They do not consume any additional resource in your system. A single virtual cluster maps to a single Kubernetes namespace. Given this relationship, you can model virtual clusters the same way you model Kubernetes namespaces to meet your requirements.
    func listVirtualClusters(input: ListVirtualClustersInput) async throws -> ListVirtualClustersOutputResponse
    /// Starts a job run. A job run is a unit of work, such as a Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.
    func startJobRun(input: StartJobRunInput) async throws -> StartJobRunOutputResponse
    /// Assigns tags to resources. A tag is a label that you assign to an AWS resource. Each tag consists of a key and an optional value, both of which you define. Tags enable you to categorize your AWS resources by attributes such as purpose, owner, or environment. When you have many resources of the same type, you can quickly identify a specific resource based on the tags you've assigned to it. For example, you can define a set of tags for your Amazon EMR on EKS clusters to help you track each cluster's owner and stack level. We recommend that you devise a consistent set of tag keys for each resource type. You can then search and filter the resources based on the tags that you add.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes tags from resources.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
}

public enum EmrContainersClientTypes {}
