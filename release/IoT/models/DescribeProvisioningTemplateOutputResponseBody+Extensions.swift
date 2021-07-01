// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeProvisioningTemplateOutputResponseBody: Equatable {
    public let templateArn: String?
    public let templateName: String?
    public let description: String?
    public let creationDate: Date?
    public let lastModifiedDate: Date?
    public let defaultVersionId: Int?
    public let templateBody: String?
    public let enabled: Bool
    public let provisioningRoleArn: String?
    public let preProvisioningHook: ProvisioningHook?
}

extension DescribeProvisioningTemplateOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case creationDate
        case defaultVersionId
        case description
        case enabled
        case lastModifiedDate
        case preProvisioningHook
        case provisioningRoleArn
        case templateArn
        case templateBody
        case templateName
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let templateArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .templateArn)
        templateArn = templateArnDecoded
        let templateNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .templateName)
        templateName = templateNameDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let creationDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationDate)
        creationDate = creationDateDecoded
        let lastModifiedDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastModifiedDate)
        lastModifiedDate = lastModifiedDateDecoded
        let defaultVersionIdDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .defaultVersionId)
        defaultVersionId = defaultVersionIdDecoded
        let templateBodyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .templateBody)
        templateBody = templateBodyDecoded
        let enabledDecoded = try containerValues.decode(Bool.self, forKey: .enabled)
        enabled = enabledDecoded
        let provisioningRoleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .provisioningRoleArn)
        provisioningRoleArn = provisioningRoleArnDecoded
        let preProvisioningHookDecoded = try containerValues.decodeIfPresent(ProvisioningHook.self, forKey: .preProvisioningHook)
        preProvisioningHook = preProvisioningHookDecoded
    }
}