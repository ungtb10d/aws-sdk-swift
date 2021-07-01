// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct StopPipelineExecutionInputBody: Equatable {
    public let pipelineName: String?
    public let pipelineExecutionId: String?
    public let abandon: Bool
    public let reason: String?
}

extension StopPipelineExecutionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case abandon
        case pipelineExecutionId
        case pipelineName
        case reason
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let pipelineNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .pipelineName)
        pipelineName = pipelineNameDecoded
        let pipelineExecutionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .pipelineExecutionId)
        pipelineExecutionId = pipelineExecutionIdDecoded
        let abandonDecoded = try containerValues.decode(Bool.self, forKey: .abandon)
        abandon = abandonDecoded
        let reasonDecoded = try containerValues.decodeIfPresent(String.self, forKey: .reason)
        reason = reasonDecoded
    }
}