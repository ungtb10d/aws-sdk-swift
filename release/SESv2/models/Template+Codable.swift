// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Template: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case templateArn = "TemplateArn"
        case templateData = "TemplateData"
        case templateName = "TemplateName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let templateArn = templateArn {
            try encodeContainer.encode(templateArn, forKey: .templateArn)
        }
        if let templateData = templateData {
            try encodeContainer.encode(templateData, forKey: .templateData)
        }
        if let templateName = templateName {
            try encodeContainer.encode(templateName, forKey: .templateName)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let templateNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .templateName)
        templateName = templateNameDecoded
        let templateArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .templateArn)
        templateArn = templateArnDecoded
        let templateDataDecoded = try containerValues.decodeIfPresent(String.self, forKey: .templateData)
        templateData = templateDataDecoded
    }
}