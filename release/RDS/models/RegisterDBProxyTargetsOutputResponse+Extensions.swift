// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension RegisterDBProxyTargetsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: RegisterDBProxyTargetsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.dBProxyTargets = output.dBProxyTargets
        } else {
            self.dBProxyTargets = nil
        }
    }
}