// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PackageVersionSummary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case revision
        case status
        case version
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let revision = revision {
            try encodeContainer.encode(revision, forKey: .revision)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
        if let version = version {
            try encodeContainer.encode(version, forKey: .version)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let versionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .version)
        version = versionDecoded
        let revisionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .revision)
        revision = revisionDecoded
        let statusDecoded = try containerValues.decodeIfPresent(PackageVersionStatus.self, forKey: .status)
        status = statusDecoded
    }
}