// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct RegisterApplicationRevisionInputBody: Equatable {
    public let applicationName: String?
    public let description: String?
    public let revision: RevisionLocation?
}

extension RegisterApplicationRevisionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case applicationName
        case description
        case revision
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let applicationNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .applicationName)
        applicationName = applicationNameDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let revisionDecoded = try containerValues.decodeIfPresent(RevisionLocation.self, forKey: .revision)
        revision = revisionDecoded
    }
}