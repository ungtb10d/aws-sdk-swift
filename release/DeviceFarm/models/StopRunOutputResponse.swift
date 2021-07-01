// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the results of your stop run attempt.</p>
public struct StopRunOutputResponse: Equatable {
    /// <p>The run that was stopped.</p>
    public let run: Run?

    public init (
        run: Run? = nil
    )
    {
        self.run = run
    }
}

extension StopRunOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StopRunOutputResponse(run: \(String(describing: run)))"}
}