// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UpdateProvisionedProductPropertiesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: UpdateProvisionedProductPropertiesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.provisionedProductId = output.provisionedProductId
            self.provisionedProductProperties = output.provisionedProductProperties
            self.recordId = output.recordId
            self.status = output.status
        } else {
            self.provisionedProductId = nil
            self.provisionedProductProperties = nil
            self.recordId = nil
            self.status = nil
        }
    }
}