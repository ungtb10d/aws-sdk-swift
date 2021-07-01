// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ResumeWorkflowRunOutputResponseBody: Equatable {
    public let runId: String?
    public let nodeIds: [String]?
}

extension ResumeWorkflowRunOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nodeIds = "NodeIds"
        case runId = "RunId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let runIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .runId)
        runId = runIdDecoded
        let nodeIdsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .nodeIds)
        var nodeIdsDecoded0:[String]? = nil
        if let nodeIdsContainer = nodeIdsContainer {
            nodeIdsDecoded0 = [String]()
            for string0 in nodeIdsContainer {
                if let string0 = string0 {
                    nodeIdsDecoded0?.append(string0)
                }
            }
        }
        nodeIds = nodeIdsDecoded0
    }
}