// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateTrafficMirrorFilterRuleOutputResponseBody: Equatable {
    public let trafficMirrorFilterRule: TrafficMirrorFilterRule?
    public let clientToken: String?
}

extension CreateTrafficMirrorFilterRuleOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clientToken = "clientToken"
        case trafficMirrorFilterRule = "trafficMirrorFilterRule"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let trafficMirrorFilterRuleDecoded = try containerValues.decodeIfPresent(TrafficMirrorFilterRule.self, forKey: .trafficMirrorFilterRule)
        trafficMirrorFilterRule = trafficMirrorFilterRuleDecoded
        let clientTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientToken)
        clientToken = clientTokenDecoded
    }
}