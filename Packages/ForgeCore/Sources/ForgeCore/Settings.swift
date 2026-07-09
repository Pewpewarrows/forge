import Foundation

class Settings {

    // MARK: - Keys
    private static let fooKey = "Foo"
    private static let barKey = "Bar"

    // MARK: - Defaults
    private static let defaultFoo = "asdf"

    // MARK: - Singleton
    static let shared = Settings()

    // Private initializer for singleton pattern
    private init() {
        // Set default values for UserDefaults
        UserDefaults.standard.register(defaults: [Settings.fooKey: Settings.defaultFoo])
    }

    // MARK: - Public Methods

    func getFoo() -> String {
        return UserDefaults.standard.string(forKey: Settings.fooKey) ?? Settings.defaultFoo
    }

    func saveFoo(_ foo: String) {
        UserDefaults.standard.set(foo, forKey: Settings.fooKey)
    }

    func getBar() -> String? {
        return UserDefaults.standard.string(forKey: Settings.barKey)
    }

    func saveBar(_ bar: String) {
        UserDefaults.standard.set(bar, forKey: Settings.barKey)
    }

}
