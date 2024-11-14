import crafttweaker.api.recipe.CraftingTableRecipeManager;
// -----------------------------------------------------------
// C R A F T I N G   T A B L E 
// -----------------------------------------------------------
// new recipes
// -----------------------------------------------------------
// cooking_oil from oil bucket
craftingTable.addShapeless("cooking_oil_from_plant_oil", <item:extradelight:cooking_oil>*10, [<item:createdieselgenerators:plant_oil_bucket>]);
// tape_measure

craftingTable.addShaped("measurements_tape_measure", <item:measurements:tape_measure>, [
    [<item:create_dd:rubber>, <item:minecraft:yellow_dye>, <item:minecraft:air>],
    [<item:create_dd:rubber>, <item:create:iron_sheet>, <item:create:iron_sheet>]]);
// fixing butchercraft meatblock

craftingTable.addShaped("cooked_goat_block", <item:butchercraft:cooked_goat_block_item>, [
    [<tag:items:forge:goat/cooked>, <tag:items:forge:goat/cooked>, <tag:items:forge:goat/cooked>],
    [<tag:items:forge:goat/cooked>, <tag:items:forge:goat/cooked>, <tag:items:forge:goat/cooked>],
    [<tag:items:forge:goat/cooked>, <tag:items:forge:goat/cooked>, <tag:items:forge:goat/cooked>]]);

craftingTable.addShaped("raw_goat_block", <item:butchercraft:goat_block_item>, [
    [<tag:items:forge:goat/raw>, <tag:items:forge:goat/raw>, <tag:items:forge:goat/raw>],
    [<tag:items:forge:goat/raw>, <tag:items:forge:goat/raw>, <tag:items:forge:goat/raw>],
    [<tag:items:forge:goat/raw>, <tag:items:forge:goat/raw>, <tag:items:forge:goat/raw>]]);

craftingTable.addShaped("cooked_chicken_block", <item:butchercraft:cooked_chicken_block_item>, [
    [<tag:items:forge:chicken/cooked>, <tag:items:forge:chicken/cooked>, <tag:items:forge:chicken/cooked>],
    [<tag:items:forge:chicken/cooked>, <tag:items:forge:chicken/cooked>, <tag:items:forge:chicken/cooked>],
    [<tag:items:forge:chicken/cooked>, <tag:items:forge:chicken/cooked>, <tag:items:forge:chicken/cooked>]]);

craftingTable.addShaped("raw_chicken_block", <item:butchercraft:chicken_block_item>, [
    [<tag:items:forge:chicken/raw>, <tag:items:forge:chicken/raw>, <tag:items:forge:chicken/raw>],
    [<tag:items:forge:chicken/raw>, <tag:items:forge:chicken/raw>, <tag:items:forge:chicken/raw>],
    [<tag:items:forge:chicken/raw>, <tag:items:forge:chicken/raw>, <tag:items:forge:chicken/raw>]]);

craftingTable.addShaped("cooked_rabbit_block", <item:butchercraft:cooked_rabbit_block_item>, [
    [<tag:items:forge:rabbit/cooked>, <tag:items:forge:rabbit/cooked>, <tag:items:forge:rabbit/cooked>],
    [<tag:items:forge:rabbit/cooked>, <tag:items:forge:rabbit/cooked>, <tag:items:forge:rabbit/cooked>],
    [<tag:items:forge:rabbit/cooked>, <tag:items:forge:rabbit/cooked>, <tag:items:forge:rabbit/cooked>]]);

craftingTable.addShaped("raw_rabbit_block", <item:butchercraft:rabbit_block_item>, [
    [<tag:items:forge:rabbit/raw>, <tag:items:forge:rabbit/raw>, <tag:items:forge:rabbit/raw>],
    [<tag:items:forge:rabbit/raw>, <tag:items:forge:rabbit/raw>, <tag:items:forge:rabbit/raw>],
    [<tag:items:forge:rabbit/raw>, <tag:items:forge:rabbit/raw>, <tag:items:forge:rabbit/raw>]]);

craftingTable.addShaped("cooked_lamb_block", <item:butchercraft:cooked_lamb_block_item>, [
    [<tag:items:forge:mutton/cooked>, <tag:items:forge:mutton/cooked>, <tag:items:forge:mutton/cooked>],
    [<tag:items:forge:mutton/cooked>, <tag:items:forge:mutton/cooked>, <tag:items:forge:mutton/cooked>],
    [<tag:items:forge:mutton/cooked>, <tag:items:forge:mutton/cooked>, <tag:items:forge:mutton/cooked>]]);

