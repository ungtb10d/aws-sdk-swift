// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies an inventory filter. The inventory only includes objects that meet the
///          filter's criteria.</p>
public struct InventoryFilter: Equatable {
    /// <p>The prefix that an object must have to be included in the inventory results.</p>
    public let prefix: String?

    public init (
        prefix: String? = nil
    )
    {
        self.prefix = prefix
    }
}

extension InventoryFilter: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InventoryFilter(prefix: \(String(describing: prefix)))"}
}