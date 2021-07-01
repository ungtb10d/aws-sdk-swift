// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A logical rule statement used to combine other rule statements with AND logic. You provide more than one <a>Statement</a> within the <code>AndStatement</code>. </p>
public struct AndStatement: Equatable {
    /// <p>The statements to combine with AND logic. You can use any statements that can be nested. </p>
    public let statements: [Statement]?

    public init (
        statements: [Statement]? = nil
    )
    {
        self.statements = statements
    }
}

extension AndStatement: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AndStatement(statements: \(String(describing: statements)))"}
}