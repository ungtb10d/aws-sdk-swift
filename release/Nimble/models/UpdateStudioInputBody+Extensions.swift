// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateStudioInputBody: Equatable {
    public let adminRoleArn: String?
    public let displayName: String?
    public let userRoleArn: String?
}

extension UpdateStudioInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case adminRoleArn = "adminRoleArn"
        case displayName = "displayName"
        case userRoleArn = "userRoleArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let adminRoleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .adminRoleArn)
        adminRoleArn = adminRoleArnDecoded
        let displayNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .displayName)
        displayName = displayNameDecoded
        let userRoleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userRoleArn)
        userRoleArn = userRoleArnDecoded
    }
}