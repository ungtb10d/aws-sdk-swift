// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension KeyUsage: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case name = "Name"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let name = name {
            try encodeContainer.encode(name.rawValue, forKey: .name)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(KeyUsageName.self, forKey: .name)
        name = nameDecoded
    }
}