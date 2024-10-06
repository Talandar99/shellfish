//crafting recipes 
import crafttweaker.api.recipe.CraftingTableRecipeManager;
//events
import crafttweaker.api.events.CTEventManager;
// -----------------------------------------------------------
// player is unable to place minecraft:hanging_roots on top and bottom of block
// -----------------------------------------------------------
CTEventManager.register<crafttweaker.api.event.entity.player.interact.RightClickBlockEvent>((event) => {
    
    var face = event.getFace();
    if(event.getItemStack().contains(<item:minecraft:hanging_roots>)){
        if(face==<constant:minecraft:direction:up>|face==<constant:minecraft:direction:down>) {
            event.cancel();
        }
    }
});
// -----------------------------------------------------------
// Adding / Editing tags
// -----------------------------------------------------------
//fixing logs
// ------------------------------
<tagmanager:items>.addId(<tag:items:minecraft:logs>, <resource:extradelight:cinnamon_log>);
<tagmanager:items>.addId(<tag:items:minecraft:logs>, <resource:extradelight:stripped_cinnamon_log>);
<tagmanager:items>.addId(<tag:items:minecraft:logs>, <resource:iceandfire:dreadwood_log>);
<tagmanager:items>.addId(<tag:items:minecraft:logs>, <resource:immersive_weathering:charred_log>);
// ------------------------------
//adding all feathers as feathers
// ------------------------------
<tagmanager:items>.addId(<tag:items:forge:feathers>, <resource:alexsmobs:roadrunner_feather>);
<tagmanager:items>.addId(<tag:items:forge:feathers>, <resource:iceandfire:amphithere_feather>);
<tagmanager:items>.addId(<tag:items:forge:feathers>, <resource:alexsmobs:emu_feather>);
// using gelatin as slimeball
<tagmanager:items>.addId(<tag:items:forge:slimeballs>, <resource:butchercraft:gelatin>);
// -----------------------------------------------------------
// New crafting recipes
// -----------------------------------------------------------
// tipped arrows with aether amber
// orange dye from aether amber
// aether arrows
craftingTable.addShaped("aether_arrows", <item:minecraft:arrow>*8, [
    [<item:aether:golden_amber>],
    [<tag:items:forge:rods/wooden>],
    [<tag:items:forge:feathers>]]);
// twilight arrows
craftingTable.addShaped("twilight_arrows", <item:minecraft:tipped_arrow>.withTag({Potion: "minecraft:strong_slowness"})*2, [
    [<item:twilightforest:naga_scale>],
    [<tag:items:forge:rods/wooden>],
    [<tag:items:forge:feathers>]]);

craftingTable.addShaped("twilight_arrows2", <item:minecraft:tipped_arrow>.withTag({Potion: "minecraft:poison"})*2, [
    [<item:twilightforest:steeleaf_ingot>],
    [<tag:items:forge:rods/wooden>],
    [<tag:items:forge:feathers>]]);

// leather cord fishing rod
craftingTable.addShaped("leather_cord_fishing_rod", <item:minecraft:fishing_rod>, [
    [<item:minecraft:air>, <item:minecraft:air>, <tag:items:forge:rods/wooden>],
    [<item:minecraft:air>, <tag:items:forge:rods/wooden>, <tag:items:forge:string>],
    [<tag:items:forge:rods/wooden>, <item:minecraft:air>, <tag:items:forge:string>]]);
// golden apple and enchanted golden apple
craftingTable.remove(<item:minecraft:golden_apple>);
craftingTable.addShaped("enchanted_golden_apple_with_gravitite", <item:minecraft:enchanted_golden_apple>, [
    [<item:aether:enchanted_gravitite>, <item:aether:enchanted_gravitite>, <item:aether:enchanted_gravitite>],
    [<item:aether:enchanted_gravitite>, <item:minecraft:golden_apple>, <item:aether:enchanted_gravitite>],
    [<item:aether:enchanted_gravitite>, <item:aether:enchanted_gravitite>, <item:aether:enchanted_gravitite>]]);
