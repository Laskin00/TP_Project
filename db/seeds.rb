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
User.create!(name: "ImTheWizzy", email: "martin_todo9@abv.bg", password: "123456",
      password_confirmation: "123456", image_url: "https://www.mobafire.com/images/avatars/master-yi-project.png",
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
Warframe.create!(name: "Frost",
    image_url: "https://vignette.wikia.nocookie.net/warframe/images/5/5a/FrostNewLook.png/revision/latest/scale-to-width-down/291?cb=20141124023059",
    whereToGet: "Frost's component blueprints drop from Lieutenant Lech Kril & Captain Vor on Exta, Ceres.",
    neuropticsDropChance: "38.72%" , systemsDropChance: "22.56%",
    blueprintDropChance: "", chassisDropChance: "38.72%",
    armor: "300", energy: "100 (150 at rank 30)", health: "100 (300 at rank 30)",
    shield: "150 (450 at rank 30)", mastery_rank: "0",
    description: "Frost is a slow and heavily-armored Warframe that is able to utilize offensive and defensive skills to both his own and his team's advantage. He commands furious blizzards that pummel and freeze his enemies while providing respite and solace for his allies."
)
Warframe.create!(name: "Gara",
    image_url: "https://vignette.wikia.nocookie.net/warframe/images/2/2c/GaraNewLook.png/revision/latest/scale-to-width-down/280?cb=20171026104236",
    whereToGet: "Gara's main blueprint will be awarded upon completion of the Saya's Vigil quest.",
    neuropticsDropChance: "8.51% or 20.51%" , systemsDropChance: "9.52% or 21.82%",
    blueprintDropChance: "", chassisDropChance: "7.52% or 30.56%",
    armor: "125", energy: "150 (225 at rank 30)", health: "100 (300 at rank 30)",
    shield: "100 (300 at rank 30)", mastery_rank: "0",
    description: "Clad in lustrous vitrum, Gara sunders her foes with adamantine shards, reflects enemy attacks through enchanted mirrors, and reshapes the landscape with molten crystal."
)
Warframe.create!(name: "Harrow",
    image_url: "https://vignette.wikia.nocookie.net/warframe/images/4/4d/Harrow.png/revision/latest/scale-to-width-down/278?cb=20180121173742",
    whereToGet: "Harrow's main blueprint is awarded upon completion of the Chains of Harrow quest.",
    neuropticsDropChance: "11.28%" , systemsDropChance: "7.52% or 11.28%",
    blueprintDropChance: "", chassisDropChance: "3.00%",
    armor: "150", energy: "100 (150 at rank 30)", health: "100 (300 at rank 30)",
    shield: "150 (450 at rank 30)", mastery_rank: "0",
    description: "Dauntless and devout, the dark priest Harrow bestows upon his coven three virtues: salvation through sacrifice, redemption through vengeance, and ascension through defiance."
)
Warframe.create!(name: "Hydroid",
    image_url: "https://vignette.wikia.nocookie.net/warframe/images/9/9f/HydroidNewLook.png/revision/latest/scale-to-width-down/291?cb=20141124023113",
    whereToGet: "Component blueprints are rewarded from Councilor Vay Hek assassinations (Oro, Earth).",
    neuropticsDropChance: "38.72%" , systemsDropChance: "22.56%",
    blueprintDropChance: "", chassisDropChance: "38.72%",
    armor: "200", energy: "125 (188 at rank 30)", health: "100 (300 at rank 30)",
    shield: "125 (375 at rank 30)", mastery_rank: "0",
    description: "With the wrathful seas at his command, Hydroid lurks beneath raging tides to plunge his foes into the abyss. Unleashing salvos of cannon barrage and tentacled ocean horrors to rend foes asunder, Hydroid is reminiscent of the age of corsairs."
)
Warframe.create!(name: "Inaros",
    image_url: "https://vignette.wikia.nocookie.net/warframe/images/3/3a/InarosNewLook.png/revision/latest/scale-to-width-down/291?cb=20160308025219",
    whereToGet: "Inaros' main and component blueprints are obtainable from the Sands of Inaros quest.",
    neuropticsDropChance: "" , systemsDropChance: "",
    blueprintDropChance: "", chassisDropChance: "",
    armor: "200", energy: "100 (150 at rank 30)", health: "550 (2200 at rank 30)",
    shield: "0", mastery_rank: "0",
    description: "Once entombed, Inaros ravages, consumes and conquers all life swept up in his cursed sandstorms, leaving only the barren and drained desert of death in his wake. "
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

Relic.create!(name: "Axi A2", image_url: "https://image.ibb.co/gb4b5H/axi_wf.png",
  whereToGet: "Sedna Hydron" , relic_type: "axi")

Relic.create!(name: "Axi S7", image_url: "https://image.ibb.co/gb4b5H/axi_wf.png",
  whereToGet: "Sedna Hydron" , relic_type: "axi")

Relic.create!(name:"Lith F2", image_url: "https://image.ibb.co/eBhqXx/lith_wf_wiki.png",
  whereToGet: "Derelict Deffense or Saturn Rhea" , relic_type: "lith")

Relic.create!(name:"Lith S6", image_url: "https://image.ibb.co/eBhqXx/lith_wf_wiki.png",
  whereToGet: "Derelict Deffense or Saturn Rhea" , relic_type: "lith")

Relic.create!(name:"Lith A2", image_url: "https://image.ibb.co/eBhqXx/lith_wf_wiki.png",
  whereToGet: "Derelict Deffense or Saturn Rhea" , relic_type: "lith")

Relic.create!(name:"Meso N3", image_url: "https://image.ibb.co/msFusx/meso_wf_wiki.png",
  whereToGet: "Saturn Helene or Jupiter Io", relic_type: "meso")

Relic.create!(name:"Meso M2", image_url: "https://image.ibb.co/msFusx/meso_wf_wiki.png",
  whereToGet: "Saturn Helene or Jupiter Io", relic_type: "meso")

Relic.create!(name:"Meso M3", image_url: "https://image.ibb.co/msFusx/meso_wf_wiki.png",
  whereToGet: "Saturn Helene or Jupiter Io", relic_type: "meso")

Relic.create!(name:"Neo F3", image_url: "https://image.ibb.co/gNQ5zc/neo_wf_wiki.png",
  whereToGet: "Eris Kala-azar", relic_type: "neo")

Relic.create!(name:"Neo F2", image_url: "https://image.ibb.co/gNQ5zc/neo_wf_wiki.png",
  whereToGet: "Eris Kala-azar", relic_type: "neo")

Relic.create!(name:"Neo A3", image_url: "https://image.ibb.co/gNQ5zc/neo_wf_wiki.png",
  whereToGet: "Eris Kala-azar", relic_type: "neo")

Mod.create!(name: "Maiming Strike",
  whereToGet: "Once a year event",
  image_url: "https://vignette.wikia.nocookie.net/warframe/images/d/d6/MaimingStrikeMod.png/revision/latest?cb=20171007152935",
  mod_type: "weapon")

Mod.create!(name: "Primed Point Blank",
  whereToGet: "Baro Ki'Teer",
  image_url: "https://vignette.wikia.nocookie.net/warframe/images/8/87/PrimedPointBlank.png/revision/latest?cb=20171007153753",
  mod_type: "weapon")

Mod.create!(name: "Magnum Force",
  whereToGet: "Orokin vaults(Derelict)",
  image_url: "https://vignette.wikia.nocookie.net/warframe/images/9/9f/MagnumForceModU145.png/revision/latest?cb=20171007152932",
  mod_type: "weapon")

Mod.create!(name: "Primed Flow",
  whereToGet: "Baro Ki'Teer",
  image_url: "https://vignette.wikia.nocookie.net/warframe/images/b/b8/PrimedFlow.png/revision/latest?cb=20171007153729",
  mod_type: "warframe")

Mod.create!(name: "Narrow Minded",
  whereToGet: "Orokin vaults(Derelict)",
  image_url: "https://vignette.wikia.nocookie.net/warframe/images/0/01/NarrowMindedModU145.png/revision/latest?cb=20171007153247",
  mod_type: "warframe")

Mod.create!(name: "Vitality",
  whereToGet: "Almost every mission",
  image_url: "https://vignette.wikia.nocookie.net/warframe/images/b/bc/VitalityModU145.png/revision/latest?cb=20171007155821",
  mod_type: "warframe")

Weapon.create!(name: "Atterax", whereToGet: "Market",
   weapon_type: "melee",
   image_url: "https://vignette.wikia.nocookie.net/warframe/images/4/4e/GrineerWhip.png/revision/latest/scale-to-width-down/220?cb=20140918035809",
   attack_type: "Whip", mastery_rank: 2,
   impact: 2 , puncture: 2,
   viral: 2, toxin: 3)

Weapon.create!(name: "Broken War",
  whereToGet:"The secound dream Quest", weapon_type: "melee",
  image_url: "https://vignette.wikia.nocookie.net/warframe/images/b/b2/StalkerTwoSword.png/revision/latest/scale-to-width-down/220?cb=20151204013307",
  attack_type:"Sword" , mastery_rank: 10,
  impact: 9, puncture: 9,
  slash: 72)

Weapon.create!(name: "Galatine",
  whereToGet:"Market", weapon_type: "melee",
  image_url: "https://vignette.wikia.nocookie.net/warframe/images/d/df/Galatine_o.png/revision/latest/scale-to-width-down/220?cb=20130928190402",
  attack_type:"Sword" , mastery_rank: 3,
  impact: 3.1, puncture:3.1,
  slash: 118.9)

Weapon.create!(name: "Dread",
  whereToGet:"It is dropped by stalkers", weapon_type: "primary",
  image_url: "https://vignette.wikia.nocookie.net/warframe/images/2/20/Dread2.png/revision/latest/scale-to-width-down/220?cb=20180418151352",
  attack_type:"Bow" , mastery_rank: 5,
  impact:6.5, puncture:6.5,
  slash:117)

Weapon.create!(name: "Soma",
  whereToGet:"Market", weapon_type: "primary",
  image_url: "https://vignette.wikia.nocookie.net/warframe/images/a/a5/U10DesignCouncilTennoAR.png/revision/latest/scale-to-width-down/220?cb=20130914111405",
  attack_type:"Rifle" , mastery_rank: 6,
  impact:1.2, puncture:4.8,
  slash:6)

Weapon.create!(name: "Corinth",
  whereToGet:"Market", weapon_type: "primary",
  image_url: "https://vignette.wikia.nocookie.net/warframe/images/3/32/TnHeavyShotgun.png/revision/latest/scale-to-width-down/220?cb=20171221214433",
  attack_type:"Shotgun" , mastery_rank: 10,
  impact:151, puncture:226,
  slash:162)

Weapon.create!(name: "Akstiletto",
  whereToGet:"Market", weapon_type: "secondary",
  image_url: "https://vignette.wikia.nocookie.net/warframe/images/e/ef/TennoUzi.png/revision/latest/scale-to-width-down/220?cb=20140206061957",
  attack_type:"Dual pistols" , mastery_rank: 8,
  impact:16.8, puncture:2.8,
  slash:8.4)

Weapon.create!(name: "Akbolto",
  whereToGet:"Market", weapon_type: "secondary",
  image_url: "https://vignette.wikia.nocookie.net/warframe/images/0/0e/Akbolto.png/revision/latest/scale-to-width-down/220?cb=20130426075511",
  attack_type:"Dual pistols" , mastery_rank: 9,
  impact:4, puncture:36)

Weapon.create!(name: "Spira",
  whereToGet:"Market", weapon_type: "secondary",
  image_url: "https://vignette.wikia.nocookie.net/warframe/images/c/c5/LiDagger.png/revision/latest/scale-to-width-down/220?cb=20150924014336",
  attack_type:"Thrown" , mastery_rank:8,
  impact:8.2, puncture:49.2,
  slash:24.6)
