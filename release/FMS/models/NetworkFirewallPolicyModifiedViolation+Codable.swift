// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension NetworkFirewallPolicyModifiedViolation: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case currentPolicyDescription = "CurrentPolicyDescription"
        case expectedPolicyDescription = "ExpectedPolicyDescription"
        case violationTarget = "ViolationTarget"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let currentPolicyDescription = currentPolicyDescription {
            try encodeContainer.encode(currentPolicyDescription, forKey: .currentPolicyDescription)
        }
        if let expectedPolicyDescription = expectedPolicyDescription {
            try encodeContainer.encode(expectedPolicyDescription, forKey: .expectedPolicyDescription)
        }
        if let violationTarget = violationTarget {
            try encodeContainer.encode(violationTarget, forKey: .violationTarget)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let violationTargetDecoded = try containerValues.decodeIfPresent(String.self, forKey: .violationTarget)
        violationTarget = violationTargetDecoded
        let currentPolicyDescriptionDecoded = try containerValues.decodeIfPresent(NetworkFirewallPolicyDescription.self, forKey: .currentPolicyDescription)
        currentPolicyDescription = currentPolicyDescriptionDecoded
        let expectedPolicyDescriptionDecoded = try containerValues.decodeIfPresent(NetworkFirewallPolicyDescription.self, forKey: .expectedPolicyDescription)
        expectedPolicyDescription = expectedPolicyDescriptionDecoded
    }
}