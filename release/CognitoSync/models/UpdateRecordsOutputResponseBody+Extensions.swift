// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateRecordsOutputResponseBody: Equatable {
    public let records: [Record]?
}

extension UpdateRecordsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case records = "Records"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let recordsContainer = try containerValues.decodeIfPresent([Record?].self, forKey: .records)
        var recordsDecoded0:[Record]? = nil
        if let recordsContainer = recordsContainer {
            recordsDecoded0 = [Record]()
            for structure0 in recordsContainer {
                if let structure0 = structure0 {
                    recordsDecoded0?.append(structure0)
                }
            }
        }
        records = recordsDecoded0
    }
}