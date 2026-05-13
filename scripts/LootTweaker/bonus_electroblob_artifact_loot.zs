import loottweaker.LootTweaker;
import loottweaker.LootTable;
import loottweaker.LootPool;
import loottweaker.Conditions;
import crafttweaker.item.IItemStack;

val lootTables = [
    "minecraft:chests/abandoned_mineshaft",
    "minecraft:chests/desert_pyramid",
    "minecraft:chests/end_city_treasure",
    "minecraft:chests/igloo_chest",
    "minecraft:chests/jungle_temple_dispenser",
    "minecraft:chests/jungle_temple",
    "minecraft:chests/nether_bridge",
    "minecraft:chests/simple_dungeon",
    "minecraft:chests/spawn_bonus_chest",
    "minecraft:chests/stronghold_corridor",
    "minecraft:chests/stronghold_crossing",
    "minecraft:chests/stronghold_library",
    "minecraft:chests/woodland_mansion",
    "quark:chests/pirate_chest",
    "castle_dungeons:chests/loot",
    "cqrepoured:chests/treasure",
    "cqrepoured:chests/material",
    "cqrepoured:chests/equipment",
    "cqrepoured:chests/clutter",
    "db:ocean_temple_level_two",
    "db:ocean_temple",
    "charm:treasure/dangerous",
    "charm:treasure/common",
    "charm:treasure/rare",
    "charm:treasure/valuable",
    "charm:treasure/uncommon",
    "oe:chests/shipwreck_treasure",
    "oe:chests/shipwreck_supply",
    "oe:chests/monument_mystic",
    "ancientspellcraft:chests/treasure_chest",
    "ancientspellcraft:chests/battlemage_camp",
    "ancientspellcraft:chests/sage_camp",
    "ancientspellcraft:chests/ancient_vault",
    "ancientwarfare:chests/demon",
    "ancientwarfare:chests/barbarian",
    "ancientwarfare:chests/beast",
    "ancientwarfare:chests/beast_treasure_hoard",
    "ancientwarfare:chests/giant",
    "ancientwarfare:chests/goblin",
    "ancientwarfare:chests/gravestone_high_value",
    "ancientwarfare:chests/gravestone_low_value",
    "ancientwarfare:chests/gravestone_medium_value",
    "ancientwarfare:chests/gremlin",
    "ancientwarfare:chests/guardian",
    "ancientwarfare:chests/icelord",
    "ancientwarfare:chests/kong",
    "ancientwarfare:chests/lizardman",
    "ancientwarfare:chests/malice",
    "ancientwarfare:chests/monster_treasure_hoard",
    "ancientwarfare:chests/monster",
    "ancientwarfare:chests/nogg",
    "ancientwarfare:chests/norska",
    "ancientwarfare:chests/orc",
    "ancientwarfare:chests/pirate_treasure",
    "ancientwarfare:chests/pirate",
    "ancientwarfare:chests/undead",
    "ancientwarfare:chests/vampire",
    "ancientwarfare:chests/witchbane",
    "ancientwarfare:chests/xoltec_terracotta",
    "ancientwarfare:chests/zimba_ancient_mines",
    "ancientwarfare:chests/zimba",
    "ancientwarfare:chests/klown",
    "ancientwarfare:chests/ishtari",
    "artifacts:chest_underground",
    "iceandfire:ice_dragon_male_cave",
    "iceandfire:ice_dragon_female_cave",
    "iceandfire:fire_dragon_male_cave",
    "iceandfire:fire_dragon_female_cave",
    "iceandfire:lightning_dragon_male_cave",
    "iceandfire:lightning_dragon_female_cave"
] as string[];

