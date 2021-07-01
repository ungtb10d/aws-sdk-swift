// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateVpcEndpointConnectionNotificationOutputResponseBody: Equatable {
    public let connectionNotification: ConnectionNotification?
    public let clientToken: String?
}

extension CreateVpcEndpointConnectionNotificationOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clientToken = "clientToken"
        case connectionNotification = "connectionNotification"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let connectionNotificationDecoded = try containerValues.decodeIfPresent(ConnectionNotification.self, forKey: .connectionNotification)
        connectionNotification = connectionNotificationDecoded
        let clientTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientToken)
        clientToken = clientTokenDecoded
    }
}