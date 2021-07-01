// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DeploymentTarget: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case cloudFormationTarget
        case deploymentTargetType
        case ecsTarget
        case instanceTarget
        case lambdaTarget
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let cloudFormationTarget = cloudFormationTarget {
            try encodeContainer.encode(cloudFormationTarget, forKey: .cloudFormationTarget)
        }
        if let deploymentTargetType = deploymentTargetType {
            try encodeContainer.encode(deploymentTargetType.rawValue, forKey: .deploymentTargetType)
        }
        if let ecsTarget = ecsTarget {
            try encodeContainer.encode(ecsTarget, forKey: .ecsTarget)
        }
        if let instanceTarget = instanceTarget {
            try encodeContainer.encode(instanceTarget, forKey: .instanceTarget)
        }
        if let lambdaTarget = lambdaTarget {
            try encodeContainer.encode(lambdaTarget, forKey: .lambdaTarget)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let deploymentTargetTypeDecoded = try containerValues.decodeIfPresent(DeploymentTargetType.self, forKey: .deploymentTargetType)
        deploymentTargetType = deploymentTargetTypeDecoded
        let instanceTargetDecoded = try containerValues.decodeIfPresent(InstanceTarget.self, forKey: .instanceTarget)
        instanceTarget = instanceTargetDecoded
        let lambdaTargetDecoded = try containerValues.decodeIfPresent(LambdaTarget.self, forKey: .lambdaTarget)
        lambdaTarget = lambdaTargetDecoded
        let ecsTargetDecoded = try containerValues.decodeIfPresent(ECSTarget.self, forKey: .ecsTarget)
        ecsTarget = ecsTargetDecoded
        let cloudFormationTargetDecoded = try containerValues.decodeIfPresent(CloudFormationTarget.self, forKey: .cloudFormationTarget)
        cloudFormationTarget = cloudFormationTargetDecoded
    }
}