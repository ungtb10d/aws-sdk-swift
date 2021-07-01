// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeDataRepositoryTasksOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeDataRepositoryTasksOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.dataRepositoryTasks = output.dataRepositoryTasks
            self.nextToken = output.nextToken
        } else {
            self.dataRepositoryTasks = nil
            self.nextToken = nil
        }
    }
}