// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteGatewayGroupInputBody: Equatable {
    public let gatewayGroupArn: String?
}

extension DeleteGatewayGroupInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case gatewayGroupArn = "GatewayGroupArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let gatewayGroupArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .gatewayGroupArn)
        gatewayGroupArn = gatewayGroupArnDecoded
    }
}