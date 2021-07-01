// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct RestoreAddressToClassicOutputResponseBody: Equatable {
    public let publicIp: String?
    public let status: Status?
}

extension RestoreAddressToClassicOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case publicIp = "publicIp"
        case status = "status"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let publicIpDecoded = try containerValues.decodeIfPresent(String.self, forKey: .publicIp)
        publicIp = publicIpDecoded
        let statusDecoded = try containerValues.decodeIfPresent(Status.self, forKey: .status)
        status = statusDecoded
    }
}