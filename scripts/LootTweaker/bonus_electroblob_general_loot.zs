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

val itemsCommon = [
    <ebwizardry:spectral_dust:1>,
    <ebwizardry:spectral_dust:2>,
    <ebwizardry:spectral_dust:3>,
    <ebwizardry:spectral_dust:4>,
    <ebwizardry:spectral_dust:5>,
    <ebwizardry:spectral_dust:6>,
    <ebwizardry:spectral_dust:7>
] as IItemStack [];

val itemsUncommon = [
    <ebwizardry:astral_diamond>,
    <ancientspellcraft:unsealing_scroll>,
    <ancientspellcraft:crystal_silver_nugget>
] as IItemStack [];

val itemsRare = [
    <ebwizardry:magic_crystal:2>,
    <ebwizardry:magic_crystal:1>,
    <ebwizardry:magic_crystal:3>,
    <ebwizardry:magic_crystal:4>,
    <ebwizardry:magic_crystal:5>,
    <ebwizardry:magic_crystal:6>,
    <ebwizardry:magic_crystal:7>,
    <ebwizardry:grand_crystal>
] as IItemStack [];

val itemsEpic = [
    <ebwizardry:crystal_silver_plating>,
    <ebwizardry:resplendent_thread>,
    <ebwizardry:ethereal_crystalweave>
] as IItemStack [];

val itemsLegendary = [

] as IItemStack [];

val lootChance = 0.3;

val commonWeight = 1;

for lootTable in lootTables {
    val currentTable = LootTweaker.getTable(lootTable);
    val currentPool = currentTable.addPool("electroblobGeneralLoot", 1, 1, 0, 0);
    currentPool.addConditions([
        Conditions.randomChance(lootChance)
    ]);

    for item in itemsCommon {
        currentPool.addItemEntry(
            item,
            commonWeight
        );
    }
}
