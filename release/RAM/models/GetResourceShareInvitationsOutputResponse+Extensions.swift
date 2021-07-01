// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetResourceShareInvitationsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetResourceShareInvitationsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextToken = output.nextToken
            self.resourceShareInvitations = output.resourceShareInvitations
        } else {
            self.nextToken = nil
            self.resourceShareInvitations = nil
        }
    }
}