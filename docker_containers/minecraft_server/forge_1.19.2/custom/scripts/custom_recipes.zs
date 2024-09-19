import crafttweaker.api.recipe.CraftingTableRecipeManager;

// -----------------------------------------------------------
// New crafting recipes
// -----------------------------------------------------------
//name_tag
craftingTable.addShapeless("easy_nametag", <item:minecraft:name_tag> , [<tag:items:forge:string>, <tag:items:forge:leather>]);
//troll leather
craftingTable.addShapeless("leather_from_mountain_troll", <item:minecraft:leather>*8, [ <item:iceandfire:troll_leather_mountain>]);
craftingTable.addShapeless("leather_from_forest_troll", <item:minecraft:leather>*8, [ <item:iceandfire:troll_leather_forest>]);
//campfire
craftingTable.addShaped("easy_campfire", <item:minecraft:campfire>, [
    [<item:minecraft:air>, <tag:items:forge:rods/wooden>, <item:minecraft:air>],
    [<tag:items:forge:rods/wooden>, <item:minecraft:flint>, <tag:items:forge:rods/wooden>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]]);
//white_phosphorus limesand compatibility
craftingTable.addShapeless("white_phosphorus_to_limesand", <item:createindustry:limesand>, [<item:createbb:white_phosphorus>]);
craftingTable.addShapeless("limesand_to_white_phosphorus", <item:createbb:white_phosphorus>, [<item:createindustry:limesand>]);
//bread_slice
craftingTable.addShapeless("breadslice_to_breadslice1", <item:extradelight:bread_slice>, [<item:moredelight:bread_slice>]);
craftingTable.addShapeless("breadslice_to_breadslice2", <item:moredelight:bread_slice>, [<item:extradelight:bread_slice>]);
//meatgrinder
craftingTable.addShaped("alternative_recipe_meat_grinder", <item:butchercraft:grinder_block_item>, [
    [<item:create:hand_crank>, <item:create:chute>, <item:minecraft:air>],
    [<item:minecraft:iron_ingot>, <item:create:propeller>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:piston>, <item:create:chute>]]);
//pot 
craftingTable.addShaped("alternative_recipe_cooking_pot", <item:farmersdelight:cooking_pot>, [
    [<item:minecraft:brick>, <item:extradelight:wooden_spoon>, <item:minecraft:brick>],
    [<item:minecraft:iron_ingot>, <item:minecraft:water_bucket>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]]);
// leather cord fishing rod
craftingTable.addShaped("leather_cord_fishing_rod", <item:minecraft:fishing_rod>, [
    [<item:minecraft:air>, <item:minecraft:air>, <tag:items:forge:rods/wooden>],
    [<item:minecraft:air>, <tag:items:forge:rods/wooden>, <tag:items:forge:string>],
    [<tag:items:forge:rods/wooden>, <item:minecraft:air>, <tag:items:forge:string>]]);
// leather scrap into leather
craftingTable.addShaped("leather_scrap_into_leather", <item:minecraft:leather>, [
    [<item:butchercraft:leather_scrap>, <item:butchercraft:leather_scrap>, <item:butchercraft:leather_scrap>],
    [<item:butchercraft:leather_scrap>, <item:butchercraft:leather_scrap>, <item:butchercraft:leather_scrap>],
    [<item:butchercraft:leather_scrap>, <item:butchercraft:leather_scrap>, <item:butchercraft:leather_scrap>]]);
