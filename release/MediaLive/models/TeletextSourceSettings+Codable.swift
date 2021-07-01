// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TeletextSourceSettings: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case outputRectangle = "outputRectangle"
        case pageNumber = "pageNumber"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let outputRectangle = outputRectangle {
            try encodeContainer.encode(outputRectangle, forKey: .outputRectangle)
        }
        if let pageNumber = pageNumber {
            try encodeContainer.encode(pageNumber, forKey: .pageNumber)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let outputRectangleDecoded = try containerValues.decodeIfPresent(CaptionRectangle.self, forKey: .outputRectangle)
        outputRectangle = outputRectangleDecoded
        let pageNumberDecoded = try containerValues.decodeIfPresent(String.self, forKey: .pageNumber)
        pageNumber = pageNumberDecoded
    }
}