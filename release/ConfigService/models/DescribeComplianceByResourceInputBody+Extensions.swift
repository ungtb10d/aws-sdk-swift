// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeComplianceByResourceInputBody: Equatable {
    public let resourceType: String?
    public let resourceId: String?
    public let complianceTypes: [ComplianceType]?
    public let limit: Int
    public let nextToken: String?
}

extension DescribeComplianceByResourceInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case complianceTypes = "ComplianceTypes"
        case limit = "Limit"
        case nextToken = "NextToken"
        case resourceId = "ResourceId"
        case resourceType = "ResourceType"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let resourceTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceType)
        resourceType = resourceTypeDecoded
        let resourceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceId)
        resourceId = resourceIdDecoded
        let complianceTypesContainer = try containerValues.decodeIfPresent([ComplianceType?].self, forKey: .complianceTypes)
        var complianceTypesDecoded0:[ComplianceType]? = nil
        if let complianceTypesContainer = complianceTypesContainer {
            complianceTypesDecoded0 = [ComplianceType]()
            for string0 in complianceTypesContainer {
                if let string0 = string0 {
                    complianceTypesDecoded0?.append(string0)
                }
            }
        }
        complianceTypes = complianceTypesDecoded0
        let limitDecoded = try containerValues.decode(Int.self, forKey: .limit)
        limit = limitDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}