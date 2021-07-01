// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeModelQualityJobDefinitionOutputResponse: Equatable {
    /// <p>The time at which the model quality job was created.</p>
    public let creationTime: Date?
    /// <p>The Amazon Resource Name (ARN) of the model quality job.</p>
    public let jobDefinitionArn: String?
    /// <p>The name of the quality job definition. The name must be unique within an AWS Region in
    ///          the AWS account.</p>
    public let jobDefinitionName: String?
    /// <p>Identifies the resources to deploy for a monitoring job.</p>
    public let jobResources: MonitoringResources?
    /// <p>Configures the model quality job to run a specified Docker container image.</p>
    public let modelQualityAppSpecification: ModelQualityAppSpecification?
    /// <p>The baseline configuration for a model quality job.</p>
    public let modelQualityBaselineConfig: ModelQualityBaselineConfig?
    /// <p>Inputs for the model quality job.</p>
    public let modelQualityJobInput: ModelQualityJobInput?
    /// <p>The output configuration for monitoring jobs.</p>
    public let modelQualityJobOutputConfig: MonitoringOutputConfig?
    /// <p>Networking options for a model quality job.</p>
    public let networkConfig: MonitoringNetworkConfig?
    /// <p>The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to
    ///          perform tasks on your behalf.</p>
    public let roleArn: String?
    /// <p>A time limit for how long the monitoring job is allowed to run before stopping.</p>
    public let stoppingCondition: MonitoringStoppingCondition?

    public init (
        creationTime: Date? = nil,
        jobDefinitionArn: String? = nil,
        jobDefinitionName: String? = nil,
        jobResources: MonitoringResources? = nil,
        modelQualityAppSpecification: ModelQualityAppSpecification? = nil,
        modelQualityBaselineConfig: ModelQualityBaselineConfig? = nil,
        modelQualityJobInput: ModelQualityJobInput? = nil,
        modelQualityJobOutputConfig: MonitoringOutputConfig? = nil,
        networkConfig: MonitoringNetworkConfig? = nil,
        roleArn: String? = nil,
        stoppingCondition: MonitoringStoppingCondition? = nil
    )
    {
        self.creationTime = creationTime
        self.jobDefinitionArn = jobDefinitionArn
        self.jobDefinitionName = jobDefinitionName
        self.jobResources = jobResources
        self.modelQualityAppSpecification = modelQualityAppSpecification
        self.modelQualityBaselineConfig = modelQualityBaselineConfig
        self.modelQualityJobInput = modelQualityJobInput
        self.modelQualityJobOutputConfig = modelQualityJobOutputConfig
        self.networkConfig = networkConfig
        self.roleArn = roleArn
        self.stoppingCondition = stoppingCondition
    }
}

extension DescribeModelQualityJobDefinitionOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeModelQualityJobDefinitionOutputResponse(creationTime: \(String(describing: creationTime)), jobDefinitionArn: \(String(describing: jobDefinitionArn)), jobDefinitionName: \(String(describing: jobDefinitionName)), jobResources: \(String(describing: jobResources)), modelQualityAppSpecification: \(String(describing: modelQualityAppSpecification)), modelQualityBaselineConfig: \(String(describing: modelQualityBaselineConfig)), modelQualityJobInput: \(String(describing: modelQualityJobInput)), modelQualityJobOutputConfig: \(String(describing: modelQualityJobOutputConfig)), networkConfig: \(String(describing: networkConfig)), roleArn: \(String(describing: roleArn)), stoppingCondition: \(String(describing: stoppingCondition)))"}
}