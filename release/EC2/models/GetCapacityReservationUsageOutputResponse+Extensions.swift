// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetCapacityReservationUsageOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetCapacityReservationUsageOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.availableInstanceCount = output.availableInstanceCount
            self.capacityReservationId = output.capacityReservationId
            self.instanceType = output.instanceType
            self.instanceUsages = output.instanceUsages
            self.nextToken = output.nextToken
            self.state = output.state
            self.totalInstanceCount = output.totalInstanceCount
        } else {
            self.availableInstanceCount = 0
            self.capacityReservationId = nil
            self.instanceType = nil
            self.instanceUsages = nil
            self.nextToken = nil
            self.state = nil
            self.totalInstanceCount = 0
        }
    }
}