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
    "ancientwarfare:chests/ishtari"
] as string[];

val itemsCommon = [
    <iceandfire:silver_ingot>,
	<deeperdepths:material>,
    <ancientwarfare:steel_ingot>,
    <ebwizardry:magic_crystal>
] as IItemStack [];
    
val itemsUncommon = [
	<biomesoplenty:gem:1>,
    <biomesoplenty:gem:2>,
    <biomesoplenty:gem:5>,
	<biomesoplenty:gem:6>,
    <biomesoplenty:gem:3>,
    <biomesoplenty:gem:4>,
    <t3s4ebw:magic_seed>
] as IItemStack [];

val itemsRare = [
    <minecraft:grass>
] as IItemStack [];

val itemsEpic = [

] as IItemStack [];

val itemsLegendary = [

] as IItemStack [];

val lootChance = 0.3;

val commonWeight = 100;
val uncommonWeight = 50;
val rareWeight = 25;
val epicWeight = 12.5;
val legendaryWeight = 6.25;

for lootTable in lootTables {
    val currentTable = LootTweaker.getTable(lootTable);
    val currentPool = currentTable.addPool("generalExtraLoot", 1, 1, 0, 0);
    currentPool.addConditions([
        Conditions.randomChance(lootChance)
    ]);

    for item in itemsCommon {
        currentPool.addItemEntry(
            item,
            commonWeight
        );
    }

    for item in itemsUncommon {
        currentPool.addItemEntry(
            item,
            uncommonWeight
        );
    }

    for item in itemsRare {
        currentPool.addItemEntry(
            item,
            rareWeight
        );
    }

    for item in itemsEpic {
        currentPool.addItemEntry(
            item,
            epicWeight
        );
    }

    for item in itemsLegendary {
        currentPool.addItemEntry(
            item,
            legendaryWeight
        );
    }
}
