// opt in to features in the nightly release channel:
#![feature(proc_macro_hygiene, decl_macro)]

#[macro_use]
extern crate rocket;
#[macro_use]
extern crate rocket_contrib;
#[macro_use]
extern crate tera;

// use tera::{Tera, Context, Result};
use rocket_contrib::serve::StaticFiles;
use rocket_contrib::templates::Template;
use std::collections::HashMap;

#[get("/")] // the route attribute
fn index() -> Template {
    let mut context = HashMap::<String, String>::new();
    context.insert("version".to_string(), "0.5.0".to_string());
    Template::render("index", &context)
}

#[post("/")]
fn generate_recipe() -> Template {
    let mut context = HashMap::<String, String>::new();
    context.insert("version".to_string(), "0.5.0".to_string());
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
