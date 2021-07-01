// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ResetServiceSettingOutputResponseBody: Equatable {
    public let serviceSetting: ServiceSetting?
}

extension ResetServiceSettingOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case serviceSetting = "ServiceSetting"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let serviceSettingDecoded = try containerValues.decodeIfPresent(ServiceSetting.self, forKey: .serviceSetting)
        serviceSetting = serviceSettingDecoded
    }
}