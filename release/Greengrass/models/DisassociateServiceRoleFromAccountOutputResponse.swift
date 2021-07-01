// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DisassociateServiceRoleFromAccountOutputResponse: Equatable {
    /// The time when the service role was disassociated from the account.
    public let disassociatedAt: String?

    public init (
        disassociatedAt: String? = nil
    )
    {
        self.disassociatedAt = disassociatedAt
    }
}

extension DisassociateServiceRoleFromAccountOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DisassociateServiceRoleFromAccountOutputResponse(disassociatedAt: \(String(describing: disassociatedAt)))"}
}