// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The request parameters represent the input of a request to start a SQL
///             transaction.</p>
public struct BeginTransactionInput: Equatable {
    /// <p>The name of the database.</p>
    public let database: String?
    /// <p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>
    public let resourceArn: String?
    /// <p>The name of the database schema.</p>
    public let schema: String?
    /// <p>The name or ARN of the secret that enables access to the DB cluster.</p>
    public let secretArn: String?

    public init (
        database: String? = nil,
        resourceArn: String? = nil,
        schema: String? = nil,
        secretArn: String? = nil
    )
    {
        self.database = database
        self.resourceArn = resourceArn
        self.schema = schema
        self.secretArn = secretArn
    }
}

extension BeginTransactionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BeginTransactionInput(database: \(String(describing: database)), resourceArn: \(String(describing: resourceArn)), schema: \(String(describing: schema)), secretArn: \(String(describing: secretArn)))"}
}