Furniture.destroy_all
User.destroy_all
# ______________USERS__________________

nicole = User.create(username: "Nicole", password: "password")




# ____________FURNITURE_____________

furniture1 = Furniture.create(name: "Sectional", room: "Living Room", store: "Article", user_id: User.find_by(username: "Nicole").id, photo: {io: File.open("#{Rails.root}/public/images/sectional.png"), filename: "sectional.png"})
furniture2 = Furniture.create(name: "Dining Table", room: "Dining Room", store: "CB2", user_id: User.find_by(username: "Nicole").id, photo: {io: File.open("#{Rails.root}/public/images/dining_table.png"), filename: "dining_table.png"})
furniture3 = Furniture.create(name: "Bed", room: "Main Bedroom", store: "West elm", user_id: User.find_by(username: "Nicole").id, photo: {io: File.open("#{Rails.root}/public/images/bed.png"), filename: "bed.png"})
furniture4 = Furniture.create(name: "Credenza", room: "Living Room", store: "CB2", user_id: User.find_by(username: "Nicole").id, photo: {io: File.open("#{Rails.root}/public/images/cradenza.png"), filename: "cradenza.png"})
furniture5 = Furniture.create(name: "Crib", room: "Baby Room", store: "Oeuf", user_id: User.find_by(username: "Nicole").id, photo: {io: File.open("#{Rails.root}/public/images/crib.png"), filename: "crib.png"})
furniture6 = Furniture.create(name: "Outdoor Sofa", room: "Patio", store: "AllModern", user_id: User.find_by(username: "Nicole").id, photo: {io: File.open("#{Rails.root}/public/images/outdoor_sofa.png"), filename: "outdoor_sofa.png"})
furniture7 = Furniture.create(name: "shelf", room: "Dining Room", store: "Blu Dot", user_id: User.find_by(username: "Nicole").id, photo: {io: File.open("#{Rails.root}/public/images/shelf.png"), filename: "shelf.png"})
