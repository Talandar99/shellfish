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

