// opt in to features in the nightly release channel:
#![feature(proc_macro_hygiene, decl_macro)]

#[macro_use]
extern crate rocket;
#[macro_use]
extern crate rocket_contrib;
#[macro_use]
extern crate tera;
extern crate rand;

use rand::Rng;
use tera::Context;
use rocket_contrib::serve::StaticFiles;
use rocket_contrib::templates::Template;

mod recipe;
use recipe::*;

#[get("/")] // the route attribute
fn index() -> Template {
    let mut context = Context::new();
    context.insert("version", &"0.5.0");
    Template::render("index", &context)
}

#[post("/")]
fn generate_recipe() -> Template {
    let mut context = Context::new();
    context.insert("version", &"0.5.0");
    let mut rng = rand::thread_rng();
    let generated_recipe = Recipe {
        fat: FAT[rng.gen_range(0, FAT.len())],
        flour: FLOUR[rng.gen_range(0, FLOUR.len())],
        liquid: LIQUID[rng.gen_range(0, FLOUR.len())],
        optional: FRUITS[rng.gen_range(0, FRUITS.len())],
        spice: SPICE[rng.gen_range(0, SPICE.len())],
        sugar: SUGAR[rng.gen_range(0, SUGAR.len())],
    };

    context.insert("fat", &generated_recipe.fat);
    context.insert("flour", &generated_recipe.flour);
    context.insert("liquid", &generated_recipe.liquid);
    context.insert("optional", &generated_recipe.optional);
    context.insert("spice", &generated_recipe.spice);
    context.insert("sugar", &generated_recipe.sugar);

    Template::render("recipe", &context)
}

fn main() {
    rocket::ignite()
        .mount("/public", StaticFiles::from("src/public"))
        .mount("/recipe", routes![generate_recipe])
        .attach(Template::fairing())
        .mount("/", routes![index])
        .launch();
}
