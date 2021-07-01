// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Swaps the CNAMEs of two environments.</p>
public struct SwapEnvironmentCNAMEsInput: Equatable {
    /// <p>The ID of the destination environment.</p>
    ///          <p> Condition: You must specify at least the <code>DestinationEnvironmentID</code> or the
    ///       <code>DestinationEnvironmentName</code>. You may also specify both. You must specify the
    ///       <code>SourceEnvironmentId</code> with the <code>DestinationEnvironmentId</code>. </p>
    public let destinationEnvironmentId: String?
    /// <p>The name of the destination environment.</p>
    ///          <p> Condition: You must specify at least the <code>DestinationEnvironmentID</code> or the
    ///       <code>DestinationEnvironmentName</code>. You may also specify both. You must specify the
    ///       <code>SourceEnvironmentName</code> with the <code>DestinationEnvironmentName</code>.
    ///     </p>
    public let destinationEnvironmentName: String?
    /// <p>The ID of the source environment.</p>
    ///          <p> Condition: You must specify at least the <code>SourceEnvironmentID</code> or the
    ///       <code>SourceEnvironmentName</code>. You may also specify both. If you specify the
    ///       <code>SourceEnvironmentId</code>, you must specify the
    ///       <code>DestinationEnvironmentId</code>. </p>
    public let sourceEnvironmentId: String?
    /// <p>The name of the source environment.</p>
    ///          <p> Condition: You must specify at least the <code>SourceEnvironmentID</code> or the
    ///       <code>SourceEnvironmentName</code>. You may also specify both. If you specify the
    ///       <code>SourceEnvironmentName</code>, you must specify the
    ///       <code>DestinationEnvironmentName</code>. </p>
    public let sourceEnvironmentName: String?

    public init (
        destinationEnvironmentId: String? = nil,
        destinationEnvironmentName: String? = nil,
        sourceEnvironmentId: String? = nil,
        sourceEnvironmentName: String? = nil
    )
    {
        self.destinationEnvironmentId = destinationEnvironmentId
        self.destinationEnvironmentName = destinationEnvironmentName
        self.sourceEnvironmentId = sourceEnvironmentId
        self.sourceEnvironmentName = sourceEnvironmentName
    }
}

extension SwapEnvironmentCNAMEsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SwapEnvironmentCNAMEsInput(destinationEnvironmentId: \(String(describing: destinationEnvironmentId)), destinationEnvironmentName: \(String(describing: destinationEnvironmentName)), sourceEnvironmentId: \(String(describing: sourceEnvironmentId)), sourceEnvironmentName: \(String(describing: sourceEnvironmentName)))"}
}