// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Bandwidth: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case downloadSpeed = "DownloadSpeed"
        case uploadSpeed = "UploadSpeed"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let downloadSpeed = downloadSpeed {
            try encodeContainer.encode(downloadSpeed, forKey: .downloadSpeed)
        }
        if let uploadSpeed = uploadSpeed {
            try encodeContainer.encode(uploadSpeed, forKey: .uploadSpeed)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let uploadSpeedDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .uploadSpeed)
        uploadSpeed = uploadSpeedDecoded
        let downloadSpeedDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .downloadSpeed)
        downloadSpeed = downloadSpeedDecoded
    }
}