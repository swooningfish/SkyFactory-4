#priority -100

/*
	SkyFactory 4 postInit Script

	This script is the main runner for the pack. This file should ONLY be
	modified if you know what you are doing. Changing anything in here could cause
	potential script failures and game breaking issues.
*/
import mods.zenstages.ZenStager;

// TODO: FIND A HOME
scripts.crafttweaker.grassSeedDrop.init();

// ==================================
// Initialize Scripts
initItemsAndRecipesStaging();
initItemModifiers();
initRecipes();
initIntegration();
scripts.crafttweaker.prestige.init();

// ==================================
// Build the Stages
ZenStager.buildAll();

function initRecipes() {
	scripts.crafttweaker.recipes.removeAndHide.init();

	// Mod Specific Recipes
	scripts.crafttweaker.recipes.mods.animalcrops.init();
	scripts.crafttweaker.recipes.mods.bdsandm.init();
	scripts.crafttweaker.recipes.mods.clickMachine.init();
	scripts.crafttweaker.recipes.mods.cookingForBlockheads.init();
	scripts.crafttweaker.recipes.mods.darkutils.init();
	scripts.crafttweaker.recipes.mods.deepMobLearning.init();
	scripts.crafttweaker.recipes.mods.iChunUtil.init();
	scripts.crafttweaker.recipes.mods.industrialForegoing.init();
	scripts.crafttweaker.recipes.mods.inspirations.init();
	scripts.crafttweaker.recipes.mods.microblockcbe.init();
	scripts.crafttweaker.recipes.mods.minecraft.init();
	scripts.crafttweaker.recipes.mods.rftools.init();
	scripts.crafttweaker.recipes.mods.rustic.init();
	scripts.crafttweaker.recipes.mods.skyOrchards.init();
	scripts.crafttweaker.recipes.mods.sonarcore.init();
	scripts.crafttweaker.recipes.mods.statues.init();
	scripts.crafttweaker.recipes.mods.tconstruct.init();
	scripts.crafttweaker.recipes.mods.tinyProgressions.init();
	scripts.crafttweaker.recipes.mods.twilightForest.init();
}

function initItemsAndRecipesStaging() {
	// ==================================
	// Staging Items and Recipes
	scripts.crafttweaker.staging.itemsAndRecipes.modId.init();
	scripts.crafttweaker.staging.itemsAndRecipes.stages.init();

	// ==================================
	// Initialize Item Staging
	scripts.crafttweaker.staging.itemsAndRecipes.items.amberMulch.init();
	scripts.crafttweaker.staging.itemsAndRecipes.items.android.init();
	scripts.crafttweaker.staging.itemsAndRecipes.items.blackMulch.init();
	scripts.crafttweaker.staging.itemsAndRecipes.items.blueMulch.init();
	scripts.crafttweaker.staging.itemsAndRecipes.items.blueSlimeDirt.init();
	scripts.crafttweaker.staging.itemsAndRecipes.items.brownMulch.init();
	scripts.crafttweaker.staging.itemsAndRecipes.items.fertileSoil.init();
	scripts.crafttweaker.staging.itemsAndRecipes.items.megaTorch.init();
	scripts.crafttweaker.staging.itemsAndRecipes.items.mobGrindingUtils.init();
	scripts.crafttweaker.staging.itemsAndRecipes.items.nonPacifist.init();
	scripts.crafttweaker.staging.itemsAndRecipes.items.orangeSlimeDirt.init();
	scripts.crafttweaker.staging.itemsAndRecipes.items.prosperityTree.init();
	scripts.crafttweaker.staging.itemsAndRecipes.items.purpleSlimeDirt.init();
	scripts.crafttweaker.staging.itemsAndRecipes.items.redMulch.init();
	scripts.crafttweaker.staging.itemsAndRecipes.items.rubyMulch.init();
	scripts.crafttweaker.staging.itemsAndRecipes.items.smeltery.init();
	scripts.crafttweaker.staging.itemsAndRecipes.items.yellowMulch.init();

	// ==================================
	// Initialize Recipe Staging
}

function initIntegration() {
	scripts.crafttweaker.modIntegrations.inspirations.init();
	scripts.crafttweaker.modIntegrations.rustic.init();
	scripts.crafttweaker.modIntegrations.tinkers.init();
}

function initItemModifiers() {
	scripts.crafttweaker.itemModifiers.burnTime.init();
	scripts.crafttweaker.itemModifiers.tooltips.init();
}
