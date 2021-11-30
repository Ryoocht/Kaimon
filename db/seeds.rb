def make_seeds
    make_states
    make_categories
    make_stores
    make_store_address
    make_admins
    make_product
    make_users
    make_admin_store
end

def make_states
    ["New South Wales", "Queensland", "South Australia", "Tasmania", "Victoria", "Western Australia", "Northern Territory", "Australian Capital Territory"].each do |state|
        State.create(name: state)
    end
end

def make_categories
    ["Beverages", "Canned & Packaged Foods", "Bakery, Breakfast, Cereal", "Frozen Foods"].each do |category|
        Category.create(name: category)
    end 
end

def make_stores
    ["Metro", "Foodworks", "Hanaro", "Yuen's market"].each do |store|
        Store.create(name: store, top_image: 'https://images.unsplash.com/photo-1551963831-b3b1ca40c98e', sub_image: 'https://images.unsplash.com/photo-1604719312566-8912e9227c6a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80', icon_image: 'https://images.unsplash.com/photo-1612222869049-d8ec83637a3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80')
    end
end

def make_store_address
    StoreAddress.create(street: "20 simon street", suburb: "Yeronga", state_id: "2", post_code: "4000", store_id: "1")
end

def make_admins
    ["Alex", "Katie", "Aiden", "Leo", "Gale", "Sofia", "Gabby", "Charlie"].each do |admin|
        Admin.create(username: admin)
    end
end

def make_product
    Product.create(name: "Matcha Vanilla Soft 6pc 450ml", description: "Frozen Soft Ice Cream FUTABA Green tea & Vanilla", price: "8.54", image: "https://static.wixstatic.com/media/ee128c_9ad2d2efc0a64c12b1bc102e3b2e4041~mv2.jpg/v1/fill/w_625,h_625,al_c,lg_1,q_85/ee128c_9ad2d2efc0a64c12b1bc102e3b2e4041~mv2.webp", store_id: "1", category_id: "4")
    Product.create(name: "Choco Vanilla Soft 6pc 8/450ml", description: "Frozen Soft Ice Cream FUTABA Chocolate & Vanilla", price: "6.69", image: "https://static.wixstatic.com/media/ee128c_22db1590c4f044d98b7fde32624cae8b~mv2.jpg/v1/fill/w_497,h_512,al_c,lg_1,q_85/ee128c_22db1590c4f044d98b7fde32624cae8b~mv2.webp", store_id: "1", category_id: "4")
    Product.create(name: "KagoshimaA5 WagyuSlice 300g", description: "Frozen Wagu Slice", price: "41.73", image: "https://static.wixstatic.com/media/ee128c_8d1a795a28294f1db3c7e99fbd25325c~mv2.jpg/v1/fill/w_625,h_393,al_c,q_85,usm_0.66_1.00_0.01/ee128c_8d1a795a28294f1db3c7e99fbd25325c~mv2.webp", store_id: "1", category_id: "4")
    Product.create(name: "WPM Pork Gyoza L size 30g 1.2kg", description: "Frozen Pork Dumplings", price: "18.49", image: "https://static.wixstatic.com/media/54ff52_903697dc74404463917050048c1dfc46~mv2.png/v1/fill/w_625,h_625,al_c,q_90,usm_0.66_1.00_0.01/54ff52_903697dc74404463917050048c1dfc46~mv2.webp", store_id: "1", category_id: "4")
end

def make_users
    ["Tyra", "Meerab", "Charis", "Mehak", "Zane"].each do |user|
        User.create(username: user)
    end
end

def make_admin_store
    AdminStore.create(admin_id: 1, store_id: 1)
    AdminStore.create(admin_id: 1, store_id: 2)
    AdminStore.create(admin_id: 1, store_id: 3)
    AdminStore.create(admin_id: 1, store_id: 4)
end



make_seeds