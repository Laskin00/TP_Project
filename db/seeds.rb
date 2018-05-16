# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: "Alex Laskin", email: "alex_l13@abv.bg", password: "efu311",
   password_confirmation: "efu311", image_url: "https://www.mobafire.com/images/champion/square/master-yi.png",
   permissions: 3, activated: true, activated_at: Time.zone.now)
User.create!(name: "ImTheWizzy", email: "Martin_todo9@abv.bg", password: "123123",
      password_confirmation: "123123", image_url: "https://www.mobafire.com/images/champion/square/master-yi.png",
      permissions: 3, activated: true, activated_at: Time.zone.now)

Warframe.create!(name: "Ash",
   image_url: "https://vignette.wikia.nocookie.net/warframe/images/1/17/AshNewLook.png/revision/latest/scale-to-width-down/291?cb=20141124022921",
   whereToGet: "Dropped from Manics (33% for each Manic)", neuropticsDropChance: "38.72%", systemsDropChance: "22.56%",
   blueprintDropChance: "Can be bought from the shop." , chassisDropChance: "38.72%",
   armor: "65", energy: "100 (150 at rank 30)", health: "150 (450 at rank 30)",
   shield: "100 (300 at rank 30)" , mastery_rank: 0,
   description: "Ash is a fast, maneuverable Warframe that possesses a high degree of survivability in the field. Fleet movement complements deadly tools of assassination, making Ash a perfect balance between killing potency and stealth.")

