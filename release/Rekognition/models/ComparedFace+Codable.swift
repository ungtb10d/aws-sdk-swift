// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ComparedFace: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case boundingBox = "BoundingBox"
        case confidence = "Confidence"
        case landmarks = "Landmarks"
        case pose = "Pose"
        case quality = "Quality"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let boundingBox = boundingBox {
            try encodeContainer.encode(boundingBox, forKey: .boundingBox)
        }
        if let confidence = confidence {
            try encodeContainer.encode(confidence, forKey: .confidence)
        }
        if let landmarks = landmarks {
            var landmarksContainer = encodeContainer.nestedUnkeyedContainer(forKey: .landmarks)
            for landmarks0 in landmarks {
                try landmarksContainer.encode(landmarks0)
            }
        }
        if let pose = pose {
            try encodeContainer.encode(pose, forKey: .pose)
        }
        if let quality = quality {
            try encodeContainer.encode(quality, forKey: .quality)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let boundingBoxDecoded = try containerValues.decodeIfPresent(BoundingBox.self, forKey: .boundingBox)
        boundingBox = boundingBoxDecoded
        let confidenceDecoded = try containerValues.decodeIfPresent(Float.self, forKey: .confidence)
        confidence = confidenceDecoded
        let landmarksContainer = try containerValues.decodeIfPresent([Landmark?].self, forKey: .landmarks)
        var landmarksDecoded0:[Landmark]? = nil
        if let landmarksContainer = landmarksContainer {
            landmarksDecoded0 = [Landmark]()
            for structure0 in landmarksContainer {
                if let structure0 = structure0 {
                    landmarksDecoded0?.append(structure0)
                }
            }
        }
        landmarks = landmarksDecoded0
        let poseDecoded = try containerValues.decodeIfPresent(Pose.self, forKey: .pose)
        pose = poseDecoded
        let qualityDecoded = try containerValues.decodeIfPresent(ImageQuality.self, forKey: .quality)
        quality = qualityDecoded
    }
}