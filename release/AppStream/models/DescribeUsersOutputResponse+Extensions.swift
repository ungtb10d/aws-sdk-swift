// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeUsersOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeUsersOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextToken = output.nextToken
            self.users = output.users
        } else {
            self.nextToken = nil
            self.users = nil
        }
    }
}