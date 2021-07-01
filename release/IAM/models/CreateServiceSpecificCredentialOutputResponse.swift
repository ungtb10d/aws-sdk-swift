// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateServiceSpecificCredentialOutputResponse: Equatable {
    /// <p>A structure that contains information about the newly created service-specific
    ///             credential.</p>
    ///         <important>
    ///             <p>This is the only time that the password for this credential set is available. It
    ///                 cannot be recovered later. Instead, you must reset the password with <a>ResetServiceSpecificCredential</a>.</p>
    ///         </important>
    public let serviceSpecificCredential: ServiceSpecificCredential?

    public init (
        serviceSpecificCredential: ServiceSpecificCredential? = nil
    )
    {
        self.serviceSpecificCredential = serviceSpecificCredential
    }
}

extension CreateServiceSpecificCredentialOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateServiceSpecificCredentialOutputResponse(serviceSpecificCredential: \(String(describing: serviceSpecificCredential)))"}
}