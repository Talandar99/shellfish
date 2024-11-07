<recipetype:create:mechanical_crafting>.remove(<item:creategbd:beam_reactor_helmet>);

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
<recipetype:create:pressing>.addRecipe("blue_meth_pressing", [
<item:createbb:blue_meth>.withTag({display: {Name: "{\"text\":\"Blue Meth\",\"italic\":false,\"color\":\"aqua\"}"},})
, <item:createbb:tray>], 
<item:createbb:blue_meth_tray>.withTag({display: {Name: "{\"text\":\"Blue Meth Tray\",\"italic\":false,\"color\":\"aqua\"}"},})
,200);

<recipetype:create:pressing>.addRecipe("white_meth_pressing", [
<item:createbb:white_meth>.withTag({display: {Name: "{\"text\":\"White Meth\",\"italic\":false}"},})
, <item:createbb:tray>], 
<item:createbb:white_meth_tray>.withTag({display: {Name: "{\"text\":\"White Meth Tray\",\"italic\":false}"},})
,200);

//------------------------------
//compacting
//------------------------------
//making rubber
<recipetype:create:compacting>.addRecipe("getting_sap_from_tree", 
    <constant:create:heat_condition:none>, 
    [<fluid:create_dd:sap> * 250], 
    [<item:minecraft:jungle_log>],null, 200);

// CompactingManager.addRecipe(name as string, 
//heat as HeatCondition, 
//outputs as Percentaged<IItemStack>[], 
//itemInputs as IIngredientWithAmount[], 
//fluidInputs as FluidIngredient[], 
//duration as int)
//------------------------------
//filling
//------------------------------
<recipetype:create:filling>.addRecipe("bloody_cinder_flour_1", <item:create:cinder_flour>, <tag:items:forge:flour>, <fluid:butchercraft:blood_fluid> * 250, 200);
<recipetype:create:filling>.addRecipe("bloody_cinder_flour_2", <item:create:cinder_flour>, <tag:items:forge:flour>, <fluid:tconstruct:meat_soup> * 250, 200);
<recipetype:create:filling>.addRecipe("filling_tankard_with_pure_ethanol", 
<item:brewinandchewin:vodka>.withTag({display: {Name: "{\"text\":\"Ethanol\",\"italic\":false}"},})
, <item:brewinandchewin:tankard>, <fluid:createdieselgenerators:ethanol>  * 250, 200);

<recipetype:create:filling>.addRecipe("filling_tray_with_blue_meth", 
<item:createbb:blue_meth_tray>.withTag({display: {Name: "{\"text\":\"Blue Meth Tray\",\"italic\":false,\"color\":\"aqua\"}"},})
, <item:createbb:tray>,
<fluid:createbb:liquid_blue_methamphetamine>  * 200, 200);

<recipetype:create:filling>.addRecipe("filling_tray_with_white_meth", 
<item:createbb:white_meth_tray>.withTag({display: {Name: "{\"text\":\"White Meth Tray\",\"italic\":false}"},})
, <item:createbb:tray>,
<fluid:createbb:liquid_methamphetamine>  * 200, 200);
//------------------------------
//mixing
//------------------------------
//NORTHSTAR
//<recipetype:create:mixing>.addRecipe("steel_from_iron_tungsten_and_graphite", 
//    <constant:create:heat_condition:superheated>, 
//    [<item:createbigcannons:steel_scrap> * 36], 
//    [<item:minecraft:iron_ingot> * 3,<item:northstar:tungsten_ingot>*1,<item:create_high_pressure:graphite_powder>*4], 
//    null, 
//    200);


// MixingManager.addRecipe(
//name as string, 
//heat as HeatCondition, 
//outputs as IFluidStack[], 
//itemInputs as IIngredientWithAmount[], 
//fluidInputs as FluidIngredient[], 
//duration as int)

//<recipetype:create:mixing>.addRecipe("copper_zinc_catalyst_reaction", 
//    <constant:create:heat_condition:heated>, 
//    [<fluid:ad_astra:oxygen> * 10,<fluid:createbb:hydrogen> * 20], 
//    [<item:createbb:copper_zinc_catalyst>], 
//    //[<fluid:ad_astra:oxygen> * 10,<fluid:createbb:hydrogen> * 20,<item:createbb:copper_zinc_catalyst>], 250);
//    [<fluid:minecraft:water> * 30], 250);
//<recipetype:create:mixing>.addRecipe("steel_alloying", 
//    <constant:create:heat_condition:superheated>, 
//    [<fluid:createbigcannons:molten_steel> * 90], 
//    [<item:minecraft:coal>,], 
//    [<fluid:tconstruct:molten_iron> * 90], 250);
<recipetype:create:mixing>.addRecipe("steel_alloying", 
    <constant:create:heat_condition:superheated>, 
    [<item:ad_astra:steel_ingot>], 
    [<tag:items:minecraft:coals>,<item:minecraft:iron_ingot>], 
    null, 250);

<recipetype:create:mixing>.addRecipe("meat_soup_mixing", 
    <constant:create:heat_condition:none>, 
    [<fluid:tconstruct:meat_soup> * 250], 
    [<tag:items:forge:meat/raw> * 5], 
    [<fluid:minecraft:water> * 200], 250);

<recipetype:create:mixing>.addRecipe("pixie_dust_mixing", 
    <constant:create:heat_condition:none>, 
    [<item:iceandfire:pixie_dust> * 3], 
    [
        <tag:items:quark:shards> * 2,
        <item:minecraft:redstone> * 2,
        <item:createbb:white_meth> * 1,
        <item:createbb:blue_meth> * 1,
        <item:minecraft:glowstone_dust> * 2,
        <item:createaddition:diamond_grit> * 1
    ], 
    null, 
    200);

