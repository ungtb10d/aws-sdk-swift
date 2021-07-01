// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UpdateBudgetActionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: UpdateBudgetActionOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.accountId = output.accountId
            self.budgetName = output.budgetName
            self.newAction = output.newAction
            self.oldAction = output.oldAction
        } else {
            self.accountId = nil
            self.budgetName = nil
            self.newAction = nil
            self.oldAction = nil
        }
    }
}