import loottweaker.LootTweaker;
import loottweaker.LootTable;
import loottweaker.LootPool;
import loottweaker.Conditions;
import crafttweaker.item.IItemStack;

val commonLootTables = [
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

val baublesCommon = [
    <bountifulbaubles:ringiron>,
    <qualitytools:emerald_amulet>,
    <qualitytools:emerald_ring>,
    <shinygear:ruby_charm>,
    <shinygear:peridot_charm>,
    <shinygear:sapphire_charm>,
    <shinygear:malachite_charm>,
    <shinygear:topaz_charm>,
    <shinygear:tanzanite_charm>
] as IItemStack [];

val baublesUncommon = [
    <artifacts:shock_pendant>,
    <artifacts:flame_pendant>,
    <artifacts:thorn_pendant>,
    <artifacts:panic_necklace>,
    <artifacts:whoopie_cushion>,
    <artifacts:bottled_cloud>,
    <artifacts:magma_stone>,
    <artifacts:feral_claws>,
    <artifacts:power_glove>,
    <artifacts:drinking_hat>,
    <artifacts:star_cloak>,
    <artifacts:pocket_piston>,
    <artifacts:antidote_vessel>,
    <artifacts:sacrificial_amulet>,
    <artifacts:lucky_clover>,
    <bountifulbaubles:trinketballoon>,
    <bountifulbaubles:shieldcobalt>,
    <bountifulbaubles:trinketmagiclenses>,
    <bountifulbaubles:trinketapple>,
    <bountifulbaubles:trinketvitamins>,
    <bountifulbaubles:trinketshulkerheart>,
    <bountifulbaubles:trinketbezoar>,
    <bountifulbaubles:amuletsinempty>,
    <bountifulbaubles:trinketbrokenheart>,
    <bountifulbaubles:amuletcross>,
    <bountifulbaubles:crowngold>,
    <xat:glowing_ingot>,
    <spartanweaponry:quiver_arrow>
] as IItemStack [];

val baublesRare = [
    <bountifulbaubles:trinketobsidianskull>,
    <bountifulbaubles:shieldobsidian>,
    <bountifulbaubles:ringoverclocking>,
    <bountifulbaubles:ringfreeaction>,
    <bountifulbaubles:amuletsingluttony>,
    <bountifulbaubles:amuletsinpride>,
    <bountifulbaubles:amuletsinwrath>,
    <grimoireofgaia:accessory_ring_haste>,
    <grimoireofgaia:accessory_ring_jump>,
    <grimoireofgaia:accessory_cursed>,
    <grimoireofgaia:accessory_trinket_levitation>,
    <grimoireofgaia:accessory_trinket_wither>
] as IItemStack [];

val baublesEpic = [
    <xat:faelis_ring>,
    <xat:elf_ring>,
    <xat:goblin_ring>,
    <xat:dwarf_ring>
] as IItemStack [];

val baublesLegendary = [

] as IItemStack [];

val baubleBonusLootChance = 0.07;

val commonWeight = 100;
val uncommonWeight = 50;
val rareWeight = 25;
val epicWeight = 12.5;
val legendaryWeight = 6.25;

for table in commonLootTables {
    val currentTable = LootTweaker.getTable(table);
    val currentPool = currentTable.addPool("baubleBonusLoot", 1, 1, 0, 0);
    currentPool.addConditions([
        Conditions.randomChance(baubleBonusLootChance)
    ]);

    for baubleItem in baublesCommon {
        currentPool.addItemEntry(
            baubleItem,
            commonWeight
        );
    }

    for baubleItem in baublesUncommon {
        currentPool.addItemEntry(
            baubleItem,
            uncommonWeight
        );
    }

    for baubleItem in baublesRare {
        currentPool.addItemEntry(
            baubleItem,
            rareWeight
        );
    }

    for baubleItem in baublesEpic {
        currentPool.addItemEntry(
            baubleItem,
            epicWeight
        );
    }

    for baubleItem in baublesLegendary {
        currentPool.addItemEntry(
            baubleItem,
            legendaryWeight
        );
    }
}
