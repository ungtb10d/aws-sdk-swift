// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>An object that contains the <code>ChangeType</code>, <code>Details</code>, and
///                 <code>Entity</code>.</p>
public struct Change: Equatable {
    /// <p>Optional name for the change.</p>
    public let changeName: String?
    /// <p>Change types are single string values that describe your intention for the change.
    ///             Each change type is unique for each <code>EntityType</code> provided in the change's
    ///             scope.</p>
    public let changeType: String?
    /// <p>This object contains details specific to the change type of the requested
    ///             change.</p>
    public let details: String?
    /// <p>The entity to be changed.</p>
    public let entity: Entity?

    public init (
        changeName: String? = nil,
        changeType: String? = nil,
        details: String? = nil,
        entity: Entity? = nil
    )
    {
        self.changeName = changeName
        self.changeType = changeType
        self.details = details
        self.entity = entity
    }
}

extension Change: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Change(changeName: \(String(describing: changeName)), changeType: \(String(describing: changeType)), details: \(String(describing: details)), entity: \(String(describing: entity)))"}
}