// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListPolicyVersionsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListPolicyVersionsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.policyVersions = output.policyVersions
        } else {
            self.policyVersions = nil
        }
    }
}