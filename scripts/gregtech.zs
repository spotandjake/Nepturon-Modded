
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Material;
import scripts.common.makeShaped as makeShaped;

// Electric Blast Furnace
global circuit_assembler            as RecipeMap = RecipeMap.getByName("circuit_assembler");


### Solar Panels ###
recipes.removeByRecipeName("gregtech:solar_panel_lv");
recipes.addShaped("gregtech:solar_panel_lv", <gregtech:meta_item_1:333>, [[<gregtech:meta_item_1:371>, <gregtech:transparent_casing>, <gregtech:meta_item_1:371>], [<ore:circuitHv>, <gregtech:wire_hex:2517>, <ore:circuitHv>], [<gregtech:meta_plate_double:323>, null, <gregtech:meta_plate_double:323>]]);
recipes.removeByRecipeName("gregtech:solar_panel_mv");
recipes.addShaped("gregtech:solar_panel_mv", <gregtech:meta_item_1:333>, [[<gregtech:meta_item_1:371>, <gregtech:transparent_casing>, <gregtech:meta_item_1:371>], [<ore:circuitHv>, <gregtech:wire_hex:2517>, <ore:circuitHv>], [<gregtech:meta_plate_double:323>, null, <gregtech:meta_plate_double:323>]]);

// Vacuum Tube * 1
<recipemap:pressure_chamber_recipes>.findRecipe(16, [<metaitem:component.glass.tube>, <metaitem:vacuum_tube.components>, <metaitem:ringKovar>], null).remove();

recipes.remove(<appliedenergistics2:controller>);

circuit_assembler.recipeBuilder()
   .inputs(<metaitem:circuit.workstation> * 2, <appliedenergistics2:material:12> * 6, <appliedenergistics2:material:24> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 144])
   .outputs(<appliedenergistics2:controller>)
   .duration(40)
   .EUt(512)
   .cleanroom(CleanroomType.CLEANROOM)
   .buildAndRegister();

   