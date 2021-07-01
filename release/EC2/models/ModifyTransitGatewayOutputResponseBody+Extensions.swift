// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ModifyTransitGatewayOutputResponseBody: Equatable {
    public let transitGateway: TransitGateway?
}

extension ModifyTransitGatewayOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case transitGateway = "transitGateway"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let transitGatewayDecoded = try containerValues.decodeIfPresent(TransitGateway.self, forKey: .transitGateway)
        transitGateway = transitGatewayDecoded
    }
}