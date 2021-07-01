// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribePredictorBacktestExportJobOutputResponseBody: Equatable {
    public let predictorBacktestExportJobArn: String?
    public let predictorBacktestExportJobName: String?
    public let predictorArn: String?
    public let destination: DataDestination?
    public let message: String?
    public let status: String?
    public let creationTime: Date?
    public let lastModificationTime: Date?
}

extension DescribePredictorBacktestExportJobOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case creationTime = "CreationTime"
        case destination = "Destination"
        case lastModificationTime = "LastModificationTime"
        case message = "Message"
        case predictorArn = "PredictorArn"
        case predictorBacktestExportJobArn = "PredictorBacktestExportJobArn"
        case predictorBacktestExportJobName = "PredictorBacktestExportJobName"
        case status = "Status"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let predictorBacktestExportJobArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .predictorBacktestExportJobArn)
        predictorBacktestExportJobArn = predictorBacktestExportJobArnDecoded
        let predictorBacktestExportJobNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .predictorBacktestExportJobName)
        predictorBacktestExportJobName = predictorBacktestExportJobNameDecoded
        let predictorArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .predictorArn)
        predictorArn = predictorArnDecoded
        let destinationDecoded = try containerValues.decodeIfPresent(DataDestination.self, forKey: .destination)
        destination = destinationDecoded
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
        let statusDecoded = try containerValues.decodeIfPresent(String.self, forKey: .status)
        status = statusDecoded
        let creationTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationTime)
        creationTime = creationTimeDecoded
        let lastModificationTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastModificationTime)
        lastModificationTime = lastModificationTimeDecoded
    }
}