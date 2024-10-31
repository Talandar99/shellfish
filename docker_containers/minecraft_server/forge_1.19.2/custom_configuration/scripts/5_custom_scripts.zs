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
//remove string property from one sinew and add to another
//<tagmanager:items>.removeId(<tag:items:forge:string>, <resource:butchercraft:sinew>);
//<tagmanager:items>.removeId(<tag:items:railways:internal/string>, <resource:butchercraft:sinew>);
//adding wax tag to animal_fat and fat
<tagmanager:items>.removeId(<tag:items:map_atlases:sticky_crafting_items>, <resource:butchercraft:fat>);
<tagmanager:items>.removeId(<tag:items:forge:slimeballs>, <resource:butchercraft:fat>);
<tagmanager:items>.addId(<tag:items:immersive_weathering:wax>, <resource:butchercraft:fat>);
<tagmanager:items>.addId(<tag:items:immersive_weathering:wax>, <resource:delightful:animal_fat>);
//adding forge ash tag
<tagmanager:items>.addId(<tag:items:forge:ash>, <resource:immersive_weathering:ash_layer_block>);
//fixing logs
<tagmanager:items>.addId(<tag:items:minecraft:logs>, <resource:extradelight:cinnamon_log>);
<tagmanager:items>.addId(<tag:items:minecraft:logs>, <resource:extradelight:stripped_cinnamon_log>);
<tagmanager:items>.addId(<tag:items:minecraft:logs>, <resource:iceandfire:dreadwood_log>);
<tagmanager:items>.addId(<tag:items:minecraft:logs>, <resource:immersive_weathering:charred_log>);
//adding all feathers as feathers
<tagmanager:items>.addId(<tag:items:forge:feathers>, <resource:alexsmobs:roadrunner_feather>);
<tagmanager:items>.addId(<tag:items:forge:feathers>, <resource:iceandfire:amphithere_feather>);
<tagmanager:items>.addId(<tag:items:forge:feathers>, <resource:alexsmobs:emu_feather>);
// using gelatin as slimeball
<tagmanager:items>.addId(<tag:items:forge:slimeballs>, <resource:butchercraft:gelatin>);
// adding items to curio slots
<tagmanager:items>.addId(<tag:items:curios:body>, <resource:minecraft:bundle>);
<tagmanager:items>.addId(<tag:items:curios:body>, <resource:supplementaries:sack>);
<tagmanager:items>.addId(<tag:items:curios:body>, <resource:biomancy:storage_sac>);
// shulkerbox
<tagmanager:items>.addId(<tag:items:curios:body>, <resource:minecraft:shulker_box>);
<tagmanager:items>.addId(<tag:items:curios:body>, <resource:minecraft:white_shulker_box>);
<tagmanager:items>.addId(<tag:items:curios:body>, <resource:minecraft:orange_shulker_box>);
<tagmanager:items>.addId(<tag:items:curios:body>, <resource:minecraft:magenta_shulker_box>);
<tagmanager:items>.addId(<tag:items:curios:body>, <resource:minecraft:light_blue_shulker_box>);
<tagmanager:items>.addId(<tag:items:curios:body>, <resource:minecraft:yellow_shulker_box>);
<tagmanager:items>.addId(<tag:items:curios:body>, <resource:minecraft:lime_shulker_box>);
<tagmanager:items>.addId(<tag:items:curios:body>, <resource:minecraft:pink_shulker_box>);
<tagmanager:items>.addId(<tag:items:curios:body>, <resource:minecraft:gray_shulker_box>);
<tagmanager:items>.addId(<tag:items:curios:body>, <resource:minecraft:light_gray_shulker_box>);
<tagmanager:items>.addId(<tag:items:curios:body>, <resource:minecraft:cyan_shulker_box>);
<tagmanager:items>.addId(<tag:items:curios:body>, <resource:minecraft:purple_shulker_box>);
<tagmanager:items>.addId(<tag:items:curios:body>, <resource:minecraft:blue_shulker_box>);
<tagmanager:items>.addId(<tag:items:curios:body>, <resource:minecraft:brown_shulker_box>);
<tagmanager:items>.addId(<tag:items:curios:body>, <resource:minecraft:green_shulker_box>);
<tagmanager:items>.addId(<tag:items:curios:body>, <resource:minecraft:red_shulker_box>);
<tagmanager:items>.addId(<tag:items:curios:body>, <resource:minecraft:black_shulker_box>);
// blood
<tagmanager:fluids>.addId(<tag:fluids:tconstruct:meat_soup>, <resource:butchercraft:blood_fluid>);
// seasons tags
//---------------------------------------
//spring_crops
//<tag:items:sereneseasons:spring_crops>
//<tag:blocks:sereneseasons:spring_crops>
//---------------------------------------
//summer_crops
//<tag:items:sereneseasons:summer_crops>
//<tag:blocks:sereneseasons:summer_crops>
//---------------------------------------
//autumn_crops
//<tag:items:sereneseasons:autumn_crops>
//<tag:blocks:sereneseasons:autumn_crops>
//---------------------------------------
//winter_crops
//<tag:items:sereneseasons:winter_crops>
//<tag:blocks:sereneseasons:winter_crops>

