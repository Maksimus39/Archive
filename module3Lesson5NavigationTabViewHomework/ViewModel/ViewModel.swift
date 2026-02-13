import Foundation
import Combine

class ContentViewModel: ObservableObject, AppProtokol {
    private let manager = DataManager()
    @Published var selectedCategory: String = Section.beverages.rawValue
    @Published var user: CoreUserData
    
    init() {
        self.user = manager.createData()
    }

}