craftingTable.addShaped("raw_lamb_block", <item:butchercraft:lamb_block_item>, [
    [<tag:items:forge:mutton/raw>, <tag:items:forge:mutton/raw>, <tag:items:forge:mutton/raw>],
    [<tag:items:forge:mutton/raw>, <tag:items:forge:mutton/raw>, <tag:items:forge:mutton/raw>],
    [<tag:items:forge:mutton/raw>, <tag:items:forge:mutton/raw>, <tag:items:forge:mutton/raw>]]);

craftingTable.addShaped("cooked_pork_block", <item:butchercraft:cooked_pork_block_item>, [
    [<tag:items:forge:pork/cooked>, <tag:items:forge:pork/cooked>, <tag:items:forge:pork/cooked>],
    [<tag:items:forge:pork/cooked>, <tag:items:forge:pork/cooked>, <tag:items:forge:pork/cooked>],
    [<tag:items:forge:pork/cooked>, <tag:items:forge:pork/cooked>, <tag:items:forge:pork/cooked>]]);

craftingTable.addShaped("raw_pork_block", <item:butchercraft:pork_block_item>, [
    [<tag:items:forge:pork/raw>, <tag:items:forge:pork/raw>, <tag:items:forge:pork/raw>],
    [<tag:items:forge:pork/raw>, <tag:items:forge:pork/raw>, <tag:items:forge:pork/raw>],
    [<tag:items:forge:pork/raw>, <tag:items:forge:pork/raw>, <tag:items:forge:pork/raw>]]);

craftingTable.addShaped("cooked_beef_block", <item:butchercraft:cooked_beef_block_item>, [
    [<tag:items:forge:beef/cooked>, <tag:items:forge:beef/cooked>, <tag:items:forge:beef/cooked>],
    [<tag:items:forge:beef/cooked>, <tag:items:forge:beef/cooked>, <tag:items:forge:beef/cooked>],
    [<tag:items:forge:beef/cooked>, <tag:items:forge:beef/cooked>, <tag:items:forge:beef/cooked>]]);

craftingTable.addShaped("raw_beef_block", <item:butchercraft:beef_block_item>, [
    [<tag:items:forge:beef/raw>, <tag:items:forge:beef/raw>, <tag:items:forge:beef/raw>],
    [<tag:items:forge:beef/raw>, <tag:items:forge:beef/raw>, <tag:items:forge:beef/raw>],
    [<tag:items:forge:beef/raw>, <tag:items:forge:beef/raw>, <tag:items:forge:beef/raw>]]);
// label easy crafting
craftingTable.addShapeless("easier_label_crafting", <item:labels:label>*2, [ <item:minecraft:paper>,<item:minecraft:ink_sac>]);
// soul torch additional recipes
//craftingTable.addShaped("soul_torch_from_soulstone", <item:minecraft:soul_torch>*4, [
//    [<item:malum:processed_soulstone>],
//    [<tag:items:forge:rods/wooden>]]);
craftingTable.addShaped("soul_torch_from_skreecher_soul", <item:minecraft:soul_torch>*4, [
    [<item:alexsmobs:skreecher_soul>],
    [<tag:items:forge:rods/wooden>]]);
craftingTable.addShaped("soul_torch_from_soul_bead", <item:minecraft:soul_torch>*4, [
    [<item:quark:soul_bead>],
    [<tag:items:forge:rods/wooden>]]);
// cobweb
craftingTable.addShaped("cobweb_from_string", <item:minecraft:cobweb>, [
    [<item:minecraft:air>, <item:minecraft:string>, <item:minecraft:air>],
    [<item:minecraft:string>, <item:minecraft:air>, <item:minecraft:string>],
    [<item:minecraft:air>, <item:minecraft:string>, <item:minecraft:air>]]);
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
craftingTable.addShaped("straw_hat", <item:overweight_farming:straw_hat>, [
    [<item:minecraft:air>, <item:minecraft:wheat>, <item:minecraft:air>],
    [<item:minecraft:wheat>, <item:minecraft:wheat>, <item:minecraft:wheat>]]);
// blood soup
craftingTable.addShapeless("meat_soup_from_bucket_tinkers", <item:tconstruct:meat_soup>*4 , [
    <item:tconstruct:meat_soup_bucket>.transformReplace(<item:minecraft:bucket>),
    <item:minecraft:bowl>, <item:minecraft:bowl>, <item:minecraft:bowl>, <item:minecraft:bowl>]);

