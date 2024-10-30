<recipetype:create:mechanical_crafting>.remove(<item:creategbd:beam_reactor_helmet>);

//------------------------------
//remove seething
//------------------------------
<recipetype:create_dd:seething>.remove(<item:create_dd:diamond_shard>);
//------------------------------
//crushing
//------------------------------
<recipetype:create:crushing>.remove(<item:createaddition:diamond_grit>);
<recipetype:create:crushing>.addRecipe("crushing_steelleaf_into_diamond", [<item:create_dd:diamond_shard> % 10], <item:twilightforest:steeleaf_ingot>, 200);
<recipetype:create:crushing>.addRecipe("crushing_diamond_into_shards", [<item:create_dd:diamond_shard>*4], <item:minecraft:diamond>, 200);
<recipetype:create:crushing>.addRecipe("crushing_diamond_shard_into_dust", [<item:createaddition:diamond_grit>], <item:create_dd:diamond_shard>, 200);

//------------------------------
//zanite_gemstone into galium
//------------------------------
<recipetype:create:crushing>.addRecipe("zanite_gemstone_into_galium", [<item:tinkers_reforged:gallium_dust> % 100], <item:aether:zanite_gemstone>, 200);

// MillingManager.addRecipe(name as string, outputs as Percentaged<IItemStack>[], input as IIngredient, duration as int)
<recipetype:create:milling>.addRecipe("flour_from_seeds", [<item:extradelight:flour>], <item:minecraft:wheat_seeds>, 200);
//------------------------------
//mechanical_crafting
//------------------------------
//<recipetype:create:mechanical_crafting>.remove(<item:create_dd:excavation_drill>);
//<recipetype:create:mechanical_crafting>.remove(<item:create_dd:jetpack>);

//------------------------------
//splashing
//------------------------------
<recipetype:create:splashing>.addRecipe("blazing_quartz_into_quartz", [<item:malum:natural_quartz>], <item:malum:blazing_quartz>, 200);

//------------------------------
//pressing
//------------------------------
//<recipetype:create:pressing>.addRecipe("pressed", [<item:minecraft:diamond> % 50, <item:minecraft:apple>, (<item:minecraft:dirt> * 2) % 12], <item:minecraft:dirt>, 200);
//------------------------------
//compacting
//------------------------------
//making rubber
<recipetype:create:compacting>.addRecipe("getting_sap_from_tree", 
    <constant:create:heat_condition:none>, 
    [<fluid:create_dd:sap> * 250], 
    [<item:minecraft:jungle_log>],null, 200);
//remove seed oil (it's the same as plant oil)
<recipetype:create:compacting>.remove(<fluid:createaddition:seed_oil>);
//filling

<recipetype:create:filling>.addRecipe("bloody_cinder_flour_1", <item:create:cinder_flour>, <tag:items:forge:flour>, <fluid:butchercraft:blood_fluid> * 250, 200);
<recipetype:create:filling>.addRecipe("bloody_cinder_flour_2", <item:create:cinder_flour>, <tag:items:forge:flour>, <fluid:tconstruct:meat_soup> * 250, 200);
//mixing
<recipetype:create:mixing>.addRecipe("steel_from_iron_tungsten_and_graphite", 
    <constant:create:heat_condition:superheated>, 
    [<item:createbigcannons:steel_scrap> * 36], 
    [<item:minecraft:iron_ingot> * 3,<item:northstar:tungsten_ingot>*1,<item:create_high_pressure:graphite_powder>*4], 
    null, 
    200);

<recipetype:create:mixing>.addRecipe("meat_soup_mixing", 
    <constant:create:heat_condition:none>, 
    [<fluid:tconstruct:meat_soup> * 250], 
    [<tag:items:forge:meat/raw> * 5], 
    [<fluid:minecraft:water> * 200], 250);

<recipetype:create:mixing>.addRecipe("pixie_dust_mixing", 
    <constant:create:heat_condition:none>, 
    [<item:iceandfire:pixie_dust> * 3], 
    [<tag:items:quark:shards> * 2,<item:minecraft:redstone> * 2,<item:createbb:white_meth>*1,<item:createbb:blue_meth>*1,<item:minecraft:glowstone_dust>*2,<item:createaddition:diamond_grit>*1], 
    null, 
    200);
