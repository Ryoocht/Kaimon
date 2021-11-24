def make_seeds
    make_stores
end

def make_stores
    ["Metro", "Foodworks", "Hanaro", "Quick & Easy"].each do |store|
        Store.create(name: store)
    end
end

make_seeds