Warframe.create!(name: "Atlas",
   image_url: "https://vignette.wikia.nocookie.net/warframe/images/7/7f/AtlasNewLook.png/revision/latest/scale-to-width-down/291?cb=20151002032553",
   whereToGet: "The blueprint is awarded after completing The Jordas Precept Quest, which unlocks the Jordas Golem Archwing Assassination mission that drops the remaining parts.",
   neuropticsDropChance: "38.72%" , systemsDropChance: "22.56%",
   blueprintDropChance: "100%", chassisDropChance: "38.72%",
    armor: "450", energy: "150 (225 at rank 30)", health: "100 (300 at rank 30)",
   shield: "100 (300 at rank 30)", mastery_rank: "0",
   description:"With stone cold fists and a titan's physique, Atlas bends rock to encrust and bulldoze through all challengers in his brawl. Champion of elemental earth, he manifests formidable ramparts, crushing boulders, and golem brethren to rampage his stomping grounds."
)
Warframe.create!(name: "Banshee",
    image_url: "https://vignette.wikia.nocookie.net/warframe/images/9/9d/BansheeNewLook.png/revision/latest/scale-to-width-down/291?cb=20141124023002",
    whereToGet: "Banshee's blueprint can be purchased from the Tenno Lab interface in the Dojo once it has been researched. The blueprint is also required to research its components.", neuropticsDropChance: "" , systemsDropChance: "",
    blueprintDropChance: "", chassisDropChance: "",
    armor: "15", energy: "150 (225 at rank 30)", health: "100 (300 at rank 30)",
    shield: "100 (300 at rank 30)", mastery_rank: "0",
    description:"Banshee is a sound-themed Warframe. Sophisticated acoustic powers enable Banshee to pinpoint enemy positions and weak spots, suppress gunfire sounds in her surrounding environment, and even emit trembling vibrations to topple her foes"
)
Warframe.create!(name: "Chroma",
    image_url: "https://vignette.wikia.nocookie.net/warframe/images/2/2d/ChromaNewLook.png/revision/latest/scale-to-width-down/291?cb=20150324023405",
    whereToGet: "Chroma's main blueprint will be rewarded upon completion of the quest The New Strange.Component blueprints are awarded by completing Junctions. The Neuroptics will be rewarded after completing the Uranus Junction, the Chassis the Neptune Junction and the Systems the Pluto Junction.", neuropticsDropChance: "" , systemsDropChance: "",
    blueprintDropChance: "", chassisDropChance: "",
    armor: "350", energy: "150 (225 at rank 30)", health: "100 (300 at rank 30)",
    shield: "100 (300 at rank 30)", mastery_rank: "0",
    description: "The bestial avatar of the primal forces of nature, Chroma, confounds his foes and strengthens his allies with elemental caprice."
)
Warframe.create!(name: "Ember",
    image_url: "https://vignette.wikia.nocookie.net/warframe/images/a/a7/EmberNewLook.png/revision/latest/scale-to-width-down/291?cb=20141124023013",
    whereToGet: "Component blueprints drop from General Sargas Ruk (Tethys, Saturn).",
    neuropticsDropChance: "38.72%" , systemsDropChance: "22.56%",
    blueprintDropChance: "", chassisDropChance: "38.72%",
    armor: "100", energy: "150 (225 at rank 30)", health: "100 (300 at rank 30)",
    shield: "100 (300 at rank 30)", mastery_rank: "0",
    description: "Ember is a fire-based Warframe that relies on almost purely offensive skills. Ember's fire abilities make her very effective against the Infested."
)
Warframe.create!(name: "Equinox",
    image_url: "https://vignette.wikia.nocookie.net/warframe/images/e/ee/EquinoxSolo.png/revision/latest/scale-to-width-down/291?cb=20150731173954",
    whereToGet: "Equinox requires a unique method to craft: Tenno must forge both the Equinox Night Aspect and Equinox Day Aspect in the Foundry – each of which requires its respective Neuroptics, Chassis, and Systems – before the Warframe itself can be built. Component and Aspect blueprints are acquired by defeating Tyl Regor at Titania, Uranus; the main blueprint can be bought in the market.",
    neuropticsDropChance: "12.91%" , systemsDropChance: "12.91%",
    blueprintDropChance: "12.91%", chassisDropChance: "12.91%",
    armor: "100", energy: "150 (225 at rank 30)", health: "100 (300 at rank 30)",
    shield: "100 (300 at rank 30)", mastery_rank: "0",
    description: "A duality of contrasting forces in a single entity, Equinox unleashes wrath like the onset of daybreak, or draws life to a close like dusk's approach. Shifting between two forms allows her to bolster Tenno strength in light or provide recuperative respite in darkness."
)
Warframe.create!(name: "Excalibur",
    image_url: "https://vignette.wikia.nocookie.net/warframe/images/4/40/ExcaliburNewLook.png/revision/latest/scale-to-width-down/291?cb=20141124023040",
    whereToGet: "Excalibur's component blueprints drop from Lieutenant Lech Kril on War, Mars. Excalibur can also be bought complete from Teshin for 60000 reputation once players have achieved Typhoon rank in the Conclave.",
    neuropticsDropChance: "38.72%" , systemsDropChance: "22.56%",
    blueprintDropChance: "", chassisDropChance: "38.72%",
    armor: "225", energy: "100 (150 at rank 30)", health: "100 (300 at rank 30)",
    shield: "100 (300 at rank 30)", mastery_rank: "0",
    description: "Excalibur is a sword-themed Warframe. With the power to channel energy into his summoned blade, he is a mobile swordsman with potent methods of execution. Excalibur is one of three starter options for new players."
)
# Warframe.create!(name: "",
#     image_url: "",
#     whereToGet: "",
#     neuropticsDropChance: "" , systemsDropChance: "",
#     blueprintDropChance: "", chassisDropChance: "",
#     armor: "", energy: "", health: "",
#     shield: "", mastery_rank: "",
#     description: ""
# )


Relic.create!(name: "Axi A3", image_url: "https://image.ibb.co/gb4b5H/axi_wf_wiki.png",
  whereToGet: "Sedna Hydron", relic_type: "axi")

Mod.create!(name: "Maiming Strike", whereToGet: "Once a year event", image_url: "https://vignette.wikia.nocookie.net/warframe/images/d/d6/MaimingStrikeMod.png/revision/latest?cb=20171007152935", mod_type: "weapon")
Weapon.create!(name: "Atterax", whereToGet: "Market", weapon_type: "melee", image_url: "https://vignette.wikia.nocookie.net/warframe/images/4/4e/GrineerWhip.png/revision/latest/scale-to-width-down/220?cb=20140918035809",
   attack_type: "Whip", mastery_rank: 2, impact: 2 , puncture: 2, viral: 2, toxin: 3)