craftingTable.addShapeless("blood_soup_from_bucket_butcher", <item:tconstruct:meat_soup>.withTag({display: {Name: "{\"text\":\"Blood Soup\",\"italic\":false,\"color\":\"red\"}"},})*4 , [
    <item:butchercraft:blood_fluid_bucket>.transformReplace(<item:minecraft:bucket>),
    <item:minecraft:bowl>, <item:minecraft:bowl>, <item:minecraft:bowl>, <item:minecraft:bowl>]);
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

//<item:extradelight:candy_bowl_item>
craftingTable.addShaped("candy_bowl_from_any_glass", <item:extradelight:candy_bowl_item>, [
    [<tag:items:forge:glass/colorless>, <item:minecraft:bowl>, <tag:items:forge:glass/colorless>],
    [<item:minecraft:air>, <tag:items:forge:glass/colorless>, <item:minecraft:air>]]);
//change diesel engine recipe
craftingTable.addShaped("createdieselgenerators_diesel_engine", <item:createdieselgenerators:diesel_engine>, [
    [<item:createdieselgenerators:engine_piston>, <item:minecraft:flint_and_steel>, <item:createdieselgenerators:engine_piston>],
    [<item:createdieselgenerators:engine_piston>, <item:create:brass_block>, <item:createdieselgenerators:engine_piston>],
    [<item:minecraft:polished_blackstone_slab>, <item:create:fluid_tank>, <item:minecraft:polished_blackstone_slab>]]);
// -----------------------------
// ComputerCraft
// -----------------------------

//craftingTable.addShaped("computercraft_computer_normal", <item:computercraft:computer_normal>, [
//    [<item:minecraft:air>, <item:create:andesite_casing>, <item:minecraft:air>],
//    [<item:createaddition:modular_accumulator>, <item:northstar:circuit>, <tag:items:forge:glass/tinted>],
//    [<item:minecraft:air>, <item:create:sturdy_sheet>, <item:minecraft:air>]]);

craftingTable.addShaped("computercraft_computer_normal", <item:computercraft:computer_normal>, [
    [<item:minecraft:air>, <item:create:andesite_casing>, <item:minecraft:air>],
    [<item:createaddition:modular_accumulator>, <item:create_connected:control_chip>, <tag:items:forge:glass/tinted>],
    [<item:minecraft:air>, <item:create:sturdy_sheet>, <item:minecraft:air>]]);

//craftingTable.addShaped("computercraft_computer_advanced", <item:computercraft:computer_advanced>, [
//    [<item:minecraft:air>, <item:create:brass_casing>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:computercraft:computer_normal>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:northstar:advanced_circuit>, <item:minecraft:air>]]);

//craftingTable.addShaped("computercraft_computer_advanced", <item:computercraft:computer_advanced>, [
//    [<item:minecraft:air>, <item:create:brass_casing>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:computercraft:computer_normal>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:ad_astra:desh_plate>, <item:minecraft:air>]]);

craftingTable.addShaped("computercraft_computer_advanced", <item:computercraft:computer_advanced>, [
    [<item:minecraft:air>, <item:create:brass_casing>, <item:minecraft:air>],
    [<item:create_connected:control_chip>, <item:computercraft:computer_normal>, <item:create_connected:control_chip>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]]);

craftingTable.addShaped("computercraft_monitor_normal", <item:computercraft:monitor_normal>, [
    [<item:minecraft:air>, <item:create:andesite_casing>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:create:electron_tube>, <tag:items:forge:glass/tinted>],
    [<item:minecraft:air>, <item:create:sturdy_sheet>, <item:minecraft:air>]]);

craftingTable.addShaped("computercraft_monitor_advanced", <item:computercraft:monitor_advanced>, [
    [<item:minecraft:air>, <item:create:brass_casing>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:computercraft:monitor_normal>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]]);

craftingTable.addShaped("computercraft_turtle_normal", <item:computercraft:turtle_normal>, [
    [<item:minecraft:air>, <tag:items:forge:plates/iron>, <item:minecraft:air>],
    [<tag:items:forge:chests/wooden>, <item:computercraft:computer_normal>, <item:create:content_observer>],
    [<item:minecraft:air>, <item:minecraft:furnace>, <item:minecraft:air>]]);

craftingTable.addShaped("computercraft_turtle_advanced", <item:computercraft:turtle_advanced>, [
    [<item:minecraft:air>, <tag:items:forge:plates/brass>, <item:minecraft:air>],
    [<tag:items:forge:chests/wooden>, <item:computercraft:computer_advanced>, <item:create:content_observer>],
    [<item:createaddition:modular_accumulator>, <item:minecraft:furnace>, <item:minecraft:air>]]);

