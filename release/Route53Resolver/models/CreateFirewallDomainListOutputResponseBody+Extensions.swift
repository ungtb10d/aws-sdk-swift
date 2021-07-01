// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateFirewallDomainListOutputResponseBody: Equatable {
    public let firewallDomainList: FirewallDomainList?
}

extension CreateFirewallDomainListOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case firewallDomainList = "FirewallDomainList"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let firewallDomainListDecoded = try containerValues.decodeIfPresent(FirewallDomainList.self, forKey: .firewallDomainList)
        firewallDomainList = firewallDomainListDecoded
    }
}