//leather from troll leather
craftingTable.addShapeless("leather_from_mountain_troll", <item:minecraft:leather>*8, [ <item:iceandfire:troll_leather_mountain>]);
craftingTable.addShapeless("leather_from_forest_troll", <item:minecraft:leather>*8, [ <item:iceandfire:troll_leather_forest>]);
craftingTable.addShapeless("leather_from_frost_troll", <item:minecraft:leather>*8, [ <item:iceandfire:troll_leather_frost>]);
//reptile hide and scutes
craftingTable.addShapeless("leather_from_reptile", <item:minecraft:leather>*2, [ <item:naturalist:reptile_hide>]);
craftingTable.addShapeless("reptile_leather_from_scute", <item:naturalist:reptile_hide>, [<item:alexsmobs:crocodile_scute>,<item:alexsmobs:crocodile_scute>]);
craftingTable.addShapeless("scute_from_reptile", <item:alexsmobs:crocodile_scute>*2, [<item:naturalist:reptile_hide>]);
//bear fur into hair and hair into fur
craftingTable.addShapeless("bear_hair_into_fur", <item:alexsmobs:bear_fur>, [<item:naturalist:bear_fur>,<item:naturalist:bear_fur>]);
craftingTable.addShapeless("bear_fur_into_hair", <item:naturalist:bear_fur>*2, [<item:alexsmobs:bear_fur>]);
//name_tag
craftingTable.addShapeless("easy_nametag", <item:minecraft:name_tag> , [<tag:items:forge:string>, <tag:items:forge:leather>]);
//campfire
craftingTable.addShaped("easy_campfire", <item:minecraft:campfire>, [
    [<item:minecraft:air>, <tag:items:forge:rods/wooden>, <item:minecraft:air>],
    [<tag:items:forge:rods/wooden>, <item:minecraft:flint>, <tag:items:forge:rods/wooden>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]]);
// leather scrap into leather
craftingTable.addShaped("leather_scrap_into_leather", <item:minecraft:leather>, [
    [<item:butchercraft:leather_scrap>, <item:butchercraft:leather_scrap>, <item:butchercraft:leather_scrap>],
    [<item:butchercraft:leather_scrap>, <item:butchercraft:leather_scrap>, <item:butchercraft:leather_scrap>],
    [<item:butchercraft:leather_scrap>, <item:butchercraft:leather_scrap>, <item:butchercraft:leather_scrap>]]);
// -----------------------------
// FarmersDelight
// -----------------------------
//bread_slice
craftingTable.addShapeless("breadslice_to_breadslice1", <item:extradelight:bread_slice>, [<item:moredelight:bread_slice>]);
craftingTable.addShapeless("breadslice_to_breadslice2", <item:moredelight:bread_slice>, [<item:extradelight:bread_slice>]);
// blood soup
craftingTable.addShapeless("blood_soup_from_bucket_tinkers", <item:tconstruct:meat_soup>*4 , [
    <item:tconstruct:meat_soup_bucket>.transformReplace(<item:minecraft:bucket>),
    <item:minecraft:bowl>,
    <item:minecraft:bowl>,
    <item:minecraft:bowl>,
    <item:minecraft:bowl>]);
craftingTable.addShapeless("blood_soup_from_bucket_butcher", <item:tconstruct:meat_soup>*4 , [
    <item:butchercraft:blood_fluid_bucket>.transformReplace(<item:minecraft:bucket>),
    <item:minecraft:bowl>,
    <item:minecraft:bowl>,
    <item:minecraft:bowl>,
    <item:minecraft:bowl>]);