//craftingTable.addShaped("computercraft_computer_advanced_2", <item:computercraft:turtle_advanced>, [
//    [<item:minecraft:air>, <tag:items:forge:plates/brass>, <item:minecraft:air>],
//    [<item:northstar:advanced_circuit>, <item:computercraft:turtle_normal>, <item:minecraft:air>],
//    [<item:minecraft:air>, <item:create:brass_casing>, <item:minecraft:air>]]);

//craftingTable.addShaped("computercraft_computer_advanced_turtle_alternative_recipe", <item:computercraft:turtle_advanced>, [
//    [<item:minecraft:air>, <tag:items:forge:plates/brass>, <item:minecraft:air>],
//    [<item:ad_astra:desh_plate>, <item:computercraft:turtle_normal>, <item:minecraft:air>],
//    [<item:createaddition:modular_accumulator>, <item:create:brass_casing>, <item:minecraft:air>]]);

craftingTable.addShaped("computercraft_computer_advanced_turtle_alternative_recipe", <item:computercraft:turtle_advanced>, [
    [<item:minecraft:air>, <tag:items:forge:plates/brass>, <item:minecraft:air>],
    [<item:create_connected:control_chip>, <item:computercraft:turtle_normal>, <item:create_connected:control_chip>],
    [<item:createaddition:modular_accumulator>, <item:create:brass_casing>, <item:minecraft:air>]]);

craftingTable.addShaped("computercraft_speaker", <item:computercraft:speaker>, [
    [<item:minecraft:air>, <item:create:andesite_casing>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:supplementaries:speaker_block>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:create:sturdy_sheet>, <item:minecraft:air>]]);

craftingTable.addShaped("computercraft_printer", <item:computercraft:printer>, [
    [<item:minecraft:air>, <item:create:andesite_casing>, <item:minecraft:air>],
    [<item:minecraft:cyan_dye>, <item:minecraft:magenta_dye>, <item:minecraft:yellow_dye>],
    [<item:minecraft:air>, <item:create:sturdy_sheet>, <item:minecraft:air>]]);

craftingTable.addShaped("computercraft_disk_drive", <item:computercraft:disk_drive>, [
    [<item:minecraft:air>, <item:create:andesite_casing>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:create:precision_mechanism>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:create:sturdy_sheet>, <item:minecraft:air>]]);

//craftingTable.addShaped("computercraft_wired_modem_full", <item:computercraft:wired_modem_full>, [
//    [<item:minecraft:air>, <item:create:brass_casing>, <item:minecraft:air>],
//    [<item:computercraft:cable>, <item:northstar:circuit>, <item:computercraft:cable>],
//    [<item:minecraft:air>, <item:create:sturdy_sheet>, <item:minecraft:air>]]);

craftingTable.addShaped("computercraft_wired_modem_full", <item:computercraft:wired_modem_full>, [
    [<item:minecraft:air>, <item:create:brass_casing>, <item:minecraft:air>],
    [<item:computercraft:cable>, <item:create_connected:control_chip>, <item:computercraft:cable>],
    [<item:minecraft:air>, <item:create:sturdy_sheet>, <item:minecraft:air>]]);

craftingTable.addShapeless("wired_modem_full_into_not_full", <item:computercraft:wired_modem>, [<item:computercraft:wired_modem_full>]);
craftingTable.addShapeless("wired_modem_not_full_into_full", <item:computercraft:wired_modem_full>, [<item:computercraft:wired_modem>]);

craftingTable.addShaped("computercraft_cable", <item:computercraft:cable>*4, [
    [<item:minecraft:air>, <item:create_dd:rubber>, <item:minecraft:air>],
    [<item:create_dd:rubber>, <item:createaddition:copper_wire>, <item:create_dd:rubber>],
    [<item:minecraft:air>, <item:create_dd:rubber>, <item:minecraft:air>]]);

craftingTable.addShaped("computercraft_wireless_modem_normal", <item:computercraft:wireless_modem_normal>, [
    [<item:createaddition:iron_rod>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:ender_eye>, <item:create:andesite_casing>, <item:minecraft:air>],
    [<item:create:sturdy_sheet>, <item:minecraft:air>, <item:minecraft:air>]]);

craftingTable.addShaped("computercraft_wireless_modem_advanced", <item:computercraft:wireless_modem_advanced>, [
    [<item:minecraft:end_rod>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:computercraft:wireless_modem_normal>, <item:create:brass_casing>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]]);
