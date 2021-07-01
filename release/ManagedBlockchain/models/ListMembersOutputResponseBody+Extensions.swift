// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListMembersOutputResponseBody: Equatable {
    public let members: [MemberSummary]?
    public let nextToken: String?
}

extension ListMembersOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case members = "Members"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let membersContainer = try containerValues.decodeIfPresent([MemberSummary?].self, forKey: .members)
        var membersDecoded0:[MemberSummary]? = nil
        if let membersContainer = membersContainer {
            membersDecoded0 = [MemberSummary]()
            for structure0 in membersContainer {
                if let structure0 = structure0 {
                    membersDecoded0?.append(structure0)
                }
            }
        }
        members = membersDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}