// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateTransitGatewayConnectPeerOutputResponseBody: Equatable {
    public let transitGatewayConnectPeer: TransitGatewayConnectPeer?
}

extension CreateTransitGatewayConnectPeerOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case transitGatewayConnectPeer = "transitGatewayConnectPeer"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let transitGatewayConnectPeerDecoded = try containerValues.decodeIfPresent(TransitGatewayConnectPeer.self, forKey: .transitGatewayConnectPeer)
        transitGatewayConnectPeer = transitGatewayConnectPeerDecoded
    }
}