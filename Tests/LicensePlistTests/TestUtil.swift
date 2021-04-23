import Foundation
@testable import LicensePlistCore
import LoggerAPI

class TestUtil {
    static func setGitHubToken() {
        // Specify your `github_token.txt` location
        let url = URL(fileURLWithPath: "/Users/mono/Git/LicensePlist/Tests/LicensePlistTests/Resources/github_token.txt")
        do {
            GitHubAuthorization.shared.token = try String(contentsOf: url,
                                                          encoding: String.Encoding.utf8)
        } catch {
            Log.warning("\(url) not found. You can execute without github_token, but API limit will exceed sometimes.")
        }
    }

    static var sourceDir: URL {
        return URL(string: #file)!
            .deletingLastPathComponent()
            .deletingLastPathComponent()
            .deletingLastPathComponent()
    }

    static var testResourceDir: URL {
        return sourceDir
            .appendingPathComponent("Tests")
            .appendingPathComponent("LicensePlistTests")
            .appendingPathComponent("Resources")
    }

    static var testProjectsPath: URL {
        return sourceDir
            .appendingPathComponent("Tests")
            .appendingPathComponent("LicensePlistTests")
            .appendingPathComponent("XcodeProjects")
    }
}