//------------------------------------------------------------------------
//computercraft disks
//------------------------------------------------------------------------
craftingTable.addShaped("computercraft_disk_recipe_black", <item:computercraft:disk>.withTag({Color: 1118481 }), [ //black
    [<item:minecraft:air>, <item:minecraft:black_dye>, <item:minecraft:air>],
    [<item:minecraft:paper>, <item:create:sturdy_sheet>, <item:create:iron_sheet>]]);
craftingTable.addShaped("computercraft_disk_recipe_red",<item:computercraft:disk>.withTag({Color: 13388876 }), [ //red
    [<item:minecraft:air>, <item:minecraft:red_dye>, <item:minecraft:air>],
    [<item:minecraft:paper>, <item:create:sturdy_sheet>, <item:create:iron_sheet>]]);
craftingTable.addShaped("computercraft_disk_recipe_green",<item:computercraft:disk>.withTag({Color: 5744206  }), [  //green
    [<item:minecraft:air>, <item:minecraft:green_dye>, <item:minecraft:air>],
    [<item:minecraft:paper>, <item:create:sturdy_sheet>, <item:create:iron_sheet>]]);
craftingTable.addShaped("computercraft_disk_recipe_brown",<item:computercraft:disk>.withTag({Color: 8349260  }), [  //brown
    [<item:minecraft:air>, <item:minecraft:brown_dye>, <item:minecraft:air>],
    [<item:minecraft:paper>, <item:create:sturdy_sheet>, <item:create:iron_sheet>]]);
craftingTable.addShaped("computercraft_disk_recipe_blue",<item:computercraft:disk>.withTag({Color: 3368652  }), [  //blue
    [<item:minecraft:air>, <item:minecraft:blue_dye>, <item:minecraft:air>],
    [<item:minecraft:paper>, <item:create:sturdy_sheet>, <item:create:iron_sheet>]]);
craftingTable.addShaped("computercraft_disk_recipe_purple",<item:computercraft:disk>.withTag({Color: 11691749 }), [ //purple
    [<item:minecraft:air>, <item:minecraft:purple_dye>, <item:minecraft:air>],
    [<item:minecraft:paper>, <item:create:sturdy_sheet>, <item:create:iron_sheet>]]);
craftingTable.addShaped("computercraft_disk_recipe_cyan",<item:computercraft:disk>.withTag({Color: 5020082  }), [  //cyan
    [<item:minecraft:air>, <item:minecraft:cyan_dye>, <item:minecraft:air>],
    [<item:minecraft:paper>, <item:create:sturdy_sheet>, <item:create:iron_sheet>]]);
craftingTable.addShaped("computercraft_disk_recipe_light_gray",<item:computercraft:disk>.withTag({Color: 10066329 }), [ //light gray
    [<item:minecraft:air>, <item:minecraft:light_gray_dye>, <item:minecraft:air>],
    [<item:minecraft:paper>, <item:create:sturdy_sheet>, <item:create:iron_sheet>]]);
craftingTable.addShaped("computercraft_disk_recipe_gray",<item:computercraft:disk>.withTag({Color: 5000268  }), [  //gray
    [<item:minecraft:air>, <item:minecraft:gray_dye>, <item:minecraft:air>],
    [<item:minecraft:paper>, <item:create:sturdy_sheet>, <item:create:iron_sheet>]]);
craftingTable.addShaped("computercraft_disk_recipe_pink",<item:computercraft:disk>.withTag({Color: 15905484 }), [ //pink
    [<item:minecraft:air>, <item:minecraft:pink_dye>, <item:minecraft:air>],
    [<item:minecraft:paper>, <item:create:sturdy_sheet>, <item:create:iron_sheet>]]);
craftingTable.addShaped("computercraft_disk_recipe_lime",<item:computercraft:disk>.withTag({Color: 8375321  }), [  //lime
    [<item:minecraft:air>, <item:minecraft:lime_dye>, <item:minecraft:air>],
    [<item:minecraft:paper>, <item:create:sturdy_sheet>, <item:create:iron_sheet>]]);
craftingTable.addShaped("computercraft_disk_recipe_yellow",<item:computercraft:disk>.withTag({Color: 14605932 }), [ //yellow
    [<item:minecraft:air>, <item:minecraft:yellow_dye>, <item:minecraft:air>],
    [<item:minecraft:paper>, <item:create:sturdy_sheet>, <item:create:iron_sheet>]]);
craftingTable.addShaped("computercraft_disk_recipe_light_blue",<item:computercraft:disk>.withTag({Color: 10072818 }), [ //lightblue
    [<item:minecraft:air>, <item:minecraft:light_blue_dye>, <item:minecraft:air>],
    [<item:minecraft:paper>, <item:create:sturdy_sheet>, <item:create:iron_sheet>]]);
