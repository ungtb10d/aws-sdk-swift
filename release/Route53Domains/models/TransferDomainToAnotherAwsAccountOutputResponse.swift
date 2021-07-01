// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The <code>TransferDomainToAnotherAwsAccount</code> response includes the following elements.</p>
public struct TransferDomainToAnotherAwsAccountOutputResponse: Equatable {
    /// <p>Identifier for tracking the progress of the request. To query the operation status, use
    /// 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>.</p>
    public let operationId: String?
    /// <p>To finish transferring a domain to another AWS account, the account that the domain is being transferred to must submit an
    /// 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AcceptDomainTransferFromAnotherAwsAccount.html">AcceptDomainTransferFromAnotherAwsAccount</a>
    /// 			request. The request must include the value of the <code>Password</code> element that was returned in the
    /// 			<code>TransferDomainToAnotherAwsAccount</code> response.</p>
    public let password: String?

    public init (
        operationId: String? = nil,
        password: String? = nil
    )
    {
        self.operationId = operationId
        self.password = password
    }
}

extension TransferDomainToAnotherAwsAccountOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TransferDomainToAnotherAwsAccountOutputResponse(operationId: \(String(describing: operationId)), password: \(String(describing: password)))"}
}