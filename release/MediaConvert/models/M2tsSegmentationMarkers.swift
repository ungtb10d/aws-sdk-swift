// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Inserts segmentation markers at each segmentation_time period. rai_segstart sets the Random Access Indicator bit in the adaptation field. rai_adapt sets the RAI bit and adds the current timecode in the private data bytes. psi_segstart inserts PAT and PMT tables at the start of segments. ebp adds Encoder Boundary Point information to the adaptation field as per OpenCable specification OC-SP-EBP-I01-130118. ebp_legacy adds Encoder Boundary Point information to the adaptation field using a legacy proprietary format.
public enum M2tsSegmentationMarkers {
    case ebp
    case ebpLegacy
    case `none`
    case psiSegstart
    case raiAdapt
    case raiSegstart
    case sdkUnknown(String)
}

extension M2tsSegmentationMarkers : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [M2tsSegmentationMarkers] {
        return [
            .ebp,
            .ebpLegacy,
            .none,
            .psiSegstart,
            .raiAdapt,
            .raiSegstart,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .ebp: return "EBP"
        case .ebpLegacy: return "EBP_LEGACY"
        case .none: return "NONE"
        case .psiSegstart: return "PSI_SEGSTART"
        case .raiAdapt: return "RAI_ADAPT"
        case .raiSegstart: return "RAI_SEGSTART"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = M2tsSegmentationMarkers(rawValue: rawValue) ?? M2tsSegmentationMarkers.sdkUnknown(rawValue)
    }
}