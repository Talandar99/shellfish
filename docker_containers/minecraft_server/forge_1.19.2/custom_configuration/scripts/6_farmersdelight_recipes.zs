//CuttingBoard
import mods.farmersdelight.CuttingBoard;
// -----------------------------------------------------------
// C U T T I N G   B O A R D
// -----------------------------------------------------------
// flax_to_straw
<recipetype:farmersdelight:cutting>.addRecipe("flax_to_straw", <item:supplementaries:flax>, [<item:farmersdelight:straw>*2,<item:minecraft:string>], <tag:items:forge:tools/knives>, "minecraft:block.sweet_berry_bush.break");

//<recipetype:farmersdelight:cutting>.addRecipe("getting_seeds_from_overweight_cocoa_block_scythe", <item:overweight_farming:peeled_overweight_cocoa_block>, [<item:minecraft:cocoa_beans>*10], <tag:items:forge:tools/scythe>, "minecraft:block.sweet_berry_bush.break");
<recipetype:farmersdelight:cutting>.addRecipe("getting_seeds_from_overweight_cocoa_block_hoes", <item:overweight_farming:peeled_overweight_cocoa_block>, [<item:minecraft:cocoa_beans>*10], <tag:items:forge:tools/hoes>, "minecraft:block.sweet_berry_bush.break");
<recipetype:farmersdelight:cutting>.addRecipe("getting_seeds_from_overweight_nether_wart_block_hoes", <item:overweight_farming:overweight_nether_wart_block>, [<item:minecraft:nether_wart>*10], <tag:items:forge:tools/hoes>, "minecraft:block.sweet_berry_bush.break");

/*
Farmers Delight Cooking Pot
All parameters after the inputs are optional!
The CookingPotRecipeBookTab refers to a constant value.
*/
// CookingPot.addRecipe(
//name as string, 
//output as IItemStack, 
//inputs as IIngredient[], 
//cookingPotRecipeBookTab as CookingPotRecipeBookTab, 
//container as IItemStack, 
//experience as float, cookTime as int)

//solnik_soup
<recipetype:farmersdelight:cooking>.addRecipe("solnik_soup", 
    <item:minecraft:beetroot_soup>.withTag({display: {Name: "{\"text\":\"Solnik\",\"italic\":false}"},CustomModelData: 21370,})*3, 
    [<item:salt:salt>*2,<item:salt:raw_rock_salt>*1,<item:minecraft:snow_block>*3,<item:minecraft:snowball>*7], 
    <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, 
    <item:minecraft:bowl>, 
    100, 400);
