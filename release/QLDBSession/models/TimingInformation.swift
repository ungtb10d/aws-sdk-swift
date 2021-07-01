// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains server-side performance information for a command. Amazon QLDB captures timing
///          information between the times when it receives the request and when it sends the
///          corresponding response.</p>
public struct TimingInformation: Equatable {
    /// <p>The amount of time that QLDB spent on processing the command, measured in
    ///          milliseconds.</p>
    public let processingTimeMilliseconds: Int

    public init (
        processingTimeMilliseconds: Int = 0
    )
    {
        self.processingTimeMilliseconds = processingTimeMilliseconds
    }
}

extension TimingInformation: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TimingInformation(processingTimeMilliseconds: \(String(describing: processingTimeMilliseconds)))"}
}