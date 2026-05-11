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

// --- APPRENTICE TIER ---
// Common weight: 10, Chance: 10%
val itemsApprentice = [
    <ebwizardry:ring_condensing>,
	<ebwizardry:ring_siphoning>,
	<ebwizardry:ring_fire_melee>, 
    <ebwizardry:ring_ice_melee>,
	<ebwizardry:ring_lightning_melee>,
	<ebwizardry:ring_poison>,
    <ebwizardry:ring_earth_melee>,
	<ebwizardry:ring_mana_return>,
	<ebwizardry:amulet_wisdom>,
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
    <wizardrygolems:ring_grass>,
	<wizardrygolems:ring_sandstone>,
	<wizardrygolems:ring_charcoal>
] as IItemStack[];

// --- ADVANCED TIER ---
// Weight: 5, Chance: 6%
val itemsAdvanced = [
    <ebwizardry:ring_battlemage>,
	<ebwizardry:ring_combustion>,
	<ebwizardry:ring_meteor>,
    <ebwizardry:amulet_arcane_defence>,
	<ebwizardry:amulet_warding>,
	<ebwizardry:amulet_potential>,
    <ancientspellcraft:amulet_elemental_offense>,
	<ancientspellcraft:amulet_talisman_of_affinity>, 
    <ancientspellcraft:amulet_poison_resistance>,
	<ancientspellcraft:amulet_power>, 
    <ancientspellcraft:amulet_persistence>,
	<ancientspellcraft:amulet_healing_mushroom>, 
    <ancientspellcraft:amulet_shield>,
	<ancientspellcraft:amulet_imbued_marble>, 
    <ancientspellcraft:amulet_oakflesh>,
	<ancientspellcraft:amulet_inspiration>, 
    <ancientspellcraft:amulet_domus>,
	<ancientspellcraft:amulet_searing_skin>, 
    <ancientspellcraft:ring_mana_transfer>,
	<ancientspellcraft:ring_protector>, 
    <ancientspellcraft:ring_mana_cost>,
	<ancientspellcraft:ring_charge>, 
    <ancientspellcraft:ring_solid_air>,
	<ancientspellcraft:ring_lodestone>, 
    <ancientspellcraft:ring_berserker>,
	<ancientspellcraft:ring_blast>, 
    <ancientspellcraft:ring_range>,
	<ancientspellcraft:ring_duration>, 
    <ancientspellcraft:ring_focus_crystal>,
	<ancientspellcraft:ring_griefing>, 
    <ancientspellcraft:ring_absorb_crystal>,
	<ancientspellcraft:charm_wild_catalyst>, 
    <ancientspellcraft:charm_sentinel_eye>,
	<ancientspellcraft:charm_transcribing_tome>, 
    <ancientspellcraft:charm_mana_orb>,
	<ancientspellcraft:charm_specterlight_torch>, 
    <ancientspellcraft:charm_wardrobe>,
	<ancientspellcraft:charm_quicksand_walker>, 
    <ancientspellcraft:charm_magic_light>,
	<ancientspellcraft:charm_burrow>, 
    <ancientspellcraft:charm_evergrowing_crystal>,
	<ancientspellcraft:head_merchant>, 
    <ancientspellcraft:head_ardor_crown>, 
	<ancientspellcraft:devoritium_ingot>,
    <mospells:ring_wind_touch>,
	<mospells:ring_ice_crystal>,
	<mospells:amulet_earth>,
	<mospells:amulet_golden_sun>,
    <wizardrygolems:ring_obsidian>,
	<wizardrygolems:ring_glistering>,
	<wizardrygolems:ring_smoldering>,
    <wizardrygolems:ring_flame_trail>,
	<wizardrygolems:ring_frostbite>,
	<wizardrygolems:amulet_snare>,
    <wizardrygolems:amulet_gaia>,
	<wizardrygolems:charm_dried_mushroom>,
	<wizardrygolems:charm_frozen_mark>,
    <wizardrygolems:charm_static_aura>,
	<wizardrygolems:belt_coldlink>
] as IItemStack[];

// --- MASTER TIER ---
// Weight: 2, Chance: 2%
val itemsMaster = [
    <ebwizardry:amulet_lich>,
	<ebwizardry:charm_transportation>, 
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
    <mospells:amulet_frostmaw>,
	<mospells:charm_cold_winds>,
	<mospells:charm_monster_tome>,
    <wizardrygolems:ring_forest_guardian>,
	<wizardrygolems:ring_ancient_emperor>,
	<wizardrygolems:ring_snow_golem>,
    <wizardrygolems:ring_fire_golem_duration>, 
	<wizardrygolems:ring_flame_golem>,
	<wizardrygolems:ring_winter_golem>,
    <wizardrygolems:ring_lodestone_golem>,
	<wizardrygolems:ring_spark_golem>,
	<wizardrygolems:ring_electric_scatter>,
    <wizardrygolems:amulet_deathweed>,
	<wizardrygolems:amulet_steaming_netherrack>,
	<wizardrygolems:amulet_jagged_sapphire>,
    <wizardrygolems:amulet_broken_ice>, 
	<wizardrygolems:amulet_raging_skies>, 
	<wizardrygolems:charm_ifrit_bottle>,
    <wizardrygolems:charm_fire_golemancy_potency>, 
	<wizardrygolems:charm_living_snow>, 
	<wizardrygolems:head_permafrost_crown>,
    <wizardrygolems:head_maelstrom_golem>, 
	<wizardrygolems:body_frost_cloak>
] as IItemStack[];

// --- LEGENDARY TIER ---
// Weight: 1, Chance: 0.5%
val itemsLegendary = [
    <ebwizardry:amulet_resurrection>,
	<ebwizardry:charm_flight>,
	<ebwizardry:charm_stop_time>,
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
    <wizardrygolems:ring_permanent_golem>
] as IItemStack[];

for lootTable in lootTables {
    val table = LootTweaker.getTable(lootTable);
    
    // Apprentice Pool (Common/Utility)
    val poolApp = table.addPool("as_apprentice", 1, 1, 0, 0);
    poolApp.addConditions([Conditions.randomChance(0.10)]);
    for item in itemsApprentice { poolApp.addItemEntry(item, 10); }

    // Advanced Pool (Uncommon/Specialized)
    val poolAdv = table.addPool("as_advanced", 1, 1, 0, 0);
    poolAdv.addConditions([Conditions.randomChance(0.06)]);
    for item in itemsAdvanced { poolAdv.addItemEntry(item, 5); }

    // Master Pool (Rare/Powerful)
    val poolMas = table.addPool("as_master", 1, 1, 0, 0);
    poolMas.addConditions([Conditions.randomChance(0.02)]);
    for item in itemsMaster { poolMas.addItemEntry(item, 2); }

    // Legendary Pool (End-game/Meta-breaking)
    val poolLeg = table.addPool("as_legendary", 1, 1, 0, 0);
    poolLeg.addConditions([Conditions.randomChance(0.005)]);
    for item in itemsLegendary { poolLeg.addItemEntry(item, 1); }
}