// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeSolutionVersionInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the solution version.</p>
    public let solutionVersionArn: String?

    public init (
        solutionVersionArn: String? = nil
    )
    {
        self.solutionVersionArn = solutionVersionArn
    }
}

extension DescribeSolutionVersionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeSolutionVersionInput(solutionVersionArn: \(String(describing: solutionVersionArn)))"}
}