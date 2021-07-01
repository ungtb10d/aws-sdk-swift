// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the memory for the FPGA accelerator for the instance type.</p>
public struct FpgaDeviceMemoryInfo: Equatable {
    /// <p>The size of the memory available to the FPGA accelerator, in MiB.</p>
    public let sizeInMiB: Int?

    public init (
        sizeInMiB: Int? = nil
    )
    {
        self.sizeInMiB = sizeInMiB
    }
}

extension FpgaDeviceMemoryInfo: CustomDebugStringConvertible {
    public var debugDescription: String {
        "FpgaDeviceMemoryInfo(sizeInMiB: \(String(describing: sizeInMiB)))"}
}