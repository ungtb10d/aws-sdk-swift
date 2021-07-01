// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeLocalGatewayRouteTableVpcAssociationsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeLocalGatewayRouteTableVpcAssociationsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.localGatewayRouteTableVpcAssociations = output.localGatewayRouteTableVpcAssociations
            self.nextToken = output.nextToken
        } else {
            self.localGatewayRouteTableVpcAssociations = nil
            self.nextToken = nil
        }
    }
}