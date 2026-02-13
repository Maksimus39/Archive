import SwiftUI

enum Section: String, CaseIterable {
    case beverages = "Beverages"
    case foods = "Foods"
}

struct HomeContentView: View {
    @StateObject var model = ContentViewModel()
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            VStack(spacing: 30) {
                ProfileHeaderView(user: model.user)
            }
            
            VStack(spacing: 25) {
                PromotionView(dotPromotion: model.user)
                
                switch model.selectedCategory {
                    case Section.beverages.rawValue: ProductCollectionView(model: model.user)
                    case Section.foods.rawValue: FoodCollectionView(model: model.user)
                    default: EmptyView()
                }
            }
            
            VStack(spacing: 39) {
                CategoriesView(
                    model: model.user,
                    selectedCategory: $model.selectedCategory
                )
            }
            
            VStack(spacing: 20){
                FeaturedBeveragesView(dotPromotion: model.user)
                switch model.selectedCategory {
                    case Section.beverages.rawValue: BeveragesView(model: model.user)
                    case Section.foods.rawValue: FoodsView(model: model.user)
                    default: EmptyView()
                }
                
            }
        }
    }
}

 








