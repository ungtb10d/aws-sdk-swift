// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetFileUploadURLInputBody: Equatable {
    public let assignmentId: String?
    public let questionIdentifier: String?
}

extension GetFileUploadURLInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case assignmentId = "AssignmentId"
        case questionIdentifier = "QuestionIdentifier"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let assignmentIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .assignmentId)
        assignmentId = assignmentIdDecoded
        let questionIdentifierDecoded = try containerValues.decodeIfPresent(String.self, forKey: .questionIdentifier)
        questionIdentifier = questionIdentifierDecoded
    }
}