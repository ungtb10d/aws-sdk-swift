// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateOutboundCrossClusterSearchConnectionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateOutboundCrossClusterSearchConnectionOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.connectionAlias = output.connectionAlias
            self.connectionStatus = output.connectionStatus
            self.crossClusterSearchConnectionId = output.crossClusterSearchConnectionId
            self.destinationDomainInfo = output.destinationDomainInfo
            self.sourceDomainInfo = output.sourceDomainInfo
        } else {
            self.connectionAlias = nil
            self.connectionStatus = nil
            self.crossClusterSearchConnectionId = nil
            self.destinationDomainInfo = nil
            self.sourceDomainInfo = nil
        }
    }
}