
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
//<recipetype:create:splashing>.addRecipe("blazing_quartz_into_quartz", [<item:malum:natural_quartz>], <item:malum:blazing_quartz>, 200);

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

<recipetype:create:pressing>.addRecipe("titanium_plate_pressing", 
[<item:tinkers_reforged:titanium_plate>], 
<item:tinkers_reforged:titanium_ingot>
,200);

<recipetype:create:pressing>.addRecipe("hornium_plate_pressing", 
[<item:tinkers_reforged:hornium_plate>], 
<item:tinkers_reforged:hornium_ingot>
,200);

<recipetype:create:pressing>.addRecipe("kepu_plate_pressing", 
[<item:tinkers_reforged:kepu_plate>], 
<item:tinkers_reforged:kepu_ingot>
,200);

<recipetype:create:pressing>.addRecipe("lavium_plate_pressing", 
[<item:tinkers_reforged:lavium_plate>], 
<item:tinkers_reforged:lavium_ingot>
,200);

<recipetype:create:pressing>.addRecipe("mosite_plate_pressing", 
[<item:tinkers_reforged:mosite_plate>], 
<item:tinkers_reforged:mosite_ingot>
,200);

<recipetype:create:pressing>.addRecipe("qivium_plate_pressing", 
[<item:tinkers_reforged:qivium_plate>], 
<item:tinkers_reforged:qivium_ingot>
,200);

<recipetype:create:pressing>.addRecipe("tiberium_plate_pressing", 
[<item:tinkers_reforged:tiberium_plate>], 
<item:tinkers_reforged:tiberium_ingot>
,200);

<recipetype:create:pressing>.addRecipe("ferobolt_plate_pressing", 
[<item:tinkers_reforged:ferobolt_plate>], 
<item:tinkers_reforged:ferobolt_ingot>
,200);

<recipetype:create:pressing>.addRecipe("gallium_plate_pressing", 
[<item:tinkers_reforged:gallium_plate>], 
<item:tinkers_reforged:gallium_ingot>
,200);

<recipetype:create:pressing>.addRecipe("etryx_plate_pressing", 
[<item:tinkers_reforged:etryx_plate>], 
<item:tinkers_reforged:etryx_ingot>
,200);

<recipetype:create:pressing>.addRecipe("electric_copper_plate_pressing", 
[<item:tinkers_reforged:electric_copper_plate>], 
<item:tinkers_reforged:electric_copper_ingot>
,200);

<recipetype:create:pressing>.addRecipe("durasteel_plate_pressing", 
[<item:tinkers_reforged:durasteel_plate>], 
<item:tinkers_reforged:durasteel_ingot>
,200);

<recipetype:create:pressing>.addRecipe("duralumin_plate_pressing", 
[<item:tinkers_reforged:duralumin_plate>], 
<item:tinkers_reforged:duralumin_ingot>
,200);

<recipetype:create:pressing>.addRecipe("bomin_plate_pressing", 
[<item:tinkers_reforged:bomin_plate>], 
<item:tinkers_reforged:bomin_ingot>
,200);

<recipetype:create:pressing>.addRecipe("blazium_plate_pressing", 
[<item:tinkers_reforged:blazium_plate>], 
<item:tinkers_reforged:blazium_ingot>
,200);

<recipetype:create:pressing>.addRecipe("aluminium_brass_plate_pressing",
[<item:tinkers_reforged:aluminum_brass_plate>], 
<item:tinkers_reforged:aluminum_brass_ingot>
,200);

