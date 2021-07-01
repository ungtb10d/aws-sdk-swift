// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeUserHierarchyStructureOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeUserHierarchyStructureOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.hierarchyStructure = output.hierarchyStructure
        } else {
            self.hierarchyStructure = nil
        }
    }
}