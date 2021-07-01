// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListModelsOutputResponseBody: Equatable {
    public let nextToken: String?
    public let modelSummaries: [ModelSummary]?
}

extension ListModelsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case modelSummaries = "ModelSummaries"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let modelSummariesContainer = try containerValues.decodeIfPresent([ModelSummary?].self, forKey: .modelSummaries)
        var modelSummariesDecoded0:[ModelSummary]? = nil
        if let modelSummariesContainer = modelSummariesContainer {
            modelSummariesDecoded0 = [ModelSummary]()
            for structure0 in modelSummariesContainer {
                if let structure0 = structure0 {
                    modelSummariesDecoded0?.append(structure0)
                }
            }
        }
        modelSummaries = modelSummariesDecoded0
    }
}