// --- Uncommon: Yellow ---
val itemsYellow = [
    // --- Electroblob's Wizardry ---
    <ebwizardry:ring_siphoning>,
    <ebwizardry:ring_fire_melee>,
    <ebwizardry:ring_fire_biome>,
    <ebwizardry:ring_ice_melee>,
    <ebwizardry:ring_ice_biome>,
    <ebwizardry:ring_lightning_melee>,
    <ebwizardry:ring_necromancy_melee>,
    <ebwizardry:ring_earth_melee>,
    <ebwizardry:ring_earth_biome>,
    <ebwizardry:ring_mana_return>,
    <ebwizardry:ring_extraction>,
    <ebwizardry:ring_paladin>,
    <ebwizardry:amulet_fire_protection>,
    <ebwizardry:amulet_ice_protection>,
    <ebwizardry:amulet_channeling>,
    <ebwizardry:amulet_banishing>,
    <ebwizardry:amulet_recovery>,
    <ebwizardry:charm_minion_health>,
    <ebwizardry:charm_minion_variants>,
    <ebwizardry:charm_spell_discovery>,
    <ebwizardry:charm_growth>,
    <ebwizardry:charm_sixth_sense>,
    <ebwizardry:charm_feeding>,

    // --- Ancient Spellcraft ---
    <ancientspellcraft:ring_mana_lesser>,
    <ancientspellcraft:ring_poison_arrow>,
    <ancientspellcraft:ring_power>,
    <ancientspellcraft:ring_prismarine>,
    <ancientspellcraft:ring_lily_flower>,
    <ancientspellcraft:amulet_mana>,
    <ancientspellcraft:amulet_rabbit>,
    <ancientspellcraft:charm_seed_bag>,
    <ancientspellcraft:charm_wizard_tankard>,
    <ancientspellcraft:alchemical_essence>,
    <ancientspellcraft:blank_rune>,
    <ancientspellcraft:devoritium_nugget>,

    // --- Arcane Apprentices ---
    <arcaneapprentices:charm_seal_of_fate>,
    <arcaneapprentices:charm_itinerary>,
    <arcaneapprentices:charm_bag_9>,

    // --- Necromancer's Delight ---
    <necromancersdelight:ring_nameless>,
    <necromancersdelight:ring_legion>,
    <necromancersdelight:amulet_necromantic_ward>,
    <necromancersdelight:amulet_leech_crystal>,

    // --- Spellbundle ---
    <spellbundle:charm_wishing_well>,

    // --- Wizardry Golems ---
    <wizardrygolems:ring_grass>,
    <wizardrygolems:ring_sandstone>,
    <wizardrygolems:ring_engraved_concrete>
] as IItemStack[];

