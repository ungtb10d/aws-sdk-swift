// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteAppLaunchConfigurationInputBody: Equatable {
    public let appId: String?
}

extension DeleteAppLaunchConfigurationInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case appId
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let appIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .appId)
        appId = appIdDecoded
    }
}