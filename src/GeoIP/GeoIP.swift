import Foundation
import MMDB_Swift

open class GeoIP {
    public static let database = MMDB()!

    public static func LookUp(_ ipAddress: String) -> MMDBCountry? {
        return GeoIP.database.lookup(ipAddress)
    }
}
