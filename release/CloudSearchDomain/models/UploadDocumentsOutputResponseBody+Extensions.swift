// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UploadDocumentsOutputResponseBody: Equatable {
    public let status: String?
    public let adds: Int
    public let deletes: Int
    public let warnings: [DocumentServiceWarning]?
}

extension UploadDocumentsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case adds
        case deletes
        case status
        case warnings
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let statusDecoded = try containerValues.decodeIfPresent(String.self, forKey: .status)
        status = statusDecoded
        let addsDecoded = try containerValues.decode(Int.self, forKey: .adds)
        adds = addsDecoded
        let deletesDecoded = try containerValues.decode(Int.self, forKey: .deletes)
        deletes = deletesDecoded
        let warningsContainer = try containerValues.decodeIfPresent([DocumentServiceWarning?].self, forKey: .warnings)
        var warningsDecoded0:[DocumentServiceWarning]? = nil
        if let warningsContainer = warningsContainer {
            warningsDecoded0 = [DocumentServiceWarning]()
            for structure0 in warningsContainer {
                if let structure0 = structure0 {
                    warningsDecoded0?.append(structure0)
                }
            }
        }
        warnings = warningsDecoded0
    }
}