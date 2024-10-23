import crafttweaker.api.recipe.CraftingTableRecipeManager;
// -----------------------------------------------------------
// C R A F T I N G   T A B L E 
// -----------------------------------------------------------
// new recipes
// -----------------------------------------------------------
//corn_kernels into corn_seeds compatibility
craftingTable.addShapeless("corn_kernels_to_corn_seeds", <item:extradelight:corn_seeds>, [ <item:culturaldelights:corn_kernels>]);
craftingTable.addShapeless("corn_seeds_to_corn_kernels", <item:culturaldelights:corn_kernels>, [ <item:extradelight:corn_seeds>]);
// fat into fat compatibility
craftingTable.addShapeless("fat_delight_to_butcher", <item:butchercraft:fat>, [ <item:delightful:animal_fat>]);
craftingTable.addShapeless("fat_butcher_to_delight", <item:delightful:animal_fat>, [ <item:butchercraft:fat>]);
// label easy crafting
craftingTable.addShapeless("easier_label_crafting", <item:labels:label>*2, [ <item:minecraft:paper>,<item:minecraft:ink_sac>]);
// soul torch additional recipes
craftingTable.addShaped("soul_torch_from_soulstone", <item:minecraft:soul_torch>*4, [
    [<item:malum:processed_soulstone>],
    [<tag:items:forge:rods/wooden>]]);
craftingTable.addShaped("soul_torch_from_skreecher_soul", <item:minecraft:soul_torch>*4, [
    [<item:alexsmobs:skreecher_soul>],
    [<tag:items:forge:rods/wooden>]]);
craftingTable.addShaped("soul_torch_from_soul_bead", <item:minecraft:soul_torch>*4, [
    [<item:quark:soul_bead>],
    [<tag:items:forge:rods/wooden>]]);
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
// -----------------------------

//enchantless naga_gloves
craftingTable.remove(<item:twilightaether:naga_gloves>);
craftingTable.addShaped("naga_gloves", <item:twilightaether:naga_gloves>, [
    [<item:twilightforest:naga_scale>, <item:minecraft:air>, <item:twilightforest:naga_scale>]]);
//nature/explorer's compasses twilight
craftingTable.remove(<item:explorerscompass:explorerscompass>);
craftingTable.addShaped("explorerscompass_twilight", <item:explorerscompass:explorerscompass>, [
    [<item:minecraft:air>, <item:twilightforest:etched_nagastone>, <item:minecraft:air>],
    [<item:twilightforest:etched_nagastone>, <item:minecraft:compass>, <item:twilightforest:etched_nagastone>],
    [<item:minecraft:air>, <item:twilightforest:etched_nagastone>, <item:minecraft:air>]]);
craftingTable.remove(<item:naturescompass:naturescompass>);
craftingTable.addShaped("naturescompass_twilight", <item:naturescompass:naturescompass>, [
    [<item:minecraft:air>, <item:twilightforest:ironwood_ingot>, <item:minecraft:air>],
    [<item:twilightforest:ironwood_ingot>, <item:minecraft:compass>, <item:twilightforest:ironwood_ingot>],
    [<item:minecraft:air>, <item:twilightforest:ironwood_ingot>, <item:minecraft:air>]]);
//campfire
craftingTable.remove(<item:minecraft:campfire>);
craftingTable.addShaped("easy_campfire", <item:minecraft:campfire>, [
    [<item:minecraft:air>, <tag:items:forge:rods/wooden>, <item:minecraft:air>],
    [<tag:items:forge:rods/wooden>, <tag:items:minecraft:logs>, <tag:items:forge:rods/wooden>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]]);
craftingTable.addShaped("soul_campfire_from_torch", <item:minecraft:soul_campfire>, [
    [<item:minecraft:soul_torch>, <item:minecraft:soul_torch>],
    [<item:minecraft:soul_torch>, <item:minecraft:soul_torch>]]);
craftingTable.addShaped("campfire_from_torch", <item:minecraft:campfire>, [
    [<item:minecraft:torch>, <item:minecraft:torch>],
    [<item:minecraft:torch>, <item:minecraft:torch>]]);