// MechanicalCrafterManager.addRecipe(name as string, output as IItemStack, ingredients as IIngredient[][])

<recipetype:create:mechanical_crafting>.addRecipe("mechanized", <item:ad_astra:launch_pad>, [
[<item:create:iron_sheet>, <item:create:iron_sheet>      ,<item:create:iron_sheet>      ,<item:create:iron_sheet>   ,<item:create:iron_sheet>   ,<item:create:iron_sheet>      ,<item:create:iron_sheet>       , <item:create:iron_sheet>      ,<item:create:iron_sheet>       ], 
[<item:create:iron_sheet>, <item:ad_astra:steel_plate>   ,<item:ad_astra:steel_plate>   ,<item:ad_astra:steel_plate>,<item:create:iron_sheet>   ,<item:ad_astra:steel_plate>   ,<item:ad_astra:steel_plate>    , <item:ad_astra:steel_plate>   ,<item:create:iron_sheet>    ], 
[<item:create:iron_sheet>, <item:ad_astra:steel_plate>   ,<item:ad_astra:steel_plate>   ,<item:ad_astra:steel_plate>,<item:create:iron_sheet>   ,<item:ad_astra:steel_plate>   ,<item:ad_astra:steel_plate>    , <item:ad_astra:steel_plate>   ,<item:create:iron_sheet>    ], 
[<item:create:iron_sheet>, <item:ad_astra:steel_plate>   ,<item:ad_astra:steel_plate>   , <item:create:iron_sheet>  ,<item:create:iron_sheet>   ,<item:create:iron_sheet>      ,<item:ad_astra:steel_plate>    , <item:ad_astra:steel_plate>   ,<item:create:iron_sheet>    ], 
[<item:create:iron_sheet>,    <item:create:iron_sheet>   ,<item:create:iron_sheet>      , <item:create:iron_sheet>  ,<item:ad_astra:steel_plate>,<item:create:iron_sheet>      ,<item:create:iron_sheet>       , <item:create:iron_sheet>      ,<item:create:iron_sheet>       ], 
[<item:create:iron_sheet>, <item:ad_astra:steel_plate>   ,<item:ad_astra:steel_plate>   , <item:create:iron_sheet>  ,<item:create:iron_sheet>   ,<item:create:iron_sheet>      ,<item:ad_astra:steel_plate>    , <item:ad_astra:steel_plate>   ,<item:create:iron_sheet>     ],
[<item:create:iron_sheet>, <item:ad_astra:steel_plate>   ,<item:ad_astra:steel_plate>   ,<item:ad_astra:steel_plate>,<item:create:iron_sheet>   ,<item:ad_astra:steel_plate>   ,<item:ad_astra:steel_plate>    , <item:ad_astra:steel_plate>   ,<item:create:iron_sheet>     ], 
[<item:create:iron_sheet>, <item:ad_astra:steel_plate>   ,<item:ad_astra:steel_plate>   ,<item:ad_astra:steel_plate>,<item:create:iron_sheet>   ,<item:ad_astra:steel_plate>   ,<item:ad_astra:steel_plate>    , <item:ad_astra:steel_plate>   ,<item:create:iron_sheet>     ], 
[<item:create:iron_sheet>, <item:create:iron_sheet>      ,<item:create:iron_sheet>      ,<item:create:iron_sheet>   ,<item:create:iron_sheet>   ,<item:create:iron_sheet>      ,<item:create:iron_sheet>       , <item:create:iron_sheet>      ,<item:create:iron_sheet>        ]
]);

//<recipetype:create:mechanical_crafting>.addRecipe("nether_engine_mk1", <item:ad_astra:steel_engine>.withTag({display: {Name: "{\"text\":\"Nether Engine\",\"italic\":false,\"color\":\"red\"}"},}), [
//[<item:minecraft:air>           ,<item:minecraft:air>           ,<item:ad_astra:steel_block>    ,<item:ad_astra:steel_block>               ,<item:ad_astra:steel_block>                     ,<item:minecraft:air>,<item:minecraft:air>],
//[<item:minecraft:air>           ,<tag:items:forge:ingots/steel>    ,<item:ad_astra:steel_block>    ,<item:minecraft:nether_star>              ,<item:ad_astra:steel_block>              ,<tag:items:forge:ingots/steel>,<item:minecraft:air>],
//[<tag:items:forge:ingots/steel>    ,<item:minecraft:air>           ,<item:ad_astra:steel_block>    ,<tag:items:forge:glass/tinted>               ,<item:ad_astra:steel_block>           ,<item:minecraft:air>,<tag:items:forge:ingots/steel>],
//[<item:minecraft:air>           ,<tag:items:forge:ingots/steel>    ,<item:ad_astra:steel_plate>    ,<tag:items:forge:glass/tinted>               ,<item:ad_astra:steel_plate>           ,<tag:items:forge:ingots/steel>,<item:minecraft:air>],
//[<item:minecraft:air>           ,<item:minecraft:air>           ,<item:ad_astra:steel_plate>    ,<tag:items:forge:glass/tinted>               ,<item:ad_astra:steel_plate>           ,<item:minecraft:air>,<item:minecraft:air>],
//[<item:minecraft:air>           ,<item:ad_astra:steel_plate>    ,<item:ad_astra:steel_plate>    ,<tag:items:forge:glass/tinted>               ,<item:ad_astra:steel_plate>           ,<item:ad_astra:steel_plate>,<item:minecraft:air>],
//[<item:ad_astra:steel_plate>,<item:ad_astra:steel_plate>    ,<item:ad_astra:steel_plate>    ,<tag:items:forge:glass/tinted>               ,<item:ad_astra:steel_plate>               ,<item:ad_astra:steel_plate>,<item:ad_astra:steel_plate>]
//]);


