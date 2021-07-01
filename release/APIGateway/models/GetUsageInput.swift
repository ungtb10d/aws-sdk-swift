// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The GET request to get the usage data of a usage plan in a specified time interval.</p>
public struct GetUsageInput: Equatable {
    /// <p>[Required] The ending date (e.g., 2016-12-31) of the usage data.</p>
    public let endDate: String?
    /// <p>The Id of the API key associated with the resultant usage data.</p>
    public let keyId: String?
    /// <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    public let limit: Int?
    /// <p>The current pagination position in the paged result set.</p>
    public let position: String?
    /// <p>[Required] The starting date (e.g., 2016-01-01) of the usage data.</p>
    public let startDate: String?
    /// <p>[Required] The Id of the usage plan associated with the usage data.</p>
    public let usagePlanId: String?

    public init (
        endDate: String? = nil,
        keyId: String? = nil,
        limit: Int? = nil,
        position: String? = nil,
        startDate: String? = nil,
        usagePlanId: String? = nil
    )
    {
        self.endDate = endDate
        self.keyId = keyId
        self.limit = limit
        self.position = position
        self.startDate = startDate
        self.usagePlanId = usagePlanId
    }
}

extension GetUsageInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetUsageInput(endDate: \(String(describing: endDate)), keyId: \(String(describing: keyId)), limit: \(String(describing: limit)), position: \(String(describing: position)), startDate: \(String(describing: startDate)), usagePlanId: \(String(describing: usagePlanId)))"}
}