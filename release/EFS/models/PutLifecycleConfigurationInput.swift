// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PutLifecycleConfigurationInput: Equatable {
    /// <p>The ID of the file system for which you are creating the
    ///         <code>LifecycleConfiguration</code> object (String).</p>
    public let fileSystemId: String?
    /// <p>An array of <code>LifecyclePolicy</code> objects that define the file system's
    ///         <code>LifecycleConfiguration</code> object. A <code>LifecycleConfiguration</code> object
    ///       tells lifecycle management when to transition files from the Standard storage class to the
    ///       Infrequent Access storage class.</p>
    public let lifecyclePolicies: [LifecyclePolicy]?

    public init (
        fileSystemId: String? = nil,
        lifecyclePolicies: [LifecyclePolicy]? = nil
    )
    {
        self.fileSystemId = fileSystemId
        self.lifecyclePolicies = lifecyclePolicies
    }
}

extension PutLifecycleConfigurationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutLifecycleConfigurationInput(fileSystemId: \(String(describing: fileSystemId)), lifecyclePolicies: \(String(describing: lifecyclePolicies)))"}
}