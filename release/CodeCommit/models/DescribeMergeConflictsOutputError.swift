// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DescribeMergeConflictsOutputError: Equatable {
    case commitDoesNotExistException(CommitDoesNotExistException)
    case commitRequiredException(CommitRequiredException)
    case encryptionIntegrityChecksFailedException(EncryptionIntegrityChecksFailedException)
    case encryptionKeyAccessDeniedException(EncryptionKeyAccessDeniedException)
    case encryptionKeyDisabledException(EncryptionKeyDisabledException)
    case encryptionKeyNotFoundException(EncryptionKeyNotFoundException)
    case encryptionKeyUnavailableException(EncryptionKeyUnavailableException)
    case fileDoesNotExistException(FileDoesNotExistException)
    case invalidCommitException(InvalidCommitException)
    case invalidConflictDetailLevelException(InvalidConflictDetailLevelException)
    case invalidConflictResolutionStrategyException(InvalidConflictResolutionStrategyException)
    case invalidContinuationTokenException(InvalidContinuationTokenException)
    case invalidMaxMergeHunksException(InvalidMaxMergeHunksException)
    case invalidMergeOptionException(InvalidMergeOptionException)
    case invalidPathException(InvalidPathException)
    case invalidRepositoryNameException(InvalidRepositoryNameException)
    case maximumFileContentToLoadExceededException(MaximumFileContentToLoadExceededException)
    case maximumItemsToCompareExceededException(MaximumItemsToCompareExceededException)
    case mergeOptionRequiredException(MergeOptionRequiredException)
    case pathRequiredException(PathRequiredException)
    case repositoryDoesNotExistException(RepositoryDoesNotExistException)
    case repositoryNameRequiredException(RepositoryNameRequiredException)
    case tipsDivergenceExceededException(TipsDivergenceExceededException)
    case unknown(UnknownAWSHttpServiceError)
}