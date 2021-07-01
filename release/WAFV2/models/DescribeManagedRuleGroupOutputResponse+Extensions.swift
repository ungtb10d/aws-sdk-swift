// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeManagedRuleGroupOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeManagedRuleGroupOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.availableLabels = output.availableLabels
            self.capacity = output.capacity
            self.consumedLabels = output.consumedLabels
            self.labelNamespace = output.labelNamespace
            self.rules = output.rules
        } else {
            self.availableLabels = nil
            self.capacity = 0
            self.consumedLabels = nil
            self.labelNamespace = nil
            self.rules = nil
        }
    }
}