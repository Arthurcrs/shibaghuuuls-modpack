recipes.addShaped(<shipwrecks_winslow:diving_boots>, [[<minecraft:slime_ball>, null, <minecraft:slime_ball>],[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>], [null, null, null]]);
recipes.addShaped(<shipwrecks_winslow:diving_legs>, [[<minecraft:iron_ingot>, <minecraft:slime_ball>, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>], [<minecraft:slime_ball>, null, <minecraft:slime_ball>]]);
recipes.addShaped(<shipwrecks_winslow:diving_chest>, [[<minecraft:iron_ingot>, <minecraft:slime_ball>, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, <minecraft:diamond>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);
recipes.addShaped(<shipwrecks_winslow:diving_helmet>, [[<minecraft:iron_ingot>, <minecraft:glass>, <minecraft:iron_ingot>],[<minecraft:glass>, <minecraft:emerald>, <minecraft:glass>], [<minecraft:iron_ingot>, <minecraft:glass>, <minecraft:iron_ingot>]]);
  
val copper_nugget = <iceandfire:copper_nugget>;
val copper_ingot = <deeperdepths:material>;

recipes.addShaped("Copper Ingot", copper_ingot,
 [[copper_nugget,copper_nugget,copper_nugget],
  [copper_nugget,copper_nugget,copper_nugget],
  [copper_nugget,copper_nugget,copper_nugget]]);
  
val marble_bricks = <explorercraft:marble_bricks>;
val marble = <quark:marble:1>;
val marble_bricks_pvj = <pvj:marble_brick>;

recipes.remove(marble_bricks);
recipes.addShaped("Marble Bricks", marble_bricks * 9,
 [[marble,marble,marble],
  [marble,marble,marble],
  [marble,marble,marble]]);

recipes.remove(marble_bricks_pvj);
recipes.addShaped("Marble Bricks PVJ", marble_bricks_pvj * 5,
 [[marble,null,marble],
  [null,marble,null],
  [marble,null,marble]]);
  
recipes.remove(<bountifulbaubles:trinketluckyhorseshoe>);
  
recipes.remove(<minecraft:glowstone_dust>);

furnace.addRecipe(<minecraft:leather>, <minecraft:rotten_flesh>, 0.0);