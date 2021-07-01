// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListAssessmentsOutputResponseBody: Equatable {
    public let assessmentMetadata: [AssessmentMetadataItem]?
    public let nextToken: String?
}

extension ListAssessmentsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case assessmentMetadata
        case nextToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let assessmentMetadataContainer = try containerValues.decodeIfPresent([AssessmentMetadataItem?].self, forKey: .assessmentMetadata)
        var assessmentMetadataDecoded0:[AssessmentMetadataItem]? = nil
        if let assessmentMetadataContainer = assessmentMetadataContainer {
            assessmentMetadataDecoded0 = [AssessmentMetadataItem]()
            for structure0 in assessmentMetadataContainer {
                if let structure0 = structure0 {
                    assessmentMetadataDecoded0?.append(structure0)
                }
            }
        }
        assessmentMetadata = assessmentMetadataDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}