//craftable ambrosia dew from ambrosia
craftingTable.addShapeless("ambrosia_dew_from_ambrosia_shard", <item:aetherdelight:ambrosia_dew>*4, [<item:aether:ambrosium_shard>]);
//wool back form carpets
craftingTable.addShaped("white_wool_from_carpet", <item:minecraft:white_wool>*2, [[<item:minecraft:white_carpet>], [<item:minecraft:white_carpet>], [<item:minecraft:white_carpet>]]);
craftingTable.addShaped("orange_wool_from_carpet", <item:minecraft:orange_wool>*2, [[<item:minecraft:orange_carpet>], [<item:minecraft:orange_carpet>], [<item:minecraft:orange_carpet>]]);
craftingTable.addShaped("magenta_wool_from_carpet", <item:minecraft:magenta_wool>*2, [[<item:minecraft:magenta_carpet>], [<item:minecraft:magenta_carpet>], [<item:minecraft:magenta_carpet>]]);
craftingTable.addShaped("light_blue_wool_from_carpet", <item:minecraft:light_blue_wool>*2, [[<item:minecraft:light_blue_carpet>], [<item:minecraft:light_blue_carpet>], [<item:minecraft:light_blue_carpet>]]);
craftingTable.addShaped("yellow_wool_from_carpet", <item:minecraft:yellow_wool>*2, [[<item:minecraft:yellow_carpet>], [<item:minecraft:yellow_carpet>], [<item:minecraft:yellow_carpet>]]);
craftingTable.addShaped("lime_wool_from_carpet", <item:minecraft:lime_wool>*2, [[<item:minecraft:lime_carpet>], [<item:minecraft:lime_carpet>], [<item:minecraft:lime_carpet>]]);
craftingTable.addShaped("pink_wool_from_carpet", <item:minecraft:pink_wool>*2, [[<item:minecraft:pink_carpet>], [<item:minecraft:pink_carpet>], [<item:minecraft:pink_carpet>]]);
craftingTable.addShaped("gray_wool_from_carpet", <item:minecraft:gray_wool>*2, [[<item:minecraft:gray_carpet>], [<item:minecraft:gray_carpet>], [<item:minecraft:gray_carpet>]]);
craftingTable.addShaped("light_gray_wool_from_carpet", <item:minecraft:light_gray_wool>*2, [[<item:minecraft:light_gray_carpet>], [<item:minecraft:light_gray_carpet>], [<item:minecraft:light_gray_carpet>]]);
craftingTable.addShaped("cyan_wool_from_carpet", <item:minecraft:cyan_wool>*2, [[<item:minecraft:cyan_carpet>], [<item:minecraft:cyan_carpet>], [<item:minecraft:cyan_carpet>]]);
craftingTable.addShaped("purple_wool_from_carpet", <item:minecraft:purple_wool>*2, [[<item:minecraft:purple_carpet>], [<item:minecraft:purple_carpet>], [<item:minecraft:purple_carpet>]]);
craftingTable.addShaped("blue_wool_from_carpet", <item:minecraft:blue_wool>*2, [[<item:minecraft:blue_carpet>], [<item:minecraft:blue_carpet>], [<item:minecraft:blue_carpet>]]);
craftingTable.addShaped("brown_wool_from_carpet", <item:minecraft:brown_wool>*2, [[<item:minecraft:brown_carpet>], [<item:minecraft:brown_carpet>], [<item:minecraft:brown_carpet>]]);
craftingTable.addShaped("green_wool_from_carpet", <item:minecraft:green_wool>*2, [[<item:minecraft:green_carpet>], [<item:minecraft:green_carpet>], [<item:minecraft:green_carpet>]]);
craftingTable.addShaped("red_wool_from_carpet", <item:minecraft:red_wool>*2, [[<item:minecraft:red_carpet>], [<item:minecraft:red_carpet>], [<item:minecraft:red_carpet>]]);
craftingTable.addShaped("black_wool_from_carpet", <item:minecraft:black_wool>*2, [[<item:minecraft:black_carpet>], [<item:minecraft:black_carpet>], [<item:minecraft:black_carpet>]]);
// -----------------------------------------------------------
// replacing/changing old recipes
// -----------------------------------------------------------
//template
//craftingTable.remove(<item:minecraft:lead>);
//craftingTable.addShaped("template", <item:minecraft:lead>, [
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]]);
// Minecraft
// -----------------------------
// lead compatible with everything possible
craftingTable.remove(<item:minecraft:lead>);
craftingTable.addShaped("lead_compatible", <item:minecraft:lead>, [
    [<tag:items:forge:string>, <tag:items:forge:string>, <item:minecraft:air>],
    [<tag:items:forge:string>, <tag:items:forge:slimeballs>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <tag:items:forge:string>]]);
