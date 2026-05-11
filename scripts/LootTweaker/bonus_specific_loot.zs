import loottweaker.LootTweaker;
import loottweaker.LootTable;
import loottweaker.LootPool;
import loottweaker.Conditions;
import crafttweaker.item.IItemStack;

// Dragon Ring

//val dragonRingTables = [
//    "iceandfire:ice_dragon_male_cave",
//    "iceandfire:ice_dragon_female_cave",
//    "iceandfire:fire_dragon_male_cave",
//    "iceandfire:fire_dragon_female_cave",
//    "iceandfire:lightning_dragon_male_cave",
//    "iceandfire:lightning_dragon_female_cave"
//] as string[];

//for table in dragonRingTables {
//    val currentTable = LootTweaker.getTable(table);
//    val currentPool = currentTable.addPool("DragonRing", 1, 1, 0, 0);
//    currentPool.addConditions([
//        Conditions.randomChance(0.005)
//    ]);
//    currentPool.addItemEntry(
//        <xat:dragon_ring>,
//        1
//    );
//}

// Goblin Ring

val GoblinRingTables = [
    "ancientwarfare:chests/goblin"
] as string[];

for table in GoblinRingTables {
    val currentTable = LootTweaker.getTable(table);
    val currentPool = currentTable.addPool("GoblinRing", 1, 1, 0, 0);
    currentPool.addConditions([
        Conditions.randomChance(0.08)
    ]);
    currentPool.addItemEntry(
        <xat:goblin_ring>,
        1
    );
}

// Dwarf Ring

val DwarfRingTables = [
    "ancientwarfare:chests/dwarf"
] as string[];

for table in DwarfRingTables {
    val currentTable = LootTweaker.getTable(table);
    val currentPool = currentTable.addPool("DwarfRing", 1, 1, 0, 0);
    currentPool.addConditions([
        Conditions.randomChance(0.08)
    ]);
    currentPool.addItemEntry(
        <xat:dwarf_ring>,
        1
    );
}

// Giant Ring

// val GiantRingTables = [
//    "ancientwarfare:chests/giant"
//] as string[];
//
//for table in GiantRingTables {
//    val currentTable = LootTweaker.getTable(table);
//    val currentPool = currentTable.addPool("GiantRing", 1, 1, 0, 0);
//    currentPool.addConditions([
//        Conditions.randomChance(0.04)
//    ]);
//    currentPool.addItemEntry(
//        <xat:titan_ring>,
//        1
//    );
//}

// Elf Ring

val ElfRingTables = [
    "ancientwarfare:chests/elf"
] as string[];

for table in ElfRingTables {
    val currentTable = LootTweaker.getTable(table);
    val currentPool = currentTable.addPool("ElfRing", 1, 1, 0, 0);
    currentPool.addConditions([
        Conditions.randomChance(0.08)
    ]);
    currentPool.addItemEntry(
        <xat:elf_ring>,
        1
    );
}

// Faelis Ring

val FaelisRingTables = [
    "ancientwarfare:chests/monster"
] as string[];

for table in FaelisRingTables {
    val currentTable = LootTweaker.getTable(table);
    val currentPool = currentTable.addPool("FaelisRing", 1, 1, 0, 0);
    currentPool.addConditions([
        Conditions.randomChance(0.16)
    ]);
    currentPool.addItemEntry(
        <xat:faelis_ring>,
        1
    );
}

// Scroll of Unsealling

val ScrollUnseallingTables = [
    "ancientspellcraft:entities/evil_battlemage",
    "ancientspellcraft:entities/evil_sage",
    "ancientspellcraft:entities/evil_warlock"
] as string[];

for table in ScrollUnseallingTables {
    val currentTable = LootTweaker.getTable(table);
    val currentPool = currentTable.addPool("ScrollUnseallingBonusLoot", 1, 1, 0, 0);
    currentPool.addConditions([
        Conditions.randomChance(0.33)
    ]);
    currentPool.addItemEntry(
        <ancientspellcraft:unsealing_scroll>,
        1
    );
}