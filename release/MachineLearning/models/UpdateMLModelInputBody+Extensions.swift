// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateMLModelInputBody: Equatable {
    public let mLModelId: String?
    public let mLModelName: String?
    public let scoreThreshold: Float?
}

extension UpdateMLModelInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case mLModelId = "MLModelId"
        case mLModelName = "MLModelName"
        case scoreThreshold = "ScoreThreshold"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let mLModelIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .mLModelId)
        mLModelId = mLModelIdDecoded
        let mLModelNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .mLModelName)
        mLModelName = mLModelNameDecoded
        let scoreThresholdDecoded = try containerValues.decodeIfPresent(Float.self, forKey: .scoreThreshold)
        scoreThreshold = scoreThresholdDecoded
    }
}