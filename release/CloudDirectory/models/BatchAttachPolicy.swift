// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Attaches a policy object to a regular object inside a <a>BatchRead</a> operation. For more information, see <a>AttachPolicy</a> and <a>BatchReadRequest$Operations</a>.</p>
public struct BatchAttachPolicy: Equatable {
    /// <p>The reference that identifies the object to which the policy will be
    ///        attached.</p>
    public let objectReference: ObjectReference?
    /// <p>The reference that is associated with the policy object.</p>
    public let policyReference: ObjectReference?

    public init (
        objectReference: ObjectReference? = nil,
        policyReference: ObjectReference? = nil
    )
    {
        self.objectReference = objectReference
        self.policyReference = policyReference
    }
}

extension BatchAttachPolicy: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BatchAttachPolicy(objectReference: \(String(describing: objectReference)), policyReference: \(String(describing: policyReference)))"}
}