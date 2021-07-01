// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListCommandInvocationsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListCommandInvocationsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.commandInvocations = output.commandInvocations
            self.nextToken = output.nextToken
        } else {
            self.commandInvocations = nil
            self.nextToken = nil
        }
    }
}