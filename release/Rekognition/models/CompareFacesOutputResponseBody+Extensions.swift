// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CompareFacesOutputResponseBody: Equatable {
    public let sourceImageFace: ComparedSourceImageFace?
    public let faceMatches: [CompareFacesMatch]?
    public let unmatchedFaces: [ComparedFace]?
    public let sourceImageOrientationCorrection: OrientationCorrection?
    public let targetImageOrientationCorrection: OrientationCorrection?
}

extension CompareFacesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case faceMatches = "FaceMatches"
        case sourceImageFace = "SourceImageFace"
        case sourceImageOrientationCorrection = "SourceImageOrientationCorrection"
        case targetImageOrientationCorrection = "TargetImageOrientationCorrection"
        case unmatchedFaces = "UnmatchedFaces"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sourceImageFaceDecoded = try containerValues.decodeIfPresent(ComparedSourceImageFace.self, forKey: .sourceImageFace)
        sourceImageFace = sourceImageFaceDecoded
        let faceMatchesContainer = try containerValues.decodeIfPresent([CompareFacesMatch?].self, forKey: .faceMatches)
        var faceMatchesDecoded0:[CompareFacesMatch]? = nil
        if let faceMatchesContainer = faceMatchesContainer {
            faceMatchesDecoded0 = [CompareFacesMatch]()
            for structure0 in faceMatchesContainer {
                if let structure0 = structure0 {
                    faceMatchesDecoded0?.append(structure0)
                }
            }
        }
        faceMatches = faceMatchesDecoded0
        let unmatchedFacesContainer = try containerValues.decodeIfPresent([ComparedFace?].self, forKey: .unmatchedFaces)
        var unmatchedFacesDecoded0:[ComparedFace]? = nil
        if let unmatchedFacesContainer = unmatchedFacesContainer {
            unmatchedFacesDecoded0 = [ComparedFace]()
            for structure0 in unmatchedFacesContainer {
                if let structure0 = structure0 {
                    unmatchedFacesDecoded0?.append(structure0)
                }
            }
        }
        unmatchedFaces = unmatchedFacesDecoded0
        let sourceImageOrientationCorrectionDecoded = try containerValues.decodeIfPresent(OrientationCorrection.self, forKey: .sourceImageOrientationCorrection)
        sourceImageOrientationCorrection = sourceImageOrientationCorrectionDecoded
        let targetImageOrientationCorrectionDecoded = try containerValues.decodeIfPresent(OrientationCorrection.self, forKey: .targetImageOrientationCorrection)
        targetImageOrientationCorrection = targetImageOrientationCorrectionDecoded
    }
}