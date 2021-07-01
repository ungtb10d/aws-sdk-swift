// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct BatchGetDeploymentInstancesInputBody: Equatable {
    public let deploymentId: String?
    public let instanceIds: [String]?
}

extension BatchGetDeploymentInstancesInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case deploymentId
        case instanceIds
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let deploymentIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deploymentId)
        deploymentId = deploymentIdDecoded
        let instanceIdsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .instanceIds)
        var instanceIdsDecoded0:[String]? = nil
        if let instanceIdsContainer = instanceIdsContainer {
            instanceIdsDecoded0 = [String]()
            for string0 in instanceIdsContainer {
                if let string0 = string0 {
                    instanceIdsDecoded0?.append(string0)
                }
            }
        }
        instanceIds = instanceIdsDecoded0
    }
}