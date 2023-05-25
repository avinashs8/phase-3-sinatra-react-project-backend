puts "🌱 Seeding spices..."

# Seed your database here
walgreens = Pharmacy.create(name: "Walgreens")
cvs = Pharmacy.create(name: "CVS")
walmart = Pharmacy.create(name: "Walmart")

Drug.create(name: "warfarin", dose: "5 mg", formulation: "tablets", quantity: 6, pharmacy_id: walgreens.id)
Drug.create(name: "amlodipine", dose: "5 mg", formulation: "tablets", quantity: 7, pharmacy_id: walgreens.id)
Drug.create(name: "enalapril", dose: "5 mg", formulation: "tablets", quantity: 30, pharmacy_id: cvs.id)
Drug.create(name: "atorvastatin", dose: "40 mg", formulation: "tablets", quantity: 60, pharmacy_id: cvs.id)
Drug.create(name: "metoprolol", dose: "25 mg", formulation: "tablets", quantity: 20, pharmacy_id: walmart.id)
Drug.create(name: "amoxicillin", dose: "500 mg", formulation: "capsules", quantity: 14, pharmacy_id: walmart.id)

puts "✅ Done seeding!"
