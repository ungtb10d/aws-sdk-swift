// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateProjectOutputResponseBody: Equatable {
    public let lastModifiedDate: Date?
    public let name: String?
}

extension UpdateProjectOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case lastModifiedDate = "LastModifiedDate"
        case name = "Name"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let lastModifiedDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastModifiedDate)
        lastModifiedDate = lastModifiedDateDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
    }
}