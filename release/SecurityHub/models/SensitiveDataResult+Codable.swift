// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SensitiveDataResult: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case category = "Category"
        case detections = "Detections"
        case totalCount = "TotalCount"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let category = category {
            try encodeContainer.encode(category, forKey: .category)
        }
        if let detections = detections {
            var detectionsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .detections)
            for sensitivedatadetectionslist0 in detections {
                try detectionsContainer.encode(sensitivedatadetectionslist0)
            }
        }
        if totalCount != 0 {
            try encodeContainer.encode(totalCount, forKey: .totalCount)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let categoryDecoded = try containerValues.decodeIfPresent(String.self, forKey: .category)
        category = categoryDecoded
        let detectionsContainer = try containerValues.decodeIfPresent([SensitiveDataDetections?].self, forKey: .detections)
        var detectionsDecoded0:[SensitiveDataDetections]? = nil
        if let detectionsContainer = detectionsContainer {
            detectionsDecoded0 = [SensitiveDataDetections]()
            for structure0 in detectionsContainer {
                if let structure0 = structure0 {
                    detectionsDecoded0?.append(structure0)
                }
            }
        }
        detections = detectionsDecoded0
        let totalCountDecoded = try containerValues.decode(Int.self, forKey: .totalCount)
        totalCount = totalCountDecoded
    }
}