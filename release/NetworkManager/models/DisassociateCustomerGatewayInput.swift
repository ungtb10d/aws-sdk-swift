// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DisassociateCustomerGatewayInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the customer gateway. For more information, see
    ///                 <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonec2.html#amazonec2-resources-for-iam-policies">Resources Defined by Amazon EC2</a>.</p>
    public let customerGatewayArn: String?
    /// <p>The ID of the global network.</p>
    public let globalNetworkId: String?

    public init (
        customerGatewayArn: String? = nil,
        globalNetworkId: String? = nil
    )
    {
        self.customerGatewayArn = customerGatewayArn
        self.globalNetworkId = globalNetworkId
    }
}

extension DisassociateCustomerGatewayInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DisassociateCustomerGatewayInput(customerGatewayArn: \(String(describing: customerGatewayArn)), globalNetworkId: \(String(describing: globalNetworkId)))"}
}