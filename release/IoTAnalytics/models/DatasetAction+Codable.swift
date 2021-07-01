// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DatasetAction: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case actionName
        case containerAction
        case queryAction
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let actionName = actionName {
            try encodeContainer.encode(actionName, forKey: .actionName)
        }
        if let containerAction = containerAction {
            try encodeContainer.encode(containerAction, forKey: .containerAction)
        }
        if let queryAction = queryAction {
            try encodeContainer.encode(queryAction, forKey: .queryAction)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let actionNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .actionName)
        actionName = actionNameDecoded
        let queryActionDecoded = try containerValues.decodeIfPresent(SqlQueryDatasetAction.self, forKey: .queryAction)
        queryAction = queryActionDecoded
        let containerActionDecoded = try containerValues.decodeIfPresent(ContainerDatasetAction.self, forKey: .containerAction)
        containerAction = containerActionDecoded
    }
}