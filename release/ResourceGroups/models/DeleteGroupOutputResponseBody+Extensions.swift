// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteGroupOutputResponseBody: Equatable {
    public let group: Group?
}

extension DeleteGroupOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case group = "Group"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let groupDecoded = try containerValues.decodeIfPresent(Group.self, forKey: .group)
        group = groupDecoded
    }
}