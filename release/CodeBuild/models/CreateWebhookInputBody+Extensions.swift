// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateWebhookInputBody: Equatable {
    public let projectName: String?
    public let branchFilter: String?
    public let filterGroups: [[WebhookFilter]]?
    public let buildType: WebhookBuildType?
}

extension CreateWebhookInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case branchFilter
        case buildType
        case filterGroups
        case projectName
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let projectNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .projectName)
        projectName = projectNameDecoded
        let branchFilterDecoded = try containerValues.decodeIfPresent(String.self, forKey: .branchFilter)
        branchFilter = branchFilterDecoded
        let filterGroupsContainer = try containerValues.decodeIfPresent([[WebhookFilter?]?].self, forKey: .filterGroups)
        var filterGroupsDecoded0:[[WebhookFilter]]? = nil
        if let filterGroupsContainer = filterGroupsContainer {
            filterGroupsDecoded0 = [[WebhookFilter]]()
            for list0 in filterGroupsContainer {
                var list0Decoded0: [WebhookFilter]? = nil
                if let list0 = list0 {
                    list0Decoded0 = [WebhookFilter]()
                    for structure1 in list0 {
                        if let structure1 = structure1 {
                            list0Decoded0?.append(structure1)
                        }
                    }
                }
                if let list0Decoded0 = list0Decoded0 {
                    filterGroupsDecoded0?.append(list0Decoded0)
                }
            }
        }
        filterGroups = filterGroupsDecoded0
        let buildTypeDecoded = try containerValues.decodeIfPresent(WebhookBuildType.self, forKey: .buildType)
        buildType = buildTypeDecoded
    }
}