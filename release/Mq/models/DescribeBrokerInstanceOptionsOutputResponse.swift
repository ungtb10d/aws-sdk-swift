// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeBrokerInstanceOptionsOutputResponse: Equatable {
    /// List of available broker instance options.
    public let brokerInstanceOptions: [BrokerInstanceOption]?
    /// Required. The maximum number of instance options that can be returned per page (20 by default). This value must be an integer from 5 to 100.
    public let maxResults: Int
    /// The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
    public let nextToken: String?

    public init (
        brokerInstanceOptions: [BrokerInstanceOption]? = nil,
        maxResults: Int = 0,
        nextToken: String? = nil
    )
    {
        self.brokerInstanceOptions = brokerInstanceOptions
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension DescribeBrokerInstanceOptionsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeBrokerInstanceOptionsOutputResponse(brokerInstanceOptions: \(String(describing: brokerInstanceOptions)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}