// --- Rare: Aqua (Light Blue) ---
val itemsLightBlue = [
    // --- Electroblob's Wizardry ---
    <ebwizardry:amulet_lich>,
    <ebwizardry:charm_transportation>,
    <ebwizardry:charm_abseiling>,
    <ebwizardry:charm_light>,
    <ebwizardry:charm_mount_teleporting>,
    <ebwizardry:charm_hunger_casting>,
    <ebwizardry:charm_haggler>,
    <ebwizardry:charm_move_speed>,
    <ebwizardry:charm_auto_smelt>,
    <ebwizardry:charm_storm>,
    <ebwizardry:charm_undead_helmets>,
    <ebwizardry:ring_condensing>,
    <ebwizardry:ring_disintegration>,
    <ebwizardry:ring_shattering>,
    <ebwizardry:ring_storm>,
    <ebwizardry:ring_stormcloud>,
    <ebwizardry:ring_leeching>,
    <ebwizardry:ring_mind_control>,
    <ebwizardry:ring_full_moon>,
    <ebwizardry:ring_evoker>,
    <ebwizardry:ring_blockwrangler>,
    <ebwizardry:ring_poison>,
    <ebwizardry:ring_defender>,
    <ebwizardry:amulet_arcane_defence>,
    <ebwizardry:amulet_wisdom>,
    <ebwizardry:amulet_fire_cloaking>,
    <ebwizardry:amulet_frost_warding>,
    <ebwizardry:amulet_potential>,
    <ebwizardry:amulet_anchoring>,
    <ebwizardry:amulet_transience>,
    <ebwizardry:amulet_auto_shield>,

    // --- Ancient Spellcraft ---
    <ancientspellcraft:amulet_cursed_mirror>,
    <ancientspellcraft:amulet_absorb_potion>,
    <ancientspellcraft:amulet_spellbinding>,
    <ancientspellcraft:amulet_cursed_pendant>,
    <ancientspellcraft:amulet_elemental_defense>,
    <ancientspellcraft:amulet_black_tongue>,
    <ancientspellcraft:amulet_of_resistance>,
    <ancientspellcraft:amulet_curse_ward>,
    <ancientspellcraft:ring_unbinding>,
    <ancientspellcraft:ring_disenchanter>,
    <ancientspellcraft:ring_quicksand>,
    <ancientspellcraft:ring_mana_greater>,
    <ancientspellcraft:ring_devotion>,
    <ancientspellcraft:charm_ice_cream>,
    <ancientspellcraft:charm_hungry_chest>,
    <ancientspellcraft:charm_diamond_goose>,
    <ancientspellcraft:charm_bucket_coal>,
    <ancientspellcraft:cornucopia>,
    <ancientspellcraft:charm_gold_bag>,
    <ancientspellcraft:charm_hoarders_orb>,
    <ancientspellcraft:charm_metamagic_amplifier>,
    <ancientspellcraft:charm_voltaic_vessel>,
    <ancientspellcraft:mystic_spell_book>,

    // --- Arcane Apprentices ---
    <arcaneapprentices:belt_explorer>,
    <arcaneapprentices:charm_focus_of_clarity>,
    <arcaneapprentices:belt_strength>,
    <arcaneapprentices:head_knowledge>,
    <arcaneapprentices:amulet_survival_chance>,
    <arcaneapprentices:ring_serendipity>,
    <arcaneapprentices:charm_golden_lure>,

    // --- Necromancer's Delight ---
    <necromancersdelight:belt_thorns>,
    <necromancersdelight:charm_mummy_minion>,
    <necromancersdelight:charm_bone_bag>,
    <necromancersdelight:ring_frozen_dagger>,
    <necromancersdelight:amulet_leechlink>,
    <necromancersdelight:amulet_malice_ward>,

    // --- Wizardry Golems ---
    <wizardrygolems:ring_forest_guardian>,
    <wizardrygolems:ring_ancient_emperor>,
    <wizardrygolems:ring_snow_golem>,
    <wizardrygolems:ring_fire_golem_duration>,
    <wizardrygolems:ring_lodestone_golem>,
    <wizardrygolems:ring_spark_golem>,
    <wizardrygolems:ring_electric_scatter>,
    <wizardrygolems:amulet_jagged_sapphire>,
    <wizardrygolems:amulet_broken_ice>,
    <wizardrygolems:charm_fire_golemancy_potency>,
    <wizardrygolems:head_permafrost_crown>,
    <wizardrygolems:belt_coldlink>,
    <wizardrygolems:ring_smoldering>,
    <wizardrygolems:charm_dried_mushroom>,
    <wizardrygolems:ring_charcoal>,
    <wizardrygolems:amulet_snare>,

    // --- Mo' Spells ---
    <mospells:charm_cold_winds>,
    <mospells:charm_monster_tome>,
    <mospells:ring_wind_touch>,

    // --- Spellbundle ---
    <spellbundle:charm_spectral_hammer>,
    <spellbundle:ring_key>,
    <spellbundle:charm_spirit_guide>
] as IItemStack[];