//new engine recipe
craftingTable.remove(<item:vs_eureka:engine>);
craftingTable.addShaped("vs_eureka_engine", <item:vs_eureka:engine>, [
    [<item:minecraft:air>, <item:create:brass_sheet>, <item:minecraft:air>],
    [<item:create:brass_sheet>, <item:minecraft:blast_furnace>, <item:create:brass_sheet>],
    [<item:minecraft:air>, <item:create:brass_sheet>, <item:minecraft:air>]]);
// ash compatiblity
craftingTable.remove(<item:minecraft:tuff>);
craftingTable.remove(<item:iceandfire:ash>);
craftingTable.addShapeless("tuff_from_slabs", <item:minecraft:tuff>, [<item:quark:tuff_slab>,<item:quark:tuff_slab>]);
craftingTable.addShapeless("iceandfire_chared_block_into_ash", <item:immersive_weathering:ash_layer_block>, [<tag:items:iceandfire:charred_blocks>]);
craftingTable.addShapeless("charred_planks_into_ash", <item:immersive_weathering:ash_layer_block>, [<item:immersive_weathering:charred_planks>]);
craftingTable.addShapeless("charred_log_into_ash", <item:immersive_weathering:ash_layer_block>, [<item:immersive_weathering:charred_log>]);
craftingTable.addShaped("ash_block_compacting", <item:iceandfire:ash>, [
    [<item:immersive_weathering:ash_block>, <item:immersive_weathering:ash_block>, <item:immersive_weathering:ash_block>],
    [<item:immersive_weathering:ash_block>, <item:immersive_weathering:ash_block>, <item:immersive_weathering:ash_block>],
    [<item:immersive_weathering:ash_block>, <item:immersive_weathering:ash_block>, <item:immersive_weathering:ash_block>]]);
craftingTable.addShapeless("supplementaries_into_weathering_ash", <item:immersive_weathering:ash_layer_block>, [<item:supplementaries:ash>]);
craftingTable.addShapeless("weathering_into_supplementaries_ash", <item:supplementaries:ash>, [<item:immersive_weathering:ash_layer_block>]);
// soap compatiblity
craftingTable.remove(<item:butchercraft:soap>);
craftingTable.remove(<item:supplementaries:soap>);
craftingTable.addShapeless("making_soap", <item:butchercraft:soap>*3, [<item:butchercraft:lard>,<tag:items:minecraft:flowers>,<tag:items:forge:ash>]);
craftingTable.addShapeless("making_soap_from_soap_block", <item:supplementaries:soap>*9, [<item:supplementaries:soap_block>]);
craftingTable.addShapeless("butchercraft_soap_into_suplementaries_soap", <item:supplementaries:soap>, [<item:butchercraft:soap>]);
craftingTable.addShapeless("supplementaries_soap_into_butchercraft_soap", <item:butchercraft:soap>, [<item:supplementaries:soap>]);
// rope compatiblity
craftingTable.remove(<item:farmersdelight:rope>);
craftingTable.remove(<item:supplementaries:doormat>);
craftingTable.remove(<item:farmersdelight:safety_net>);
craftingTable.remove(<item:minecraft:string>);
craftingTable.addShapeless("farmersdelight_rope_into_suplementaries_rope", <item:supplementaries:rope>, [ <item:farmersdelight:rope>]);
craftingTable.addShaped("safety_net_from_suplementaries_rope", <item:farmersdelight:safety_net>, [
    [<item:supplementaries:rope>, <item:supplementaries:rope>, <item:supplementaries:rope>],
    [<item:supplementaries:rope>, <item:supplementaries:rope>, <item:supplementaries:rope>],
    [<item:supplementaries:rope>, <item:supplementaries:rope>, <item:supplementaries:rope>]]);
craftingTable.addShaped("doormat_from_straw", <item:supplementaries:doormat>, [
    [<item:farmersdelight:canvas>, <item:farmersdelight:canvas>]]);
