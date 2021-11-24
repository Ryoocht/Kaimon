def make_seeds
    make_states
    make_categories
    make_stores
    make_store_address
    make_admins
    make_product
    make_users
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
        Store.create(name: store)
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
    Product.create(name: "Matcha Vanilla Soft 6pc 450ml", description: "Frozen Soft Ice Cream FUTABA Green tea & Vanilla", price: "8.54", store_id: "1", category_id: "4")
end

def make_users
    ["Tyra", "Meerab", "Charis", "Mehak", "Zane"].each do |user|
        User.create(username: user)
    end
end



make_seeds