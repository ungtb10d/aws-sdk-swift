// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ReplicationTaskAssessmentRun: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case assessmentProgress = "AssessmentProgress"
        case assessmentRunName = "AssessmentRunName"
        case lastFailureMessage = "LastFailureMessage"
        case replicationTaskArn = "ReplicationTaskArn"
        case replicationTaskAssessmentRunArn = "ReplicationTaskAssessmentRunArn"
        case replicationTaskAssessmentRunCreationDate = "ReplicationTaskAssessmentRunCreationDate"
        case resultEncryptionMode = "ResultEncryptionMode"
        case resultKmsKeyArn = "ResultKmsKeyArn"
        case resultLocationBucket = "ResultLocationBucket"
        case resultLocationFolder = "ResultLocationFolder"
        case serviceAccessRoleArn = "ServiceAccessRoleArn"
        case status = "Status"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let assessmentProgress = assessmentProgress {
            try encodeContainer.encode(assessmentProgress, forKey: .assessmentProgress)
        }
        if let assessmentRunName = assessmentRunName {
            try encodeContainer.encode(assessmentRunName, forKey: .assessmentRunName)
        }
        if let lastFailureMessage = lastFailureMessage {
            try encodeContainer.encode(lastFailureMessage, forKey: .lastFailureMessage)
        }
        if let replicationTaskArn = replicationTaskArn {
            try encodeContainer.encode(replicationTaskArn, forKey: .replicationTaskArn)
        }
        if let replicationTaskAssessmentRunArn = replicationTaskAssessmentRunArn {
            try encodeContainer.encode(replicationTaskAssessmentRunArn, forKey: .replicationTaskAssessmentRunArn)
        }
        if let replicationTaskAssessmentRunCreationDate = replicationTaskAssessmentRunCreationDate {
            try encodeContainer.encode(replicationTaskAssessmentRunCreationDate.timeIntervalSince1970, forKey: .replicationTaskAssessmentRunCreationDate)
        }
        if let resultEncryptionMode = resultEncryptionMode {
            try encodeContainer.encode(resultEncryptionMode, forKey: .resultEncryptionMode)
        }
        if let resultKmsKeyArn = resultKmsKeyArn {
            try encodeContainer.encode(resultKmsKeyArn, forKey: .resultKmsKeyArn)
        }
        if let resultLocationBucket = resultLocationBucket {
            try encodeContainer.encode(resultLocationBucket, forKey: .resultLocationBucket)
        }
        if let resultLocationFolder = resultLocationFolder {
            try encodeContainer.encode(resultLocationFolder, forKey: .resultLocationFolder)
        }
        if let serviceAccessRoleArn = serviceAccessRoleArn {
            try encodeContainer.encode(serviceAccessRoleArn, forKey: .serviceAccessRoleArn)
        }
        if let status = status {
            try encodeContainer.encode(status, forKey: .status)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let replicationTaskAssessmentRunArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .replicationTaskAssessmentRunArn)
        replicationTaskAssessmentRunArn = replicationTaskAssessmentRunArnDecoded
        let replicationTaskArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .replicationTaskArn)
        replicationTaskArn = replicationTaskArnDecoded
        let statusDecoded = try containerValues.decodeIfPresent(String.self, forKey: .status)
        status = statusDecoded
        let replicationTaskAssessmentRunCreationDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .replicationTaskAssessmentRunCreationDate)
        replicationTaskAssessmentRunCreationDate = replicationTaskAssessmentRunCreationDateDecoded
        let assessmentProgressDecoded = try containerValues.decodeIfPresent(ReplicationTaskAssessmentRunProgress.self, forKey: .assessmentProgress)
        assessmentProgress = assessmentProgressDecoded
        let lastFailureMessageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lastFailureMessage)
        lastFailureMessage = lastFailureMessageDecoded
        let serviceAccessRoleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serviceAccessRoleArn)
        serviceAccessRoleArn = serviceAccessRoleArnDecoded
        let resultLocationBucketDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resultLocationBucket)
        resultLocationBucket = resultLocationBucketDecoded
        let resultLocationFolderDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resultLocationFolder)
        resultLocationFolder = resultLocationFolderDecoded
        let resultEncryptionModeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resultEncryptionMode)
        resultEncryptionMode = resultEncryptionModeDecoded
        let resultKmsKeyArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resultKmsKeyArn)
        resultKmsKeyArn = resultKmsKeyArnDecoded
        let assessmentRunNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .assessmentRunName)
        assessmentRunName = assessmentRunNameDecoded
    }
}