craftingTable.addShaped("computercraft_disk_recipe_magenta",<item:computercraft:disk>.withTag({Color: 15040472 }), [ //magenta
    [<item:minecraft:air>, <item:minecraft:magenta_dye>, <item:minecraft:air>],
    [<item:minecraft:paper>, <item:create:sturdy_sheet>, <item:create:iron_sheet>]]);
craftingTable.addShaped("computercraft_disk_recipe_orange",<item:computercraft:disk>.withTag({Color: 15905331 }), [ //orange
    [<item:minecraft:air>, <item:minecraft:orange_dye>, <item:minecraft:air>],
    [<item:minecraft:paper>, <item:create:sturdy_sheet>, <item:create:iron_sheet>]]);
craftingTable.addShaped("computercraft_disk_recipe_white",<item:computercraft:disk>.withTag({Color: 15790320 }), [ //white
    [<item:minecraft:air>, <item:minecraft:white_dye>, <item:minecraft:air>],
    [<item:minecraft:paper>, <item:create:sturdy_sheet>, <item:create:iron_sheet>]]);
// -----------------------------
// ComputerCraft peripherals
// -----------------------------
craftingTable.addShaped("peripherals_induction_charger", <item:peripherals:induction_charger>, [
    [<item:create:copper_sheet>, <item:createaddition:copper_spool>, <item:create:copper_sheet>],
    [<item:createaddition:copper_spool>, <item:createaddition:copper_rod>, <item:createaddition:copper_spool>],
    [<item:create:copper_sheet>, <item:createaddition:copper_spool>, <item:create:copper_sheet>]]);

craftingTable.addShaped("peripherals_disk_raid", <item:peripherals:disk_raid>, [
    [<item:computercraft:disk_drive>, <item:computercraft:disk_drive>, <item:computercraft:disk_drive>],
    [<item:computercraft:disk_drive>, <item:create:andesite_casing>, <item:computercraft:disk_drive>]]);

craftingTable.addShaped("peripherals_advanced_disk_raid", <item:peripherals:advanced_disk_raid>, [
    [<item:peripherals:disk_raid>, <item:create:brass_casing>, <item:peripherals:disk_raid>]]);

craftingTable.addShaped("peripherals_magnetic_card_manipulator", <item:peripherals:magnetic_card_manipulator>, [
    [<item:minecraft:air>, <item:create:andesite_casing>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:peripherals:magnetic_card>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:create:sturdy_sheet>, <item:minecraft:air>]]);

craftingTable.addShaped("peripherals_rubber_ducky", <item:ducky-periphs:duck_block>, [
    [<item:minecraft:air>, <item:create_dd:rubber>,<item:minecraft:yellow_dye>],
    [<item:create_dd:rubber>, <item:create_dd:rubber>,<item:minecraft:air>]]);
// -----------------------------
//enchantless naga_gloves
craftingTable.addShaped("naga_gloves", <item:twilightaether:naga_gloves>, [
    [<item:twilightforest:naga_scale>, <item:minecraft:air>, <item:twilightforest:naga_scale>]]);
//nature/explorer's compasses twilight
craftingTable.addShaped("explorerscompass_twilight", <item:explorerscompass:explorerscompass>, [
    [<item:minecraft:air>, <item:twilightforest:etched_nagastone>, <item:minecraft:air>],
    [<item:twilightforest:etched_nagastone>, <item:minecraft:compass>, <item:twilightforest:etched_nagastone>],
    [<item:minecraft:air>, <item:twilightforest:etched_nagastone>, <item:minecraft:air>]]);
craftingTable.addShaped("naturescompass_twilight", <item:naturescompass:naturescompass>, [
    [<item:minecraft:air>, <item:twilightforest:ironwood_ingot>, <item:minecraft:air>],
    [<item:twilightforest:ironwood_ingot>, <item:minecraft:compass>, <item:twilightforest:ironwood_ingot>],
    [<item:minecraft:air>, <item:twilightforest:ironwood_ingot>, <item:minecraft:air>]]);
//campfire
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
craftingTable.addShaped("vs_eureka_engine", <item:vs_eureka:engine>, [
    [<item:minecraft:air>, <item:create:brass_sheet>, <item:minecraft:air>],
    [<item:create:brass_sheet>, <item:minecraft:blast_furnace>, <item:create:brass_sheet>],
    [<item:minecraft:air>, <item:create:brass_sheet>, <item:minecraft:air>]]);
