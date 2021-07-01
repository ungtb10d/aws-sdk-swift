// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DeleteBudgetActionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DeleteBudgetActionOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.accountId = output.accountId
            self.action = output.action
            self.budgetName = output.budgetName
        } else {
            self.accountId = nil
            self.action = nil
            self.budgetName = nil
        }
    }
}