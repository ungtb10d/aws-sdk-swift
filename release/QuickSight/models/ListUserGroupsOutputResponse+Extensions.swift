// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListUserGroupsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListUserGroupsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.groupList = output.groupList
            self.nextToken = output.nextToken
            self.requestId = output.requestId
        } else {
            self.groupList = nil
            self.nextToken = nil
            self.requestId = nil
        }
        self.status = httpResponse.statusCode.rawValue
    }
}