import Foundation
import Swift


extension NSBundle {
    /// The full path of the receiver’s bundle directory.
    public func bundlePath() -> Path {
        return Path(bundlePath())
    }

    /// The full path of the bundle’s subdirectory containing resources.
    public func resourcePath() -> Path? {
        return resourcePath().map { Path($0) }
    }

    /// The full path of the receiver's executable file.
    public func executablePath() -> Path? {
        return executablePath().map { Path($0) }
    }

    /// The full path of the executable with the specified name in the receiver’s bundle.
    /// 
    /// - Parameter executableName: The name of an executable file.
    ///
    public func pathForAuxiliaryExecutable(executableName: String) -> Path? {
        return pathForAuxiliaryExecutable(executableName).map { Path($0) }
    }

    /// The full path of the bundle’s subdirectory containing private frameworks.
    ///
    /// This is the appropriate path for modern application and framework bundles. This may not be
    /// a URL for non-standard bundle formats or for some older bundle formats.
    ///
    public func privateFrameworksPath() -> Path? {
        return privateFrameworksPath().map { Path($0) }
    }

    /// The full pathname of the bundle’s subdirectory containing shared frameworks.
    ///
    /// This is the appropriate path for modern application and framework bundles. This may not be
    /// a URL for non-standard bundle formats or for some older bundle formats.
    ///
    public func sharedFrameworksPath() -> Path? {
        return sharedFrameworksPath().map { Path($0) }
    }

    /// The full path of the bundle’s subdirectory containing shared support files.
    ///
    /// This is the appropriate path for modern application and framework bundles. This may not be
    /// a URL for non-standard bundle formats or for some older bundle formats.
    ///
    public func sharedSupportPath() -> Path? {
        return sharedSupportPath().map { Path($0) }
    }

    /// The file URL of the receiver's subdirectory containing plug-ins.
    ///
    /// This is the appropriate path for modern application and framework bundles. This may not be
    /// a URL for non-standard bundle formats or for some older bundle formats.
    ///
    public func builtInPlugInsPath() -> Path? {
        return builtInPlugInsPath().map { Path($0) }
    }

    /// The full path for the resource identified by a path relative to the bundle path.
    ///
    /// - Parameter path: The path.
    ///
    /// - Returns: The full path for the resource identified by a path relative to the bundle path
    ///
    public func pathForResource(path: Path) -> Path? {
        return pathForResource(String(path), ofType: nil).flatMap { Path($0) }
    }

    /// Returns the full path for the resource identified by the specified name and file extension,
    /// limited to global resources and those associated with the specified localization.
    ///
    /// - Parameter path: The path of the resource file.
    ///
    /// - Parameter localizationName: The language ID for of the localization. This parameter should
    ///   correspond to the name of one of the bundle's language-specific resource directories
    ///   without the .lproj extension.
    ///
    /// - Returns : The full path for the resource file or nil if the file could not be located.
    ///
    public func pathForResource(path: Path, forLocalization localizationName: String?) -> Path? {
        return pathForResource(String(path), ofType: nil, inDirectory: nil, forLocalization: localizationName).flatMap { Path($0) }
    }
}
