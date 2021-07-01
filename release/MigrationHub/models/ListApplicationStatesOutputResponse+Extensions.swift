// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListApplicationStatesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListApplicationStatesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.applicationStateList = output.applicationStateList
            self.nextToken = output.nextToken
        } else {
            self.applicationStateList = nil
            self.nextToken = nil
        }
    }
}