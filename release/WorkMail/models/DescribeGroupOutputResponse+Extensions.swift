// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeGroupOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeGroupOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.disabledDate = output.disabledDate
            self.email = output.email
            self.enabledDate = output.enabledDate
            self.groupId = output.groupId
            self.name = output.name
            self.state = output.state
        } else {
            self.disabledDate = nil
            self.email = nil
            self.enabledDate = nil
            self.groupId = nil
            self.name = nil
            self.state = nil
        }
    }
}