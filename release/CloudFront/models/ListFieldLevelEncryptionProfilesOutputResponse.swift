// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListFieldLevelEncryptionProfilesOutputResponse: Equatable {
    /// <p>Returns a list of the field-level encryption profiles that have been created in CloudFront for this account.</p>
    public let fieldLevelEncryptionProfileList: FieldLevelEncryptionProfileList?

    public init (
        fieldLevelEncryptionProfileList: FieldLevelEncryptionProfileList? = nil
    )
    {
        self.fieldLevelEncryptionProfileList = fieldLevelEncryptionProfileList
    }
}

extension ListFieldLevelEncryptionProfilesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListFieldLevelEncryptionProfilesOutputResponse(fieldLevelEncryptionProfileList: \(String(describing: fieldLevelEncryptionProfileList)))"}
}