// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeStateMachineForExecutionOutputResponseBody: Equatable {
    public let stateMachineArn: String?
    public let name: String?
    public let definition: String?
    public let roleArn: String?
    public let updateDate: Date?
    public let loggingConfiguration: LoggingConfiguration?
    public let tracingConfiguration: TracingConfiguration?
}

extension DescribeStateMachineForExecutionOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case definition
        case loggingConfiguration
        case name
        case roleArn
        case stateMachineArn
        case tracingConfiguration
        case updateDate
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let stateMachineArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .stateMachineArn)
        stateMachineArn = stateMachineArnDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let definitionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .definition)
        definition = definitionDecoded
        let roleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleArn)
        roleArn = roleArnDecoded
        let updateDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .updateDate)
        updateDate = updateDateDecoded
        let loggingConfigurationDecoded = try containerValues.decodeIfPresent(LoggingConfiguration.self, forKey: .loggingConfiguration)
        loggingConfiguration = loggingConfigurationDecoded
        let tracingConfigurationDecoded = try containerValues.decodeIfPresent(TracingConfiguration.self, forKey: .tracingConfiguration)
        tracingConfiguration = tracingConfigurationDecoded
    }
}