// --- Epic: Light Purple (Pinkish) ---
val itemsLightPurple = [
    // --- Electroblob's Wizardry ---
    <ebwizardry:amulet_resurrection>,
    <ebwizardry:charm_flight>,
    <ebwizardry:charm_stop_time>,
    <ebwizardry:charm_lava_walking>,
    <ebwizardry:charm_black_hole>,
    <ebwizardry:charm_silk_touch>,
    <ebwizardry:charm_experience_tome>,
    <ebwizardry:amulet_absorption>,
    <ebwizardry:amulet_ice_immunity>,

    // --- Ancient Spellcraft ---
    <ancientspellcraft:amulet_pendant_of_eternity>,
    <ancientspellcraft:amulet_time_knot>,
    <ancientspellcraft:amulet_arcane_catalyst>,
    <ancientspellcraft:amulet_elemental_aura>,
    <ancientspellcraft:amulet_time_slow>,
    <ancientspellcraft:amulet_holy_aura>,
    <ancientspellcraft:amulet_celerity>,
    <ancientspellcraft:ring_withdraw_life>,
    <ancientspellcraft:ring_cloudwalker>,
    <ancientspellcraft:ring_spirit_ward>,
    <ancientspellcraft:ring_kinetic>,
    <ancientspellcraft:ring_metamagic_preserve>,
    <ancientspellcraft:ring_rare_scroll>,
    <ancientspellcraft:ring_chaos_blast_multitarget>,
    <ancientspellcraft:ring_of_force>,
    <ancientspellcraft:ring_life_drain>,
    <ancientspellcraft:ring_undeath>,
    <ancientspellcraft:ring_eternal_contingency>,
    <ancientspellcraft:ring_eternal_servitude>,
    <ancientspellcraft:ring_shivering>,
    <ancientspellcraft:ring_permanent_shrinkage>,
    <ancientspellcraft:ring_permanent_growth>,
    <ancientspellcraft:ring_arcane_flames>,
    <ancientspellcraft:ring_healer>,
    <ancientspellcraft:charm_mana_flask>,
    <ancientspellcraft:charm_vaulting_boots>,
    <ancientspellcraft:charm_rift_bottle>,
    <ancientspellcraft:body_clockwork_heart>,
    <ancientspellcraft:body_cloak_of_levitation>,
    <ancientspellcraft:head_mask_of_silence>,
    <ancientspellcraft:scepter_mind_control>,
    <ancientspellcraft:forbidden_tome>,

    // --- Arcane Apprentices ---
    <arcaneapprentices:charm_bag_27>,
    <arcaneapprentices:charm_withering_atlas>,
    <arcaneapprentices:charm_talent_detector>,
    <arcaneapprentices:charm_spell_compass>,
    <arcaneapprentices:charm_eternal_grimoire>,

    // --- Necromancer's Delight ---
    <necromancersdelight:charm_scarab>,
    <necromancersdelight:charm_mushroom_minion>,
    <necromancersdelight:head_pest_crown>,
    <necromancersdelight:ring_forsaken>,
    <necromancersdelight:amulet_slowness_immunity>,
    <necromancersdelight:amulet_weakness_immunity>,

    // --- Wizardry Golems ---
    <wizardrygolems:ring_permanent_golem>,
    <wizardrygolems:charm_static_aura>,
    <wizardrygolems:amulet_raging_skies>,
    <wizardrygolems:head_maelstrom_golem>,
    <wizardrygolems:charm_living_snow>,
    <wizardrygolems:body_frost_cloak>,
    <wizardrygolems:ring_flame_golem>,
    <wizardrygolems:amulet_steaming_netherrack>,
    <wizardrygolems:charm_ifrit_bottle>,
    <wizardrygolems:ring_winter_golem>,
    <wizardrygolems:amulet_deathweed>,
    <wizardrygolems:amulet_gaia>,

    // --- Spellbundle & Mo' Spells ---
    <spellbundle:amulet_reforging>,
    <spellbundle:ring_wraith>,
    <mospells:amulet_golden_sun>,
    <mospells:amulet_frostmaw>,
    <mospells:amulet_earth>
] as IItemStack[];

for lootTable in lootTables {
    val table = LootTweaker.getTable(lootTable);

    // Uncommon: Yellow
    val poolAdv = table.addPool("as_advanced", 1, 1, 0, 0);
    poolAdv.addConditions([Conditions.randomChance(0.02)]);
    for item in itemsYellow { poolAdv.addItemEntry(item, 5); }

    // Rare: Aqua (Light Blue)
    val poolMas = table.addPool("as_master", 1, 1, 0, 0);
    poolMas.addConditions([Conditions.randomChance(0.01)]);
    for item in itemsLightBlue { poolMas.addItemEntry(item, 2); }

    // Epic: Light Purple (Pinkish)
    val poolLeg = table.addPool("as_legendary", 1, 1, 0, 0);
    poolLeg.addConditions([Conditions.randomChance(0.005)]);
    for item in itemsLightPurple { poolLeg.addItemEntry(item, 1); }
}