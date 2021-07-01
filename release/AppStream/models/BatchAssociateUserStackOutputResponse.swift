// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct BatchAssociateUserStackOutputResponse: Equatable {
    /// <p>The list of UserStackAssociationError objects.</p>
    public let errors: [UserStackAssociationError]?

    public init (
        errors: [UserStackAssociationError]? = nil
    )
    {
        self.errors = errors
    }
}

extension BatchAssociateUserStackOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BatchAssociateUserStackOutputResponse(errors: \(String(describing: errors)))"}
}