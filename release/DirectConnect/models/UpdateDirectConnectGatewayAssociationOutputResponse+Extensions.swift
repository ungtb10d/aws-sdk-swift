// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UpdateDirectConnectGatewayAssociationOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: UpdateDirectConnectGatewayAssociationOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.directConnectGatewayAssociation = output.directConnectGatewayAssociation
        } else {
            self.directConnectGatewayAssociation = nil
        }
    }
}