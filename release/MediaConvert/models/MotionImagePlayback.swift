// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Specify whether your motion graphic overlay repeats on a loop or plays only once.
public enum MotionImagePlayback {
    case once
    case `repeat`
    case sdkUnknown(String)
}

extension MotionImagePlayback : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [MotionImagePlayback] {
        return [
            .once,
            .repeat,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .once: return "ONCE"
        case .repeat: return "REPEAT"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = MotionImagePlayback(rawValue: rawValue) ?? MotionImagePlayback.sdkUnknown(rawValue)
    }
}