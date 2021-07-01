// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum PatchProperty {
    case patchclassification
    case patchmsrcseverity
    case patchpriority
    case patchproductfamily
    case patchseverity
    case product
    case sdkUnknown(String)
}

extension PatchProperty : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [PatchProperty] {
        return [
            .patchclassification,
            .patchmsrcseverity,
            .patchpriority,
            .patchproductfamily,
            .patchseverity,
            .product,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .patchclassification: return "CLASSIFICATION"
        case .patchmsrcseverity: return "MSRC_SEVERITY"
        case .patchpriority: return "PRIORITY"
        case .patchproductfamily: return "PRODUCT_FAMILY"
        case .patchseverity: return "SEVERITY"
        case .product: return "PRODUCT"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = PatchProperty(rawValue: rawValue) ?? PatchProperty.sdkUnknown(rawValue)
    }
}