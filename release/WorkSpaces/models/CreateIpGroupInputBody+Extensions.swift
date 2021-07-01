// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateIpGroupInputBody: Equatable {
    public let groupName: String?
    public let groupDesc: String?
    public let userRules: [IpRuleItem]?
    public let tags: [Tag]?
}

extension CreateIpGroupInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case groupDesc = "GroupDesc"
        case groupName = "GroupName"
        case tags = "Tags"
        case userRules = "UserRules"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let groupNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .groupName)
        groupName = groupNameDecoded
        let groupDescDecoded = try containerValues.decodeIfPresent(String.self, forKey: .groupDesc)
        groupDesc = groupDescDecoded
        let userRulesContainer = try containerValues.decodeIfPresent([IpRuleItem?].self, forKey: .userRules)
        var userRulesDecoded0:[IpRuleItem]? = nil
        if let userRulesContainer = userRulesContainer {
            userRulesDecoded0 = [IpRuleItem]()
            for structure0 in userRulesContainer {
                if let structure0 = structure0 {
                    userRulesDecoded0?.append(structure0)
                }
            }
        }
        userRules = userRulesDecoded0
        let tagsContainer = try containerValues.decodeIfPresent([Tag?].self, forKey: .tags)
        var tagsDecoded0:[Tag]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [Tag]()
            for structure0 in tagsContainer {
                if let structure0 = structure0 {
                    tagsDecoded0?.append(structure0)
                }
            }
        }
        tags = tagsDecoded0
    }
}