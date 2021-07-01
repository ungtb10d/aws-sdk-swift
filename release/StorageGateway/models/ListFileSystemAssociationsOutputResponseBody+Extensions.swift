// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListFileSystemAssociationsOutputResponseBody: Equatable {
    public let marker: String?
    public let nextMarker: String?
    public let fileSystemAssociationSummaryList: [FileSystemAssociationSummary]?
}

extension ListFileSystemAssociationsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case fileSystemAssociationSummaryList = "FileSystemAssociationSummaryList"
        case marker = "Marker"
        case nextMarker = "NextMarker"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let markerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .marker)
        marker = markerDecoded
        let nextMarkerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextMarker)
        nextMarker = nextMarkerDecoded
        let fileSystemAssociationSummaryListContainer = try containerValues.decodeIfPresent([FileSystemAssociationSummary?].self, forKey: .fileSystemAssociationSummaryList)
        var fileSystemAssociationSummaryListDecoded0:[FileSystemAssociationSummary]? = nil
        if let fileSystemAssociationSummaryListContainer = fileSystemAssociationSummaryListContainer {
            fileSystemAssociationSummaryListDecoded0 = [FileSystemAssociationSummary]()
            for structure0 in fileSystemAssociationSummaryListContainer {
                if let structure0 = structure0 {
                    fileSystemAssociationSummaryListDecoded0?.append(structure0)
                }
            }
        }
        fileSystemAssociationSummaryList = fileSystemAssociationSummaryListDecoded0
    }
}