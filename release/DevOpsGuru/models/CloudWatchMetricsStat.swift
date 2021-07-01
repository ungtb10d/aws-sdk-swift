// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum CloudWatchMetricsStat {
    case average
    case maximum
    case minimum
    case p50
    case p90
    case p99
    case sampleCount
    case sum
    case sdkUnknown(String)
}

extension CloudWatchMetricsStat : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [CloudWatchMetricsStat] {
        return [
            .average,
            .maximum,
            .minimum,
            .p50,
            .p90,
            .p99,
            .sampleCount,
            .sum,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .average: return "Average"
        case .maximum: return "Maximum"
        case .minimum: return "Minimum"
        case .p50: return "p50"
        case .p90: return "p90"
        case .p99: return "p99"
        case .sampleCount: return "SampleCount"
        case .sum: return "Sum"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = CloudWatchMetricsStat(rawValue: rawValue) ?? CloudWatchMetricsStat.sdkUnknown(rawValue)
    }
}