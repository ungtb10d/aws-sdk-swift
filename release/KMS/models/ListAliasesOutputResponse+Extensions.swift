// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListAliasesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListAliasesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.aliases = output.aliases
            self.nextMarker = output.nextMarker
            self.truncated = output.truncated
        } else {
            self.aliases = nil
            self.nextMarker = nil
            self.truncated = false
        }
    }
}