<recipetype:create:pressing>.addRecipe("aluminium_plate_pressing", 
[<item:tinkers_reforged:aluminum_plate>], 
<item:tinkers_reforged:aluminum_ingot>
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
<recipetype:create:mixing>.addRecipe("steel_alloying", 
    <constant:create:heat_condition:superheated>, 
    [<item:ad_astra:steel_ingot>], 
    [<item:minecraft:coal>,<item:minecraft:iron_ingot>], 
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

//------------------------------
//haunting
//------------------------------

// HauntingManager.addRecipe(name as string, outputs as Percentaged<IItemStack>[], input as IIngredient, duration as int)
<recipetype:create:haunting>.addRecipe("charcoal_into_coal", [<item:minecraft:coal>], <item:minecraft:charcoal>, 200);

//------------------------------
// SequencedAssembly
//------------------------------
<recipetype:create:sequenced_assembly>.registerRecipe("build_sequence", (rb) => {
 rb.transitionTo(<item:create_dd:incomplete_integrated_circuit>);
 rb.require(<item:create:golden_sheet>);
 rb.loops(6);
 rb.addOutput(<item:create_dd:integrated_circuit>, 1);
 rb.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb1) => rb1.require(<item:createaddition:copper_wire>));
 rb.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb1) => rb1.require(<item:createaddition:copper_wire>));
 rb.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb1) => rb1.require(<item:createaddition:gold_wire>));
 rb.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb1) => rb1.require(<item:createaddition:electrum_wire>));
 rb.addStep<mods.createtweaker.FillingRecipe>((rb1) => rb1.require(<fluid:create_dd:sap> * 25));
 rb.addStep<mods.createtweaker.PressingRecipe>((rb1) => rb1.duration(25));
 });
//------------------------------
// MechanicalCrafting
//------------------------------

// MechanicalCrafterManager.addRecipe(name as string, output as IItemStack, ingredients as IIngredient[][])

