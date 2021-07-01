// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateDashboardInputBody: Equatable {
    public let dashboardName: String?
    public let dashboardDescription: String?
    public let dashboardDefinition: String?
    public let clientToken: String?
}

extension UpdateDashboardInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clientToken
        case dashboardDefinition
        case dashboardDescription
        case dashboardName
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dashboardNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .dashboardName)
        dashboardName = dashboardNameDecoded
        let dashboardDescriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .dashboardDescription)
        dashboardDescription = dashboardDescriptionDecoded
        let dashboardDefinitionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .dashboardDefinition)
        dashboardDefinition = dashboardDefinitionDecoded
        let clientTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientToken)
        clientToken = clientTokenDecoded
    }
}