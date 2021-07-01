// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateGatewayInputBody: Equatable {
    public let gatewayName: String?
}

extension UpdateGatewayInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case gatewayName
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let gatewayNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .gatewayName)
        gatewayName = gatewayNameDecoded
    }
}