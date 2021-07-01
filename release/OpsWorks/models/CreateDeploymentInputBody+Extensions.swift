// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateDeploymentInputBody: Equatable {
    public let stackId: String?
    public let appId: String?
    public let instanceIds: [String]?
    public let layerIds: [String]?
    public let command: DeploymentCommand?
    public let comment: String?
    public let customJson: String?
}

extension CreateDeploymentInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case appId = "AppId"
        case command = "Command"
        case comment = "Comment"
        case customJson = "CustomJson"
        case instanceIds = "InstanceIds"
        case layerIds = "LayerIds"
        case stackId = "StackId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let stackIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .stackId)
        stackId = stackIdDecoded
        let appIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .appId)
        appId = appIdDecoded
        let instanceIdsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .instanceIds)
        var instanceIdsDecoded0:[String]? = nil
        if let instanceIdsContainer = instanceIdsContainer {
            instanceIdsDecoded0 = [String]()
            for string0 in instanceIdsContainer {
                if let string0 = string0 {
                    instanceIdsDecoded0?.append(string0)
                }
            }
        }
        instanceIds = instanceIdsDecoded0
        let layerIdsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .layerIds)
        var layerIdsDecoded0:[String]? = nil
        if let layerIdsContainer = layerIdsContainer {
            layerIdsDecoded0 = [String]()
            for string0 in layerIdsContainer {
                if let string0 = string0 {
                    layerIdsDecoded0?.append(string0)
                }
            }
        }
        layerIds = layerIdsDecoded0
        let commandDecoded = try containerValues.decodeIfPresent(DeploymentCommand.self, forKey: .command)
        command = commandDecoded
        let commentDecoded = try containerValues.decodeIfPresent(String.self, forKey: .comment)
        comment = commentDecoded
        let customJsonDecoded = try containerValues.decodeIfPresent(String.self, forKey: .customJson)
        customJson = customJsonDecoded
    }
}