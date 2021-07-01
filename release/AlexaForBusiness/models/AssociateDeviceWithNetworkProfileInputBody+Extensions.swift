// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct AssociateDeviceWithNetworkProfileInputBody: Equatable {
    public let deviceArn: String?
    public let networkProfileArn: String?
}

extension AssociateDeviceWithNetworkProfileInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case deviceArn = "DeviceArn"
        case networkProfileArn = "NetworkProfileArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let deviceArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deviceArn)
        deviceArn = deviceArnDecoded
        let networkProfileArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .networkProfileArn)
        networkProfileArn = networkProfileArnDecoded
    }
}