// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Component: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn
        case componentName
        case latestVersion
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
        if let componentName = componentName {
            try encodeContainer.encode(componentName, forKey: .componentName)
        }
        if let latestVersion = latestVersion {
            try encodeContainer.encode(latestVersion, forKey: .latestVersion)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let componentNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .componentName)
        componentName = componentNameDecoded
        let latestVersionDecoded = try containerValues.decodeIfPresent(ComponentLatestVersion.self, forKey: .latestVersion)
        latestVersion = latestVersionDecoded
    }
}