<recipetype:create:mechanical_crafting>.addRecipe("ad_astra_launchpad", <item:ad_astra:launch_pad>, [
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



<recipetype:create:mechanical_crafting>.addRecipe("nether_core", <item:ad_astra:engine_frame>.withTag({display: {Name: "{\"text\":\"Nether Core\",\"italic\":false,\"color\":\"gray\"}"}}), [
[<item:minecraft:air>,<item:minecraft:air>,<item:ad_astra:steel_plate>,<item:minecraft:air>,<item:minecraft:air>],
[<item:minecraft:air>,<item:ad_astra:steel_plate>,<item:tinkers_reforged:titanium_plate>,<item:ad_astra:steel_plate>,<item:minecraft:air>],
[<item:ad_astra:steel_plate>,<item:tinkers_reforged:titanium_plate>,<item:minecraft:nether_star>,<item:tinkers_reforged:titanium_plate>,<item:ad_astra:steel_plate>],
[<item:minecraft:air>,<item:ad_astra:steel_plate>,<item:tinkers_reforged:titanium_plate>,<item:ad_astra:steel_plate>,<item:minecraft:air>],
[<item:minecraft:air>,<item:minecraft:air>,<item:ad_astra:steel_plate>,<item:minecraft:air>,<item:minecraft:air>]
]);

<recipetype:create:mechanical_crafting>.addRecipe("nether_engine_mk1", <item:ad_astra:steel_engine>.withTag({display: {Name: "{\"text\":\"Nether Engine\",\"italic\":false,\"color\":\"red\"}"},}), [
[<item:minecraft:air>           ,<item:minecraft:air>           ,<item:ad_astra:steel_block>    ,<item:ad_astra:steel_block>               ,<item:ad_astra:steel_block>                     ,<item:minecraft:air>,<item:minecraft:air>],
[<item:minecraft:air>           ,<tag:items:forge:ingots/steel>    ,<item:ad_astra:steel_block>    ,<item:ad_astra:engine_frame>.withTag({display: {Name: "{\"text\":\"Nether Core\",\"italic\":false,\"color\":\"gray\"}"}})              ,<item:ad_astra:steel_block>              ,<tag:items:forge:ingots/steel>,<item:minecraft:air>],
[<tag:items:forge:ingots/steel>    ,<item:minecraft:air>           ,<item:ad_astra:steel_block>    ,<tag:items:forge:glass/tinted>               ,<item:ad_astra:steel_block>           ,<item:minecraft:air>,<tag:items:forge:ingots/steel>],
[<item:minecraft:air>           ,<tag:items:forge:ingots/steel>    ,<item:ad_astra:steel_plate>    ,<tag:items:forge:glass/tinted>               ,<item:ad_astra:steel_plate>           ,<tag:items:forge:ingots/steel>,<item:minecraft:air>],
[<item:minecraft:air>           ,<item:minecraft:air>           ,<item:ad_astra:steel_plate>    ,<tag:items:forge:glass/tinted>               ,<item:ad_astra:steel_plate>           ,<item:minecraft:air>,<item:minecraft:air>],
[<item:minecraft:air>           ,<item:ad_astra:steel_plate>    ,<item:ad_astra:steel_plate>    ,<tag:items:forge:glass/tinted>               ,<item:ad_astra:steel_plate>           ,<item:ad_astra:steel_plate>,<item:minecraft:air>],
[<item:ad_astra:steel_plate>,<item:ad_astra:steel_plate>    ,<item:ad_astra:steel_plate>    ,<tag:items:forge:glass/tinted>               ,<item:ad_astra:steel_plate>               ,<item:ad_astra:steel_plate>,<item:ad_astra:steel_plate>]
]);

<recipetype:create:mechanical_crafting>.addRecipe("nether_engine_mk2", <item:ad_astra:desh_engine>.withTag({display: {Name: "{\"text\":\"Nether Engine Mk.2\",\"italic\":false,\"color\":\"red\"}"},}), [
[<item:minecraft:air>           ,<item:minecraft:air>           ,<item:ad_astra:desh_block>    ,<item:ad_astra:desh_block>               ,<item:ad_astra:desh_block>                     ,<item:minecraft:air>,<item:minecraft:air>],
[<item:minecraft:air>           ,<tag:items:forge:ingots/steel>    ,<item:ad_astra:desh_block>    ,<item:ad_astra:engine_frame>.withTag({display: {Name: "{\"text\":\"Nether Core\",\"italic\":false,\"color\":\"gray\"}"}})              ,<item:ad_astra:desh_block>              ,<tag:items:forge:ingots/steel>,<item:minecraft:air>],
[<tag:items:forge:ingots/steel>    ,<item:minecraft:air>           ,<item:ad_astra:desh_block>    ,<tag:items:forge:glass/tinted>               ,<item:ad_astra:desh_block>           ,<item:minecraft:air>,<tag:items:forge:ingots/steel>],
[<item:minecraft:air>           ,<tag:items:forge:ingots/steel>    ,<item:ad_astra:steel_plate>    ,<tag:items:forge:glass/tinted>               ,<item:ad_astra:steel_plate>           ,<tag:items:forge:ingots/steel>,<item:minecraft:air>],
[<item:minecraft:air>           ,<item:minecraft:air>           ,<item:ad_astra:steel_plate>    ,<tag:items:forge:glass/tinted>               ,<item:ad_astra:steel_plate>           ,<item:minecraft:air>,<item:minecraft:air>],
[<item:minecraft:air>           ,<item:ad_astra:steel_plate>    ,<item:ad_astra:steel_plate>    ,<tag:items:forge:glass/tinted>               ,<item:ad_astra:steel_plate>           ,<item:ad_astra:steel_plate>,<item:minecraft:air>],
[<item:ad_astra:desh_plate>,<item:ad_astra:desh_plate>    ,<item:ad_astra:desh_plate>    ,<tag:items:forge:glass/tinted>               ,<item:ad_astra:desh_plate>               ,<item:ad_astra:desh_plate>,<item:ad_astra:desh_plate>]
]);

<recipetype:create:mechanical_crafting>.addRecipe("nether_engine_mk3", <item:ad_astra:ostrum_engine>.withTag({display: {Name: "{\"text\":\"Nether Engine Mk.3\",\"italic\":false,\"color\":\"red\"}"},}), [
[<item:minecraft:air>           ,<item:minecraft:air>           ,<item:ad_astra:ostrum_block>    ,<item:ad_astra:ostrum_block>               ,<item:ad_astra:ostrum_block>                     ,<item:minecraft:air>,<item:minecraft:air>],
[<item:minecraft:air>           ,<item:ad_astra:ostrum_block>    ,<item:ad_astra:ostrum_block>    ,<item:ad_astra:engine_frame>.withTag({display: {Name: "{\"text\":\"Nether Core\",\"italic\":false,\"color\":\"gray\"}"}})              ,<item:ad_astra:ostrum_block>              ,<item:ad_astra:ostrum_block>,<item:minecraft:air>],
[<tag:items:forge:ingots/steel>    ,<item:minecraft:air>           ,<item:ad_astra:ostrum_block>    ,<tag:items:forge:glass/tinted>               ,<item:ad_astra:ostrum_block>           ,<item:minecraft:air>,<tag:items:forge:ingots/steel>],
[<item:minecraft:air>           ,<tag:items:forge:ingots/steel>    ,<item:ad_astra:steel_plate>    ,<tag:items:forge:glass/tinted>               ,<item:ad_astra:steel_plate>           ,<tag:items:forge:ingots/steel>,<item:minecraft:air>],
[<item:minecraft:air>           ,<item:minecraft:air>           ,<item:ad_astra:steel_plate>    ,<tag:items:forge:glass/tinted>               ,<item:ad_astra:steel_plate>           ,<item:minecraft:air>,<item:minecraft:air>],
[<item:minecraft:air>           ,<item:ad_astra:steel_plate>    ,<item:ad_astra:steel_plate>    ,<tag:items:forge:glass/tinted>               ,<item:ad_astra:steel_plate>           ,<item:ad_astra:steel_plate>,<item:minecraft:air>],
[<item:ad_astra:ostrum_plate>,<item:ad_astra:ostrum_plate>    ,<item:ad_astra:ostrum_plate>    ,<tag:items:forge:glass/tinted>               ,<item:ad_astra:ostrum_plate>               ,<item:ad_astra:ostrum_plate>,<item:ad_astra:ostrum_plate>]
]);

<recipetype:create:mechanical_crafting>.addRecipe("nether_engine_mk4", <item:ad_astra:calorite_engine>.withTag({display: {Name: "{\"text\":\"Nether Engine Mk.4\",\"italic\":false,\"color\":\"red\"}"},}), [
[<item:minecraft:air>          ,<item:minecraft:air>          ,<item:minecraft:air>              ,<item:ad_astra:calorite_block>    ,<item:ad_astra:calorite_block>                                                                                             ,<item:ad_astra:calorite_block>               ,<item:minecraft:air>             ,<item:minecraft:air>           ,<item:minecraft:air>],
[<item:minecraft:air>          ,<item:minecraft:air>          ,<item:ad_astra:calorite_block>    ,<item:ad_astra:calorite_block>    ,<item:ad_astra:engine_frame>.withTag({display: {Name: "{\"text\":\"Nether Core\",\"italic\":false,\"color\":\"gray\"}"}})  ,<item:ad_astra:calorite_block>               ,<item:ad_astra:calorite_block>   ,<item:minecraft:air>           ,<item:minecraft:air>],
[<item:minecraft:air>          ,<tag:items:forge:ingots/steel>,<item:minecraft:air>              ,<item:ad_astra:calorite_block>    ,<tag:items:forge:glass/tinted>                                                                                             ,<item:ad_astra:calorite_block>               ,<item:minecraft:air>             ,<tag:items:forge:ingots/steel> ,<item:minecraft:air>],
[<item:minecraft:air>          ,<item:minecraft:air>          ,<tag:items:forge:ingots/steel>    ,<item:ad_astra:steel_plate>       ,<tag:items:forge:glass/tinted>                                                                                             ,<item:ad_astra:steel_plate>                  ,<tag:items:forge:ingots/steel>   ,<item:minecraft:air>           ,<item:minecraft:air>],
[<item:minecraft:air>          ,<item:minecraft:air>          ,<item:minecraft:air>              ,<item:ad_astra:steel_plate>       ,<tag:items:forge:glass/tinted>                                                                                             ,<item:ad_astra:steel_plate>                  ,<item:minecraft:air>             ,<item:minecraft:air>           ,<item:minecraft:air>],
[<item:minecraft:air>          ,<item:minecraft:air>          ,<item:ad_astra:steel_plate>       ,<item:ad_astra:steel_plate>       ,<tag:items:forge:glass/tinted>                                                                                             ,<item:ad_astra:steel_plate>                  ,<item:ad_astra:steel_plate>      ,<item:minecraft:air>           ,<item:minecraft:air>],
[<item:minecraft:air>          ,<item:ad_astra:calorite_plate>,<item:ad_astra:calorite_plate>    ,<item:ad_astra:calorite_plate>    ,<tag:items:forge:glass/tinted>                                                                                             ,<item:ad_astra:calorite_plate>               ,<item:ad_astra:calorite_plate>   ,<item:ad_astra:calorite_plate> ,<item:minecraft:air>],
[<item:ad_astra:calorite_plate>,<item:ad_astra:calorite_plate>,<item:ad_astra:calorite_plate>    ,<item:ad_astra:calorite_plate>    ,<tag:items:forge:glass/tinted>                                                                                             ,<item:ad_astra:calorite_plate>               ,<item:ad_astra:calorite_plate>   ,<item:ad_astra:calorite_plate> ,<item:ad_astra:calorite_plate>]
]);

<recipetype:create:mechanical_crafting>.addRecipe("ad_astra_tier_1_rocket", <item:ad_astra:tier_1_rocket>, [
[<item:minecraft:air>,          <item:minecraft:air>,       <item:minecraft:air>,                               <item:minecraft:lightning_rod>,                     <item:minecraft:air>,                               <item:minecraft:air>,<item:minecraft:air>],
[<item:minecraft:air>,          <item:minecraft:air>,       <item:minecraft:air>,                               <item:ad_astra:steel_block>,                        <item:minecraft:air>,                               <item:minecraft:air>,<item:minecraft:air>],
[<item:minecraft:air>,          <item:minecraft:air>,       <item:minecraft:air>,                               <item:ad_astra:steel_block>,                        <item:minecraft:air>,                               <item:minecraft:air>,<item:minecraft:air>],
[<item:minecraft:air>,          <item:minecraft:air>,       <item:ad_astra:steel_block>,                        <item:ad_astra:steel_block>,                        <item:ad_astra:steel_block>,                               <item:minecraft:air>,<item:minecraft:air>],
[<item:minecraft:air>,          <item:minecraft:air>,       <item:ad_astra:steel_block>,                        <item:ad_astra:steel_block>,                        <item:ad_astra:steel_block>,                               <item:minecraft:air>,<item:minecraft:air>],
[<item:minecraft:air>,          <item:minecraft:air>,       <item:ad_astra:steel_block>,                        <tag:items:forge:glass/colorless>,                  <item:ad_astra:steel_block>,                               <item:minecraft:air>,<item:minecraft:air>],
[<item:minecraft:air>,          <item:minecraft:air>,       <item:ad_astra:steel_block>,                        <item:ad_astra:steel_block>,                        <item:ad_astra:steel_block>,                               <item:minecraft:air>,<item:minecraft:air>],
[<item:minecraft:air>,          <item:minecraft:air>,       <item:ad_astra:steel_block>,                        <item:ad_astra:steel_block>,                        <item:ad_astra:steel_block>,                               <item:minecraft:air>,<item:minecraft:air>],
[<item:minecraft:lightning_rod>,<item:ad_astra:steel_plate>,<item:railways:fuel_tank>,                          <item:railways:fuel_tank>,                          <item:railways:fuel_tank>,                          <item:ad_astra:steel_plate>,<item:minecraft:lightning_rod>],
[<item:ad_astra:steel_plate>,   <item:ad_astra:steel_plate>,<item:createdieselgenerators:large_diesel_engine>,  <item:createdieselgenerators:large_diesel_engine>,  <item:createdieselgenerators:large_diesel_engine>,  <item:ad_astra:steel_plate>,<item:ad_astra:steel_plate>],
[<item:ad_astra:steel_plate>,   <item:minecraft:air>,       <item:ad_astra:steel_block>,                        <item:ad_astra:steel_engine>.withTag({display: {Name: "{\"text\":\"Nether Engine\",\"italic\":false,\"color\":\"red\"}"},}),                               <item:ad_astra:steel_block>,                               <item:minecraft:air>,<item:ad_astra:steel_plate>]
]);