//corn extradelight
<tagmanager:items>.addId(<tag:items:sereneseasons:summer_crops>, <resource:extradelight:corn_seeds>);
<tagmanager:blocks>.addId(<tag:blocks:sereneseasons:summer_crops>, <resource:extradelight:corn_top>);
<tagmanager:blocks>.addId(<tag:blocks:sereneseasons:summer_crops>, <resource:extradelight:corn_bottom>);
<tagmanager:items>.addId(<tag:items:sereneseasons:autumn_crops>, <resource:extradelight:corn_seeds>);
<tagmanager:blocks>.addId(<tag:blocks:sereneseasons:autumn_crops>, <resource:extradelight:corn_top>);
<tagmanager:blocks>.addId(<tag:blocks:sereneseasons:autumn_crops>, <resource:extradelight:corn_bottom>);
//corn culturaldelight
<tagmanager:items>.addId(<tag:items:sereneseasons:summer_crops>, <resource:culturaldelights:corn_kernels>);
<tagmanager:blocks>.addId(<tag:blocks:sereneseasons:summer_crops>, <resource:culturaldelights:corn_upper>);
<tagmanager:blocks>.addId(<tag:blocks:sereneseasons:summer_crops>, <resource:culturaldelights:corn>);
<tagmanager:items>.addId(<tag:items:sereneseasons:autumn_crops>, <resource:culturaldelights:corn_kernels>);
<tagmanager:blocks>.addId(<tag:blocks:sereneseasons:autumn_crops>, <resource:culturaldelights:corn_upper>);
<tagmanager:blocks>.addId(<tag:blocks:sereneseasons:autumn_crops>, <resource:culturaldelights:corn>);
//eggplant 
<tagmanager:items>.addId(<tag:items:sereneseasons:summer_crops>, <resource:culturaldelights:eggplant_seeds>);
<tagmanager:blocks>.addId(<tag:blocks:sereneseasons:summer_crops>, <resource:culturaldelights:eggplants>);
<tagmanager:items>.addId(<tag:items:sereneseasons:autumn_crops>, <resource:culturaldelights:eggplant_seeds>);
<tagmanager:blocks>.addId(<tag:blocks:sereneseasons:autumn_crops>, <resource:culturaldelights:eggplants>);
//grapes
<tagmanager:items>.addId(<tag:items:sereneseasons:spring_crops>, <resource:italian_delight:grape_seeds>);
<tagmanager:items>.addId(<tag:items:sereneseasons:summer_crops>, <resource:italian_delight:grape_seeds>);
<tagmanager:items>.addId(<tag:items:sereneseasons:autumn_crops>, <resource:italian_delight:grape_seeds>);
<tagmanager:items>.addId(<tag:items:sereneseasons:winter_crops>, <resource:italian_delight:grape_seeds>);
//avocado
<tagmanager:items>.addId(<tag:items:sereneseasons:summer_crops>, <resource:culturaldelights:avocado_pit>);
<tagmanager:blocks>.addId(<tag:blocks:sereneseasons:summer_crops>, <resource:culturaldelights:avocado_pit>);
<tagmanager:blocks>.addId(<tag:blocks:sereneseasons:summer_crops>, <resource:culturaldelights:avocado_sapling>);
//cucumber
<tagmanager:items>.addId(<tag:items:sereneseasons:summer_crops>, <resource:culturaldelights:cucumber_seeds>);
<tagmanager:blocks>.addId(<tag:blocks:sereneseasons:summer_crops>, <resource:culturaldelights:cucumbers>);
<tagmanager:items>.addId(<tag:items:sereneseasons:autumn_crops>, <resource:culturaldelights:cucumber_seeds>);
<tagmanager:blocks>.addId(<tag:blocks:sereneseasons:autumn_crops>, <resource:culturaldelights:cucumbers>);
// ephedra
<tagmanager:items>.addId(<tag:items:sereneseasons:spring_crops>, <resource:createbb:ephedra_seeds>);
<tagmanager:blocks>.addId(<tag:blocks:sereneseasons:spring_crops>, <resource:createbb:ephedra_crop_block>);
<tagmanager:items>.addId(<tag:items:sereneseasons:autumn_crops>, <resource:createbb:ephedra_seeds>);
<tagmanager:blocks>.addId(<tag:blocks:sereneseasons:autumn_crops>, <resource:createbb:ephedra_crop_block>);