// enchanting_table
craftingTable.remove(<item:minecraft:enchanting_table>);
craftingTable.addShaped("enchanting_table_aether_recipe", <item:minecraft:enchanting_table>, [
    [<item:minecraft:air>, <item:minecraft:book>, <item:minecraft:air>],
    [<item:minecraft:diamond>, <item:aether:enchanted_gravitite>, <item:minecraft:diamond>],
    [<item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>]]);
//bucket_from_iron_sheets
craftingTable.remove(<item:minecraft:bucket>);
craftingTable.addShaped("bucket_from_iron_sheets", <item:minecraft:bucket>, [
    [<item:create:iron_sheet>, <item:minecraft:air>, <item:create:iron_sheet>],
    [<item:minecraft:air>, <item:create:iron_sheet>, <item:minecraft:air>]]);
// -----------------------------
// FarmersDelight
// -----------------------------
//hoglin hide into hoglin hide
craftingTable.addShapeless("hoglin_hide_into_hoglin_hide_1", <item:mynethersdelight:hoglin_hide>, [ <item:cold_sweat:hoglin_hide>]);
craftingTable.addShapeless("hoglin_hide_into_hoglin_hide_2", <item:cold_sweat:hoglin_hide>, [ <item:mynethersdelight:hoglin_hide>]);
//meatgrinder
craftingTable.remove(<item:butchercraft:grinder_block_item>);
craftingTable.addShaped("alternative_recipe_meat_grinder", <item:butchercraft:grinder_block_item>, [
    [<item:create:hand_crank>, <item:create:chute>, <item:minecraft:air>],
    [<item:minecraft:iron_ingot>, <item:create:propeller>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:piston>, <item:create:chute>]]);
//kettle from copper sheets
craftingTable.remove(<item:farmersrespite:kettle>);
craftingTable.addShaped("kettle_from_copper_sheets", <item:farmersrespite:kettle>, [
    [<item:createaddition:copper_rod>, <item:minecraft:leather>, <item:createaddition:copper_rod>],
    [<item:create:copper_sheet>, <item:minecraft:air>, <item:create:copper_sheet>],
    [<item:minecraft:air>, <item:create:copper_sheet>, <item:minecraft:air>]]);
//deep frying pan
craftingTable.remove(<item:casualness_delight:deep_frying_pan>);
craftingTable.addShaped("deep_frying_pan_with_oil", <item:casualness_delight:deep_frying_pan>, [
    [<item:minecraft:brick>, <item:minecraft:iron_bars>, <item:minecraft:brick>],
    [<item:minecraft:iron_ingot>, <item:createdieselgenerators:plant_oil_bucket>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]]);
craftingTable.addShaped("deep_frying_pan_with_oil2", <item:casualness_delight:deep_frying_pan>, [
    [<item:minecraft:brick>, <item:minecraft:iron_bars>, <item:minecraft:brick>],
    [<item:minecraft:iron_ingot>, <item:createaddition:seed_oil_bucket>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]]);
//cooking pot 
craftingTable.remove(<item:farmersdelight:cooking_pot>);
craftingTable.addShaped("alternative_recipe_cooking_pot", <item:farmersdelight:cooking_pot>, [
    [<item:minecraft:brick>, <item:extradelight:wooden_spoon>, <item:minecraft:brick>],
    [<item:minecraft:iron_ingot>, <item:minecraft:water_bucket>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]]);
// -----------------------------
// Other
// -----------------------------
// eureka balloon
craftingTable.remove(<item:vs_eureka:balloon>);
craftingTable.addShaped("balloon_gravitite_recipe", <item:vs_eureka:balloon>*32, [
    [<item:aether:cold_aercloud>, <item:minecraft:phantom_membrane>, <item:aether:cold_aercloud>],
    [<item:minecraft:phantom_membrane>, <item:aether:enchanted_gravitite>, <item:minecraft:phantom_membrane>],
    [<item:aether:cold_aercloud>, <item:minecraft:phantom_membrane>, <item:aether:cold_aercloud>]]);