// ash compatiblity
craftingTable.addShapeless("tuff_from_slabs", <item:minecraft:tuff>, [<item:quark:tuff_slab>,<item:quark:tuff_slab>]);
craftingTable.addShapeless("iceandfire_chared_block_into_ash", <item:immersive_weathering:ash_layer_block>, [<tag:items:iceandfire:charred_blocks>]);
craftingTable.addShapeless("charred_planks_into_ash", <item:immersive_weathering:ash_layer_block>, [<item:immersive_weathering:charred_planks>]);
craftingTable.addShapeless("charred_log_into_ash", <item:immersive_weathering:ash_layer_block>, [<item:immersive_weathering:charred_log>]);
craftingTable.addShaped("ash_block_compacting", <item:iceandfire:ash>, [
    [<item:immersive_weathering:ash_block>, <item:immersive_weathering:ash_block>, <item:immersive_weathering:ash_block>],
    [<item:immersive_weathering:ash_block>, <item:immersive_weathering:ash_block>, <item:immersive_weathering:ash_block>],
    [<item:immersive_weathering:ash_block>, <item:immersive_weathering:ash_block>, <item:immersive_weathering:ash_block>]]);
// soap compatiblity
craftingTable.addShapeless("making_soap", <item:butchercraft:soap>*3, [<item:butchercraft:lard>,<tag:items:minecraft:flowers>,<tag:items:forge:ash>]);
craftingTable.addShapeless("making_soap_from_soap_block", <item:supplementaries:soap>*9, [<item:supplementaries:soap_block>]);
// rope compatiblity
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
craftingTable.addShaped("lead_compatible", <item:minecraft:lead>, [
    [<tag:items:forge:string>, <tag:items:forge:string>, <item:minecraft:air>],
    [<tag:items:forge:string>, <tag:items:forge:slimeballs>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <tag:items:forge:string>]]);
// enchanting_table
craftingTable.addShaped("enchanting_table_aether_recipe", <item:minecraft:enchanting_table>, [
    [<item:minecraft:air>, <item:minecraft:book>, <item:minecraft:air>],
    [<item:minecraft:diamond>, <item:aether:enchanted_gravitite>, <item:minecraft:diamond>],
    [<item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>]]);
//bucket_from_iron_sheets
craftingTable.addShaped("bucket_from_iron_sheets", <item:minecraft:bucket>, [
    [<item:create:iron_sheet>, <item:minecraft:air>, <item:create:iron_sheet>],
    [<item:minecraft:air>, <item:create:iron_sheet>, <item:minecraft:air>]]);
//shears
craftingTable.addShaped("shears_from_iron_sheets", <item:minecraft:shears>, [
    [<item:minecraft:air>, <item:create:iron_sheet>],
    [<item:create:iron_sheet>, <item:minecraft:air>]]);
//shears
craftingTable.addShaped("sail_frame_from_wood", <item:create:sail_frame>*4, [
    [<tag:items:minecraft:planks>, <tag:items:forge:rods/wooden>, <tag:items:minecraft:planks>],
    [<tag:items:forge:rods/wooden>, <item:minecraft:air>, <tag:items:forge:rods/wooden>],
    [<tag:items:minecraft:planks>, <tag:items:forge:rods/wooden>, <tag:items:minecraft:planks>]]);
craftingTable.addShapeless("sail_with_canvas", <item:create:white_sail>, [<item:create:sail_frame>, <item:farmersdelight:canvas>]);
// -----------------------------
// FarmersDelight
// -----------------------------
// remove farmersdelight rope recipe
//meatgrinder
craftingTable.addShaped("alternative_recipe_meat_grinder", <item:butchercraft:grinder_block_item>, [
    [<item:create:hand_crank>, <item:create:chute>, <item:minecraft:air>],
    [<item:minecraft:iron_ingot>, <item:create:propeller>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:piston>, <item:create:chute>]]);
//kettle from copper sheets
craftingTable.addShaped("kettle_from_copper_sheets", <item:farmersrespite:kettle>, [
    [<item:createaddition:copper_rod>, <item:minecraft:leather>, <item:createaddition:copper_rod>],
    [<item:create:copper_sheet>, <item:minecraft:air>, <item:create:copper_sheet>],
    [<item:minecraft:air>, <item:create:copper_sheet>, <item:minecraft:air>]]);
//deep frying pan
craftingTable.addShaped("deep_frying_pan_with_oil", <item:casualness_delight:deep_frying_pan>, [
    [<item:minecraft:brick>, <item:minecraft:iron_bars>, <item:minecraft:brick>],
    [<item:minecraft:iron_ingot>, <item:createdieselgenerators:plant_oil_bucket>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]]);
