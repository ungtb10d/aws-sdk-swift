// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateBackendConfigOutputResponseBody: Equatable {
    public let appId: String?
    public let backendEnvironmentName: String?
    public let jobId: String?
    public let status: String?
}

extension CreateBackendConfigOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case appId = "appId"
        case backendEnvironmentName = "backendEnvironmentName"
        case jobId = "jobId"
        case status = "status"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let appIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .appId)
        appId = appIdDecoded
        let backendEnvironmentNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .backendEnvironmentName)
        backendEnvironmentName = backendEnvironmentNameDecoded
        let jobIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .jobId)
        jobId = jobIdDecoded
        let statusDecoded = try containerValues.decodeIfPresent(String.self, forKey: .status)
        status = statusDecoded
    }
}