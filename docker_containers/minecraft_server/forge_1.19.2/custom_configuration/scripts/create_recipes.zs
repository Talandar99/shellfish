<recipetype:create:mechanical_crafting>.remove(<item:creategbd:beam_reactor_helmet>);

//remove seething
<recipetype:create_dd:seething>.remove(<item:create_dd:diamond_shard>);
//crushing
<recipetype:create:crushing>.remove(<item:createaddition:diamond_grit>);
<recipetype:create:crushing>.addRecipe("crushing_steelleaf_into_diamond", [<item:create_dd:diamond_shard> % 10], <item:twilightforest:steeleaf_ingot>, 200);
<recipetype:create:crushing>.addRecipe("crushing_diamond_into_shards", [<item:create_dd:diamond_shard>*4], <item:minecraft:diamond>, 200);
<recipetype:create:crushing>.addRecipe("crushing_diamond_shard_into_dust", [<item:createaddition:diamond_grit>], <item:create_dd:diamond_shard>, 200);

//zanite_gemstone into galium
<recipetype:create:crushing>.addRecipe("zanite_gemstone_into_galium", [<item:tinkers_reforged:gallium_dust> % 100], <item:aether:zanite_gemstone>, 200);

// MillingManager.addRecipe(name as string, outputs as Percentaged<IItemStack>[], input as IIngredient, duration as int)
<recipetype:create:milling>.addRecipe("flour_from_seeds", [<item:extradelight:flour>], <item:minecraft:wheat_seeds>, 200);
//mechanical_crafting
//<recipetype:create:mechanical_crafting>.remove(<item:create_dd:excavation_drill>);
//<recipetype:create:mechanical_crafting>.remove(<item:create_dd:jetpack>);

//splashing
<recipetype:create:splashing>.addRecipe("blazing_quartz_into_quartz", [<item:malum:natural_quartz>], <item:malum:blazing_quartz>, 200);

//<recipetype:minecraft:crafting>
//<recipetype:minecraft:smelting>
//<recipetype:minecraft:blasting>
//<recipetype:minecraft:smoking>
//<recipetype:minecraft:campfire_cooking>
//<recipetype:minecraft:stonecutting>
//<recipetype:minecraft:smithing>
//<recipetype:createdieselgenerators:basin_fermenting>
//<recipetype:createdieselgenerators:distillation>
//<recipetype:sawmill:woodcutting>
//<recipetype:createbigcannons:melting>
//<recipetype:createbigcannons:munition_fuzing>
//<recipetype:createbigcannons:cartridge_assembly>
//<recipetype:createbigcannons:big_cartridge_filling>
//<recipetype:createbigcannons:big_cartridge_filling_deployer>
//<recipetype:createbigcannons:munition_fuzing_deployer>
//<recipetype:createbigcannons:cartridge_assembly_deployer>
//<recipetype:createbigcannons:tracer_application>
//<recipetype:createbigcannons:tracer_application_deployer>
//<recipetype:createbigcannons:autocannon_ammo_container_filling_deployer>
//<recipetype:createbigcannons:fuze_removal>
//<recipetype:createbigcannons:tracer_removal>
//<recipetype:brewinandchewin:fermenting>
//<recipetype:farmersrespite:brewing>
//<recipetype:butchercraft:meat_hook>
//<recipetype:butchercraft:butcher_block>
//<recipetype:butchercraft:grinder>
//<recipetype:aether:enchanting>
//<recipetype:aether:incubation>
//<recipetype:aether:ambrosium_enchanting>
//<recipetype:aether:swet_ball_conversion>
//<recipetype:aether:icestone_freezable>
//<recipetype:aether:accessory_freezable>
//<recipetype:aether:placement_conversion>
//<recipetype:aether:item_placement_ban>
//<recipetype:aether:block_placement_ban>
//<recipetype:iceandfire:dragonforge>
//<recipetype:jeed:effect_provider>
//<recipetype:jeed:potion_provider>
//<recipetype:twilightforest:crumble_horn>
//<recipetype:twilightforest:transformation_powder>
//<recipetype:farmersdelight:cooking>
//<recipetype:farmersdelight:cutting>
//<recipetype:cataclysm:weapon_fusion>
//<recipetype:cataclysm:amethyst_bless>
//<recipetype:twilightdelight:effects>
//<recipetype:biomancy:decomposing>
//<recipetype:biomancy:bio_brewing>
//<recipetype:biomancy:bio_forging>
//<recipetype:biomancy:digesting>
//<recipetype:create:conversion>
//<recipetype:create:crushing>
//<recipetype:create:cutting>
//<recipetype:create:milling>
//<recipetype:create:basin>
//<recipetype:create:mixing>
//<recipetype:create:compacting>
//<recipetype:create:pressing>
//<recipetype:create:sandpaper_polishing>
//<recipetype:create:haunting>
//<recipetype:create:deploying>
//<recipetype:create:filling>
//<recipetype:create:emptying>
//<recipetype:create:item_application>
//<recipetype:create:sequenced_assembly>
//<recipetype:create_dd:hydraulic_compacting>
//<recipetype:create_dd:dragon_breathing>
//<recipetype:create_dd:sanding>
//<recipetype:create_dd:freezing>
//<recipetype:create_central_kitchen:cutting_board_deploying>
//<recipetype:tconstruct:part_builder>
//<recipetype:tconstruct:material>
//<recipetype:tconstruct:tinker_station>
//<recipetype:tconstruct:modifier_worktable>
//<recipetype:tconstruct:casting_basin>
//<recipetype:tconstruct:casting_table>
//<recipetype:tconstruct:molding_table>
//<recipetype:tconstruct:molding_basin>
//<recipetype:tconstruct:melting>
//<recipetype:tconstruct:entity_melting>
//<recipetype:tconstruct:fuel>
//<recipetype:tconstruct:alloying>
//<recipetype:tconstruct:severing>
//<recipetype:tconstruct:data>
//<recipetype:malum:favor_of_the_void>
//<recipetype:malum:spirit_infusion>
//<recipetype:malum:spirit_focusing>
//<recipetype:malum:spirit_transmutation>
//<recipetype:malum:spirit_repair>
//<recipetype:extradelight:oven>
//<recipetype:extradelight:dough_shaping>
//<recipetype:extradelight:mortar>
//<recipetype:extradelight:mixing_bowl>
//<recipetype:extradelight:drying_rack>
//<recipetype:extradelight:feast>
//<recipetype:extradelight:tool_on_block>
//<recipetype:extradelight:dynamic_smelt>
//<recipetype:extradelight:dynamic_smoke>
//<recipetype:extradelight:dynamic_campfire>
//<recipetype:create_enchantment_industry:disenchanting>
//<recipetype:createaddition:rolling>
//<recipetype:createaddition:charging>
//<recipetype:createaddition:liquid_burning>
