/*
    SkyFactory 4 Minecraft Recipe Script

    This script handles the recipes for Minecraft.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<minecraft:dirt>: [
		[
			[<sky_orchards:resin_dirt>, <sky_orchards:acorn_dirt>, <sky_orchards:resin_dirt>],
			[<sky_orchards:acorn_dirt>, <sky_orchards:resin_dirt>, <sky_orchards:acorn_dirt>],
			[<sky_orchards:resin_dirt>, <sky_orchards:acorn_dirt>, <sky_orchards:resin_dirt>]
		]
	],
	<minecraft:cobblestone>: [
		[
			[<sky_orchards:resin_petrified>, <sky_orchards:acorn_petrified>, <sky_orchards:resin_petrified>],
			[<sky_orchards:acorn_petrified>, <sky_orchards:resin_petrified>, <sky_orchards:acorn_petrified>],
			[<sky_orchards:resin_petrified>, <sky_orchards:acorn_petrified>, <sky_orchards:resin_petrified>]
		]
	],
	<minecraft:clay>: [
		[
			[<sky_orchards:resin_clay>, <sky_orchards:acorn_clay>, <sky_orchards:resin_clay>],
			[<sky_orchards:acorn_clay>, <sky_orchards:resin_clay>, <sky_orchards:acorn_clay>],
			[<sky_orchards:resin_clay>, <sky_orchards:acorn_clay>, <sky_orchards:resin_clay>]
		]
	],
	<minecraft:sand>: [
		[
			[<sky_orchards:resin_sand>, <sky_orchards:acorn_sand>, <sky_orchards:resin_sand>],
			[<sky_orchards:acorn_sand>, <sky_orchards:resin_sand>, <sky_orchards:acorn_sand>],
			[<sky_orchards:resin_sand>, <sky_orchards:acorn_sand>, <sky_orchards:resin_sand>]
		]
	],
	<minecraft:gravel>: [
		[
			[<sky_orchards:resin_gravel>, <sky_orchards:acorn_gravel>, <sky_orchards:resin_gravel>],
			[<sky_orchards:acorn_gravel>, <sky_orchards:resin_gravel>, <sky_orchards:acorn_gravel>],
			[<sky_orchards:resin_gravel>, <sky_orchards:acorn_gravel>, <sky_orchards:resin_gravel>]
		]
	],
	<minecraft:bone_block>: [
		[
			[<sky_orchards:resin_bone>, <sky_orchards:acorn_bone>, <sky_orchards:resin_bone>],
			[<sky_orchards:acorn_bone>, <sky_orchards:resin_bone>, <sky_orchards:acorn_bone>],
			[<sky_orchards:resin_bone>, <sky_orchards:acorn_bone>, <sky_orchards:resin_bone>]
		]
	],
	<minecraft:coal>: [
		[
			[<sky_orchards:resin_coal>, <sky_orchards:acorn_coal>, <sky_orchards:resin_coal>],
			[<sky_orchards:acorn_coal>, <sky_orchards:resin_coal>, <sky_orchards:acorn_coal>],
			[<sky_orchards:resin_coal>, <sky_orchards:acorn_coal>, <sky_orchards:resin_coal>]
		]
	],
	<minecraft:obsidian>: [
		[
			[<sky_orchards:resin_obsidian>, <sky_orchards:acorn_obsidian>, <sky_orchards:resin_obsidian>],
			[<sky_orchards:acorn_obsidian>, <sky_orchards:resin_obsidian>, <sky_orchards:acorn_obsidian>],
			[<sky_orchards:resin_obsidian>, <sky_orchards:acorn_obsidian>, <sky_orchards:resin_obsidian>]
		]
	],
	<minecraft:diamond>: [
		[
			[<sky_orchards:acorn_diamond>, <sky_orchards:acorn_diamond>, <sky_orchards:acorn_diamond>],
			[<sky_orchards:acorn_diamond>, <sky_orchards:acorn_diamond>, <sky_orchards:acorn_diamond>],
			[<sky_orchards:acorn_diamond>, <sky_orchards:acorn_diamond>, <sky_orchards:acorn_diamond>]
		]
	],
	<minecraft:emerald>: [
		[
			[<sky_orchards:acorn_emerald>, <sky_orchards:acorn_emerald>, <sky_orchards:acorn_emerald>],
			[<sky_orchards:acorn_emerald>, <sky_orchards:acorn_emerald>, <sky_orchards:acorn_emerald>],
			[<sky_orchards:acorn_emerald>, <sky_orchards:acorn_emerald>, <sky_orchards:acorn_emerald>]
		]
	],
	<minecraft:paper>: [
		[
			[<minecraft:string>, <minecraft:string>],
			[<sky_orchards:resin_cottonwood>, <sky_orchards:resin_cottonwood>]
		]
	],
	<minecraft:torch>: [
		[
			[<sky_orchards:acorn_coal>],
			[<ore:stickWood>]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = scripts.crafttweaker.recipes.mods.minecraft.namedShapelessRecipes;

	var removeRecipes as IItemStack[] = scripts.crafttweaker.recipes.mods.minecraft.removeRecipes;

	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.processNamed(namedShapedRecipes, false);
    recipeUtil.processNamed(namedMirroredRecipes, true);
    recipeUtil.processNamed(namedShapelessRecipes);

	recipeUtil.removeRecipes(removeRecipes);
}