// leather cord string don't always work (fishing rod for example) (need to investigate)
// 
// -----------------------------------------------------------
// Vanilla 
// -----------------------------------------------------------
// Remove swords
craftingTable.remove(<item:minecraft:wooden_sword>);
craftingTable.remove(<item:minecraft:stone_sword>);
craftingTable.remove(<item:minecraft:iron_sword>);
craftingTable.remove(<item:minecraft:golden_sword>);
craftingTable.remove(<item:minecraft:diamond_sword>);
// Remove pickaxes
craftingTable.remove(<item:minecraft:wooden_pickaxe>);
craftingTable.remove(<item:minecraft:stone_pickaxe>);
craftingTable.remove(<item:minecraft:iron_pickaxe>);
craftingTable.remove(<item:minecraft:golden_pickaxe>);
craftingTable.remove(<item:minecraft:diamond_pickaxe>);
// Remove axes
craftingTable.remove(<item:minecraft:wooden_axe>);
craftingTable.remove(<item:minecraft:stone_axe>);
craftingTable.remove(<item:minecraft:iron_axe>);
craftingTable.remove(<item:minecraft:golden_axe>);
craftingTable.remove(<item:minecraft:diamond_axe>);
// Remove shovels
craftingTable.remove(<item:minecraft:wooden_shovel>);
craftingTable.remove(<item:minecraft:stone_shovel>);
craftingTable.remove(<item:minecraft:iron_shovel>);
craftingTable.remove(<item:minecraft:golden_shovel>);
craftingTable.remove(<item:minecraft:diamond_shovel>);
// Remove hoes
craftingTable.remove(<item:minecraft:wooden_hoe>);
craftingTable.remove(<item:minecraft:stone_hoe>);
craftingTable.remove(<item:minecraft:iron_hoe>);
craftingTable.remove(<item:minecraft:golden_hoe>);
craftingTable.remove(<item:minecraft:diamond_hoe>);
// -----------------------------------------------------------
// Ice And Fire
// -----------------------------------------------------------
// Remove silver tools
craftingTable.remove(<item:iceandfire:silver_sword>);
craftingTable.remove(<item:iceandfire:silver_pickaxe>);
craftingTable.remove(<item:iceandfire:silver_shovel>);
craftingTable.remove(<item:iceandfire:silver_axe>);
craftingTable.remove(<item:iceandfire:silver_hoe>);
// Remove copper tools
craftingTable.remove(<item:iceandfire:copper_sword>);
craftingTable.remove(<item:iceandfire:copper_pickaxe>);
craftingTable.remove(<item:iceandfire:copper_shovel>);
craftingTable.remove(<item:iceandfire:copper_axe>);
craftingTable.remove(<item:iceandfire:copper_hoe>);
// -----------------------------------------------------------
// Factory Must Grow
// -----------------------------------------------------------
// Remove lead tools
craftingTable.remove(<item:createindustry:steel_sword>);
craftingTable.remove(<item:createindustry:steel_pickaxe>);
craftingTable.remove(<item:createindustry:steel_shovel>);
craftingTable.remove(<item:createindustry:steel_axe>);
craftingTable.remove(<item:createindustry:steel_hoe>);
// Remove steel tools
craftingTable.remove(<item:createindustry:aluminum_sword>);
craftingTable.remove(<item:createindustry:aluminum_pickaxe>);
craftingTable.remove(<item:createindustry:aluminum_shovel>);
craftingTable.remove(<item:createindustry:aluminum_axe>);
craftingTable.remove(<item:createindustry:aluminum_hoe>);
// Remove aluminium tools
craftingTable.remove(<item:createindustry:lead_sword>);
craftingTable.remove(<item:createindustry:lead_pickaxe>);
craftingTable.remove(<item:createindustry:lead_shovel>);
craftingTable.remove(<item:createindustry:lead_axe>);
craftingTable.remove(<item:createindustry:lead_hoe>);
// -----------------------------------------------------------
// Aether
// -----------------------------------------------------------
// Remove skyroot tools
craftingTable.remove(<item:aether:skyroot_sword>);
craftingTable.remove(<item:aether:skyroot_pickaxe>);
craftingTable.remove(<item:aether:skyroot_shovel>);
craftingTable.remove(<item:aether:skyroot_axe>);
craftingTable.remove(<item:aether:skyroot_hoe>);
// Remove holystone tools
craftingTable.remove(<item:aether:holystone_sword>);
craftingTable.remove(<item:aether:holystone_pickaxe>);
craftingTable.remove(<item:aether:holystone_shovel>);
craftingTable.remove(<item:aether:holystone_axe>);
craftingTable.remove(<item:aether:holystone_hoe>);
// Remove zanite tools
craftingTable.remove(<item:aether:zanite_sword>);
craftingTable.remove(<item:aether:zanite_pickaxe>);
craftingTable.remove(<item:aether:zanite_shovel>);
craftingTable.remove(<item:aether:zanite_axe>);
craftingTable.remove(<item:aether:zanite_hoe>);
// -----------------------------------------------------------
// malum
// -----------------------------------------------------------
// Remove all tools except sword
craftingTable.remove(<item:malum:soul_stained_steel_pickaxe>);
craftingTable.remove(<item:malum:soul_stained_steel_shovel>);
craftingTable.remove(<item:malum:soul_stained_steel_axe>);
craftingTable.remove(<item:malum:soul_stained_steel_hoe>);
craftingTable.remove(<item:malum:soul_stained_steel_knife>);
// -----------------------------------------------------------
// Remove all knifes except tinkers
// -----------------------------------------------------------
//farmersdelight
craftingTable.remove(<item:farmersdelight:flint_knife>);
craftingTable.remove(<item:farmersdelight:iron_knife>);
craftingTable.remove(<item:farmersdelight:golden_knife>);
craftingTable.remove(<item:farmersdelight:diamond_knife>);
//moredelight
craftingTable.remove(<item:moredelight:wooden_knife>);
craftingTable.remove(<item:moredelight:stone_knife>);
//delightfull
craftingTable.remove(<item:delightful:steel_knife>);
craftingTable.remove(<item:delightful:silver_knife>);
craftingTable.remove(<item:delightful:brass_knife>);
craftingTable.remove(<item:delightful:bronze_knife>);
craftingTable.remove(<item:delightful:lead_knife>);
craftingTable.remove(<item:delightful:nickel_knife>);
craftingTable.remove(<item:delightful:zinc_knife>);
craftingTable.remove(<item:delightful:fiery_knife>);
craftingTable.remove(<item:delightful:ironwood_knife>);
craftingTable.remove(<item:delightful:knightmetal_knife>);
craftingTable.remove(<item:delightful:steeleaf_knife>);
//twilightdelight
craftingTable.remove(<item:twilightdelight:fiery_knife>);
craftingTable.remove(<item:twilightdelight:ironwood_knife>);
craftingTable.remove(<item:twilightdelight:knightmetal_knife>);
craftingTable.remove(<item:twilightdelight:steeleaf_knife>);
//aetherdelight
craftingTable.remove(<item:aetherdelight:holystone_knife>);
craftingTable.remove(<item:aetherdelight:zanite_knife>);
craftingTable.remove(<item:aetherdelight:gravitite_knife>);
//aquaculture
craftingTable.remove(<item:aquaculture:wooden_fillet_knife>);
craftingTable.remove(<item:aquaculture:stone_fillet_knife>);
craftingTable.remove(<item:aquaculture:iron_fillet_knife>);
craftingTable.remove(<item:aquaculture:gold_fillet_knife>);
craftingTable.remove(<item:aquaculture:diamond_fillet_knife>);
craftingTable.remove(<item:aquaculture:neptunium_fillet_knife>);

