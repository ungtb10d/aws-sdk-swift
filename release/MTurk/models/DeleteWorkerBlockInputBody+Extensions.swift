// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteWorkerBlockInputBody: Equatable {
    public let workerId: String?
    public let reason: String?
}

extension DeleteWorkerBlockInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case reason = "Reason"
        case workerId = "WorkerId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let workerIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .workerId)
        workerId = workerIdDecoded
        let reasonDecoded = try containerValues.decodeIfPresent(String.self, forKey: .reason)
        reason = reasonDecoded
    }
}