craftingTable.addShaped("string_from_cattail_fluff", <item:minecraft:string>, [
    [<item:naturalist:cattail_fluff>, <item:naturalist:cattail_fluff>, <item:naturalist:cattail_fluff>]]);
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
//shears
craftingTable.remove(<item:minecraft:shears>);
craftingTable.addShaped("shears_from_iron_sheets", <item:minecraft:shears>, [
    [<item:minecraft:air>, <item:create:iron_sheet>],
    [<item:create:iron_sheet>, <item:minecraft:air>]]);
//shears
craftingTable.remove(<item:create:white_sail>);
craftingTable.remove(<item:create:sail_frame>);
craftingTable.addShaped("sail_frame_from_wood", <item:create:sail_frame>*4, [
    [<tag:items:minecraft:planks>, <tag:items:forge:rods/wooden>, <tag:items:minecraft:planks>],
    [<tag:items:forge:rods/wooden>, <item:minecraft:air>, <tag:items:forge:rods/wooden>],
    [<tag:items:minecraft:planks>, <tag:items:forge:rods/wooden>, <tag:items:minecraft:planks>]]);
craftingTable.addShapeless("sail_with_canvas", <item:create:white_sail>, [<item:create:sail_frame>, <item:farmersdelight:canvas>]);
//shuriken
craftingTable.remove(<item:tconstruct:quartz_shuriken>);
craftingTable.remove(<item:tconstruct:flint_shuriken>);
// -----------------------------
// FarmersDelight
// -----------------------------
// remove farmersdelight rope recipe
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
    [<item:minecraft:phantom_membrane>, <item:aether:cold_aercloud>, <item:minecraft:phantom_membrane>],
    [<item:aether:cold_aercloud>, <item:aether:enchanted_gravitite>, <item:aether:cold_aercloud>],
    [<item:minecraft:phantom_membrane>, <item:aether:cold_aercloud>, <item:minecraft:phantom_membrane>]]);
// -----------------------------
// Create
// -----------------------------
// remove pale gold amulet from crafting recipes
craftingTable.remove(<item:createaddition:electrum_amulet>);
//rope and elevator pulley use rope
craftingTable.remove(<item:supplementaries:rope>);
craftingTable.addShaped("rope_pulley", <item:create:rope_pulley>, [
    [<item:minecraft:air>, <item:create:andesite_casing>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:supplementaries:rope>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:create:iron_sheet>, <item:minecraft:air>]]);
craftingTable.remove(<item:create:elevator_pulley>);
craftingTable.addShaped("elevator_pulley", <item:create:elevator_pulley>, [
    [<item:minecraft:air>, <item:create:brass_casing>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:supplementaries:rope>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:create:iron_sheet>, <item:minecraft:air>]]);
// disenchanter craftable with diamond sandpaper
craftingTable.remove(<item:create_enchantment_industry:disenchanter>);
craftingTable.addShaped("disenchanter_from_any_sandpaper", <item:create_enchantment_industry:disenchanter>, [
    [<tag:items:create:sandpaper>],
    [<item:create:copper_casing>]]);
//new drill recipe
craftingTable.remove(<item:create:mechanical_drill>);
craftingTable.addShaped("new_drill_recipe", <item:create:mechanical_drill>, [
    [<item:minecraft:air>, <item:create_high_pressure:graphite_powder>, <item:minecraft:air>],
    [<item:create_high_pressure:graphite_powder>, <item:create_dd:diamond_shard>, <item:create_high_pressure:graphite_powder>],
    [<item:minecraft:iron_ingot>, <item:create:andesite_casing>, <item:minecraft:iron_ingot>]]);
//diamond into shards
craftingTable.remove(<item:create_dd:diamond_shard>);
//diamond diamond back from diamond_shard
craftingTable.remove(<item:minecraft:diamond>);
craftingTable.addShaped("diamonds_from_diamond_block", <item:minecraft:diamond>*9, [[<item:minecraft:diamond_block>]]);
craftingTable.addShaped("diamond_from_diamond_shards", <item:minecraft:diamond>, [
    [<item:minecraft:air>, <item:create_dd:diamond_shard>, <item:minecraft:air>],
    [<item:create_dd:diamond_shard>, <tag:items:forge:slimeballs>, <item:create_dd:diamond_shard>],
    [<item:minecraft:air>, <item:create_dd:diamond_shard>, <item:minecraft:air>]]);
