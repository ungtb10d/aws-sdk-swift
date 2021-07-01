// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AutoDeployment: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case enabled = "Enabled"
        case retainStacksOnAccountRemoval = "RetainStacksOnAccountRemoval"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let enabled = enabled {
            try container.encode(enabled, forKey: Key("Enabled"))
        }
        if let retainStacksOnAccountRemoval = retainStacksOnAccountRemoval {
            try container.encode(retainStacksOnAccountRemoval, forKey: Key("RetainStacksOnAccountRemoval"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let enabledDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .enabled)
        enabled = enabledDecoded
        let retainStacksOnAccountRemovalDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .retainStacksOnAccountRemoval)
        retainStacksOnAccountRemoval = retainStacksOnAccountRemovalDecoded
    }
}