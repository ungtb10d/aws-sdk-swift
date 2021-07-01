// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ChatItemType {
    case attachment
    case chatEnded
    case connectionAck
    case event
    case message
    case participantJoined
    case participantLeft
    case transferFailed
    case transferSucceeded
    case typing
    case sdkUnknown(String)
}

extension ChatItemType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ChatItemType] {
        return [
            .attachment,
            .chatEnded,
            .connectionAck,
            .event,
            .message,
            .participantJoined,
            .participantLeft,
            .transferFailed,
            .transferSucceeded,
            .typing,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .attachment: return "ATTACHMENT"
        case .chatEnded: return "CHAT_ENDED"
        case .connectionAck: return "CONNECTION_ACK"
        case .event: return "EVENT"
        case .message: return "MESSAGE"
        case .participantJoined: return "PARTICIPANT_JOINED"
        case .participantLeft: return "PARTICIPANT_LEFT"
        case .transferFailed: return "TRANSFER_FAILED"
        case .transferSucceeded: return "TRANSFER_SUCCEEDED"
        case .typing: return "TYPING"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ChatItemType(rawValue: rawValue) ?? ChatItemType.sdkUnknown(rawValue)
    }
}