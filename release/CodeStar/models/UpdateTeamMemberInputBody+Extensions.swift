// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateTeamMemberInputBody: Equatable {
    public let projectId: String?
    public let userArn: String?
    public let projectRole: String?
    public let remoteAccessAllowed: Bool
}

extension UpdateTeamMemberInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case projectId
        case projectRole
        case remoteAccessAllowed
        case userArn
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let projectIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .projectId)
        projectId = projectIdDecoded
        let userArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userArn)
        userArn = userArnDecoded
        let projectRoleDecoded = try containerValues.decodeIfPresent(String.self, forKey: .projectRole)
        projectRole = projectRoleDecoded
        let remoteAccessAllowedDecoded = try containerValues.decode(Bool.self, forKey: .remoteAccessAllowed)
        remoteAccessAllowed = remoteAccessAllowedDecoded
    }
}