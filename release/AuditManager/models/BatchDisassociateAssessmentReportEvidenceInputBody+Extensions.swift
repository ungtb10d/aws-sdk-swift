// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct BatchDisassociateAssessmentReportEvidenceInputBody: Equatable {
    public let evidenceFolderId: String?
    public let evidenceIds: [String]?
}

extension BatchDisassociateAssessmentReportEvidenceInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case evidenceFolderId
        case evidenceIds
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let evidenceFolderIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .evidenceFolderId)
        evidenceFolderId = evidenceFolderIdDecoded
        let evidenceIdsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .evidenceIds)
        var evidenceIdsDecoded0:[String]? = nil
        if let evidenceIdsContainer = evidenceIdsContainer {
            evidenceIdsDecoded0 = [String]()
            for string0 in evidenceIdsContainer {
                if let string0 = string0 {
                    evidenceIdsDecoded0?.append(string0)
                }
            }
        }
        evidenceIds = evidenceIdsDecoded0
    }
}