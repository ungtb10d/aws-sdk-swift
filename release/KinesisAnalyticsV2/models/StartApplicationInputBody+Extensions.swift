// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct StartApplicationInputBody: Equatable {
    public let applicationName: String?
    public let runConfiguration: RunConfiguration?
}

extension StartApplicationInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case applicationName = "ApplicationName"
        case runConfiguration = "RunConfiguration"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let applicationNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .applicationName)
        applicationName = applicationNameDecoded
        let runConfigurationDecoded = try containerValues.decodeIfPresent(RunConfiguration.self, forKey: .runConfiguration)
        runConfiguration = runConfigurationDecoded
    }
}