// -----------------------------------------------------------
// Remove recipes for items
// Remove all tools except sword
// -----------------------------------------------------------
// Minecraft
// -----------------------------
// wood
craftingTable.remove(<item:minecraft:wooden_sword>);
craftingTable.remove(<item:minecraft:wooden_pickaxe>);
craftingTable.remove(<item:minecraft:wooden_axe>);
craftingTable.remove(<item:minecraft:wooden_shovel>);
craftingTable.remove(<item:minecraft:wooden_hoe>);
//stone
craftingTable.remove(<item:minecraft:stone_sword>);
craftingTable.remove(<item:minecraft:stone_pickaxe>);
craftingTable.remove(<item:minecraft:stone_axe>);
craftingTable.remove(<item:minecraft:stone_shovel>);
craftingTable.remove(<item:minecraft:stone_hoe>);
//iron
craftingTable.remove(<item:minecraft:iron_sword>);
craftingTable.remove(<item:minecraft:iron_pickaxe>);
craftingTable.remove(<item:minecraft:iron_axe>);
craftingTable.remove(<item:minecraft:iron_shovel>);
craftingTable.remove(<item:minecraft:iron_hoe>);
// gold
craftingTable.remove(<item:minecraft:golden_sword>);
craftingTable.remove(<item:minecraft:golden_pickaxe>);
craftingTable.remove(<item:minecraft:golden_axe>);
craftingTable.remove(<item:minecraft:golden_shovel>);
craftingTable.remove(<item:minecraft:golden_hoe>);
// diamond
craftingTable.remove(<item:minecraft:diamond_sword>);
craftingTable.remove(<item:minecraft:diamond_pickaxe>);
craftingTable.remove(<item:minecraft:diamond_axe>);
craftingTable.remove(<item:minecraft:diamond_shovel>);
craftingTable.remove(<item:minecraft:diamond_hoe>);
// -----------------------------
// Ice And Fire
// -----------------------------
// silver tools
craftingTable.remove(<item:iceandfire:silver_sword>);
craftingTable.remove(<item:iceandfire:silver_pickaxe>);
craftingTable.remove(<item:iceandfire:silver_shovel>);
craftingTable.remove(<item:iceandfire:silver_axe>);
craftingTable.remove(<item:iceandfire:silver_hoe>);
// copper tools
craftingTable.remove(<item:iceandfire:copper_sword>);
craftingTable.remove(<item:iceandfire:copper_pickaxe>);
craftingTable.remove(<item:iceandfire:copper_shovel>);
craftingTable.remove(<item:iceandfire:copper_axe>);
craftingTable.remove(<item:iceandfire:copper_hoe>);
// -----------------------------
// Aether
// -----------------------------
// skyroot tools
craftingTable.remove(<item:aether:skyroot_sword>);
craftingTable.remove(<item:aether:skyroot_pickaxe>);
craftingTable.remove(<item:aether:skyroot_shovel>);
craftingTable.remove(<item:aether:skyroot_axe>);
craftingTable.remove(<item:aether:skyroot_hoe>);
// holystone tools
craftingTable.remove(<item:aether:holystone_sword>);
craftingTable.remove(<item:aether:holystone_pickaxe>);
craftingTable.remove(<item:aether:holystone_shovel>);
craftingTable.remove(<item:aether:holystone_axe>);
craftingTable.remove(<item:aether:holystone_hoe>);
// zanite tools
craftingTable.remove(<item:aether:zanite_sword>);
craftingTable.remove(<item:aether:zanite_pickaxe>);
craftingTable.remove(<item:aether:zanite_shovel>);
craftingTable.remove(<item:aether:zanite_axe>);
craftingTable.remove(<item:aether:zanite_hoe>);
// -----------------------------
// malum
// -----------------------------
// soul steel
craftingTable.remove(<item:malum:soul_stained_steel_pickaxe>);
craftingTable.remove(<item:malum:soul_stained_steel_shovel>);
craftingTable.remove(<item:malum:soul_stained_steel_axe>);
craftingTable.remove(<item:malum:soul_stained_steel_hoe>);
craftingTable.remove(<item:malum:soul_stained_steel_knife>);
// -----------------------------------------------------------
// Remove all knifes
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