// -----------------------------------------------------------
// Remove all tools 
// -----------------------------------------------------------
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
// gravitite tools
craftingTable.remove(<item:aether:gravitite_sword>);
craftingTable.remove(<item:aether:gravitite_pickaxe>);
craftingTable.remove(<item:aether:gravitite_shovel>);
craftingTable.remove(<item:aether:gravitite_axe>);
craftingTable.remove(<item:aether:gravitite_hoe>);
// knightmetal pickaxe
craftingTable.remove(<item:twilightforest:knightmetal_sword>);
craftingTable.remove(<item:twilightforest:knightmetal_pickaxe>);
craftingTable.remove(<item:twilightforest:knightmetal_axe>);
// black steel
craftingTable.remove(<item:cataclysm:black_steel_sword>);
craftingTable.remove(<item:cataclysm:black_steel_pickaxe>);
craftingTable.remove(<item:cataclysm:black_steel_shovel>);
craftingTable.remove(<item:cataclysm:black_steel_axe>);
craftingTable.remove(<item:cataclysm:black_steel_hoe>);
//fire dragonsteel
craftingTable.remove(<item:iceandfire:dragonsteel_fire_sword>);
craftingTable.remove(<item:iceandfire:dragonsteel_fire_pickaxe>);
craftingTable.remove(<item:iceandfire:dragonsteel_fire_shovel>);
craftingTable.remove(<item:iceandfire:dragonsteel_fire_axe>);
craftingTable.remove(<item:iceandfire:dragonsteel_fire_hoe>);
//ice dragonsteel
craftingTable.remove(<item:iceandfire:dragonsteel_ice_sword>);
craftingTable.remove(<item:iceandfire:dragonsteel_ice_pickaxe>);
craftingTable.remove(<item:iceandfire:dragonsteel_ice_shovel>);
craftingTable.remove(<item:iceandfire:dragonsteel_ice_axe>);
craftingTable.remove(<item:iceandfire:dragonsteel_ice_hoe>);
//lightning dragonsteel
craftingTable.remove(<item:iceandfire:dragonsteel_lightning_sword>);
craftingTable.remove(<item:iceandfire:dragonsteel_lightning_pickaxe>);
craftingTable.remove(<item:iceandfire:dragonsteel_lightning_shovel>);
craftingTable.remove(<item:iceandfire:dragonsteel_lightning_axe>);
craftingTable.remove(<item:iceandfire:dragonsteel_lightning_hoe>);
// neptunium tools
craftingTable.remove(<item:aquaculture:neptunium_sword>);
craftingTable.remove(<item:aquaculture:neptunium_pickaxe>);
craftingTable.remove(<item:aquaculture:neptunium_shovel>);
craftingTable.remove(<item:aquaculture:neptunium_axe>);
craftingTable.remove(<item:aquaculture:neptunium_hoe>);
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
craftingTable.remove(<item:delightful:electrum_knife>);
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
//aquaculturedelight
craftingTable.remove(<item:aquaculturedelight:neptunium_knife>);
//ends_delight
craftingTable.remove(<item:ends_delight:dragon_egg_shell_knife>);
craftingTable.remove(<item:ends_delight:purpur_knife>);
craftingTable.remove(<item:ends_delight:end_stone_knife>);
craftingTable.remove(<item:ends_delight:dragon_tooth_knife>);
//ice and fire
craftingTable.remove(<item:ice_and_fire_delight:firedragonsteelknife>);
craftingTable.remove(<item:ice_and_fire_delight:thunderdragonsteelknife>);
craftingTable.remove(<item:ice_and_fire_delight:frostydragonsteelknife>);
craftingTable.remove(<item:ice_and_fire_delight:stymphalianknife>);
craftingTable.remove(<item:ice_and_fire_delight:leviathanknife>);
// -----------------------------------------------------------
//remove armor crafting recipes
// -----------------------------------------------------------
//zanite
craftingTable.remove(<item:aether:zanite_helmet>);
craftingTable.remove(<item:aether:zanite_chestplate>);
craftingTable.remove(<item:aether:zanite_leggings>);
craftingTable.remove(<item:aether:zanite_boots>);
//gravitite
craftingTable.remove(<item:aether:gravitite_helmet>);
craftingTable.remove(<item:aether:gravitite_chestplate>);
craftingTable.remove(<item:aether:gravitite_leggings>);
craftingTable.remove(<item:aether:gravitite_boots>);
//knightmetal
craftingTable.remove(<item:twilightforest:knightmetal_helmet>);
craftingTable.remove(<item:twilightforest:knightmetal_chestplate>);
craftingTable.remove(<item:twilightforest:knightmetal_leggings>);
craftingTable.remove(<item:twilightforest:knightmetal_boots>);
//chainmail
craftingTable.remove(<item:minecraft:chainmail_helmet>);
craftingTable.remove(<item:minecraft:chainmail_chestplate>);
craftingTable.remove(<item:minecraft:chainmail_leggings>);
craftingTable.remove(<item:minecraft:chainmail_boots>);
//iron
craftingTable.remove(<item:minecraft:iron_helmet>);
craftingTable.remove(<item:minecraft:iron_chestplate>);
craftingTable.remove(<item:minecraft:iron_leggings>);
craftingTable.remove(<item:minecraft:iron_boots>);
//gold
craftingTable.remove(<item:minecraft:golden_helmet>);
craftingTable.remove(<item:minecraft:golden_chestplate>);
craftingTable.remove(<item:minecraft:golden_leggings>);
craftingTable.remove(<item:minecraft:golden_boots>);
//diamond
craftingTable.remove(<item:minecraft:diamond_helmet>);
craftingTable.remove(<item:minecraft:diamond_chestplate>);
craftingTable.remove(<item:minecraft:diamond_leggings>);
craftingTable.remove(<item:minecraft:diamond_boots>);
//neptunium
craftingTable.remove(<item:aquaculture:neptunium_helmet>);
craftingTable.remove(<item:aquaculture:neptunium_chestplate>);
craftingTable.remove(<item:aquaculture:neptunium_leggings>);
craftingTable.remove(<item:aquaculture:neptunium_boots>);
//silver
craftingTable.remove(<item:iceandfire:armor_silver_metal_helmet>);
craftingTable.remove(<item:iceandfire:armor_silver_metal_chestplate>);
craftingTable.remove(<item:iceandfire:armor_silver_metal_leggings>);
craftingTable.remove(<item:iceandfire:armor_silver_metal_boots>);
//copper
craftingTable.remove(<item:iceandfire:armor_copper_metal_helmet>);
craftingTable.remove(<item:iceandfire:armor_copper_metal_chestplate>);
craftingTable.remove(<item:iceandfire:armor_copper_metal_leggings>);
craftingTable.remove(<item:iceandfire:armor_copper_metal_boots>);
//ice dragonsteel
craftingTable.remove(<item:iceandfire:dragonsteel_ice_helmet>);
craftingTable.remove(<item:iceandfire:dragonsteel_ice_chestplate>);
craftingTable.remove(<item:iceandfire:dragonsteel_ice_leggings>);
craftingTable.remove(<item:iceandfire:dragonsteel_ice_boots>);
//fire dragonsteel
craftingTable.remove(<item:iceandfire:dragonsteel_fire_helmet>);
craftingTable.remove(<item:iceandfire:dragonsteel_fire_chestplate>);
craftingTable.remove(<item:iceandfire:dragonsteel_fire_leggings>);
craftingTable.remove(<item:iceandfire:dragonsteel_fire_boots>);
//lightning dragonsteel
craftingTable.remove(<item:iceandfire:dragonsteel_lightning_helmet>);
craftingTable.remove(<item:iceandfire:dragonsteel_lightning_chestplate>);
craftingTable.remove(<item:iceandfire:dragonsteel_lightning_leggings>);
craftingTable.remove(<item:iceandfire:dragonsteel_lightning_boots>);


craftingTable.remove(<item:create_dd:deforester_saw>);
