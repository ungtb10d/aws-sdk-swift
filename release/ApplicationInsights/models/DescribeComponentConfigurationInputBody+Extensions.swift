// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeComponentConfigurationInputBody: Equatable {
    public let resourceGroupName: String?
    public let componentName: String?
}

extension DescribeComponentConfigurationInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case componentName = "ComponentName"
        case resourceGroupName = "ResourceGroupName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let resourceGroupNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceGroupName)
        resourceGroupName = resourceGroupNameDecoded
        let componentNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .componentName)
        componentName = componentNameDecoded
    }
}