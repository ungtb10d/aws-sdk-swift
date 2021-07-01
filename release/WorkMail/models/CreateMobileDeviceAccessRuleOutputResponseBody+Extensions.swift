// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateMobileDeviceAccessRuleOutputResponseBody: Equatable {
    public let mobileDeviceAccessRuleId: String?
}

extension CreateMobileDeviceAccessRuleOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case mobileDeviceAccessRuleId = "MobileDeviceAccessRuleId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let mobileDeviceAccessRuleIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .mobileDeviceAccessRuleId)
        mobileDeviceAccessRuleId = mobileDeviceAccessRuleIdDecoded
    }
}