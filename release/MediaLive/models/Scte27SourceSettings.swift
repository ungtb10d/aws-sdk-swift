// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Scte27 Source Settings
public struct Scte27SourceSettings: Equatable {
    /// The pid field is used in conjunction with the caption selector languageCode field as follows:
    ///   - Specify PID and Language: Extracts captions from that PID; the language is "informational".
    ///   - Specify PID and omit Language: Extracts the specified PID.
    ///   - Omit PID and specify Language: Extracts the specified language, whichever PID that happens to be.
    ///   - Omit PID and omit Language: Valid only if source is DVB-Sub that is being passed through; all languages will be passed through.
    public let pid: Int

    public init (
        pid: Int = 0
    )
    {
        self.pid = pid
    }
}

extension Scte27SourceSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Scte27SourceSettings(pid: \(String(describing: pid)))"}
}