//craftingTable.addShaped("deep_frying_pan_with_oil2", <item:casualness_delight:deep_frying_pan>, [
//    [<item:minecraft:brick>, <item:minecraft:iron_bars>, <item:minecraft:brick>],
//    [<item:minecraft:iron_ingot>, <item:createaddition:seed_oil_bucket>, <item:minecraft:iron_ingot>],
//    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]]);
//cooking pot 
craftingTable.addShaped("alternative_recipe_cooking_pot", <item:farmersdelight:cooking_pot>, [
    [<item:minecraft:brick>, <item:extradelight:wooden_spoon>, <item:minecraft:brick>],
    [<item:minecraft:iron_ingot>, <item:minecraft:water_bucket>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]]);
// eureka balloon
craftingTable.addShaped("balloon_gravitite_recipe", <item:vs_eureka:white_balloon>*32, [
    [<item:create:white_sail>, <item:aether:cold_aercloud>, <item:create:white_sail>],
    [<item:aether:cold_aercloud>, <item:aether:enchanted_gravitite>, <item:aether:cold_aercloud>],
    [<item:create:white_sail>, <item:aether:cold_aercloud>, <item:create:white_sail>]]);
// eureka floater
craftingTable.addShaped("floater_recipe", <item:vs_eureka:floater>*16, [
    [<item:create:andesite_alloy>, <tag:items:minecraft:planks>, <item:create:andesite_alloy>],
    [<tag:items:minecraft:planks>, <item:create_dd:padded_rubber>, <tag:items:minecraft:planks>],
    [<item:create:andesite_alloy>, <tag:items:minecraft:planks>, <item:create:andesite_alloy>]]);
//rope and elevator pulley use rope
craftingTable.addShaped("rope_pulley", <item:create:rope_pulley>, [
    [<item:minecraft:air>, <item:create:andesite_casing>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:supplementaries:rope>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:create:iron_sheet>, <item:minecraft:air>]]);
craftingTable.addShaped("elevator_pulley", <item:create:elevator_pulley>, [
    [<item:minecraft:air>, <item:create:brass_casing>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:supplementaries:rope>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:create:iron_sheet>, <item:minecraft:air>]]);
// disenchanter craftable with diamond sandpaper
craftingTable.addShaped("disenchanter_from_any_sandpaper", <item:create_enchantment_industry:disenchanter>, [
    [<tag:items:create:sandpaper>],
    [<item:create:copper_casing>]]);
//new drill recipe
craftingTable.addShaped("new_drill_recipe", <item:create:mechanical_drill>, [
    [<item:minecraft:air>, <item:create_high_pressure:graphite_powder>, <item:minecraft:air>],
    [<item:create_high_pressure:graphite_powder>, <item:create_dd:diamond_shard>, <item:create_high_pressure:graphite_powder>],
    [<item:minecraft:iron_ingot>, <item:create:andesite_casing>, <item:minecraft:iron_ingot>]]);
//diamond diamond back from diamond_shard
craftingTable.addShaped("diamonds_from_diamond_block", <item:minecraft:diamond>*9, [[<item:minecraft:diamond_block>]]);
craftingTable.addShaped("diamond_from_diamond_shards", <item:minecraft:diamond>, [
    [<item:minecraft:air>, <item:create_dd:diamond_shard>, <item:minecraft:air>],
    [<item:create_dd:diamond_shard>, <tag:items:forge:slimeballs>, <item:create_dd:diamond_shard>],
    [<item:minecraft:air>, <item:create_dd:diamond_shard>, <item:minecraft:air>]]);
//ad_astra

craftingTable.addShaped("ad_astra_oxygen_distributor", <item:ad_astra:oxygen_distributor>, [
    [<item:ad_astra:steel_plate>, <item:create:propeller>, <item:ad_astra:steel_plate>],
    [<item:ad_astra:desh_plate>, <item:create_connected:control_chip>, <item:ad_astra:desh_plate>],
    [<item:ad_astra:oxygen_tank>, <item:ad_astra:oxygen_tank>, <item:ad_astra:oxygen_tank>]]);

craftingTable.addShaped("ad_astra_solar_panel", <item:ad_astra:solar_panel>, [
    [<item:minecraft:daylight_detector>, <item:minecraft:daylight_detector>, <item:minecraft:daylight_detector>],
    [<item:ad_astra:steel_plate>, <item:create_connected:control_chip>, <item:ad_astra:steel_plate>],
    [<item:ad_astra:desh_plate>, <item:ad_astra:desh_plate>, <item:ad_astra:desh_plate>]]);

