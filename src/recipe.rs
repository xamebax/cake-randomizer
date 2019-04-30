pub struct Recipe {
    pub fat: &'static str,
    pub flour: &'static str,
    pub liquid: &'static str,
    pub optional: &'static str,
    pub spice: &'static str,
    pub sugar: &'static str,
}

pub static FAT: [&'static str; 6] = [
    "coconut cream",
    "coconut oil",
    "margarine",
    "olive oil",
    "rapeseed oil",
    "sunflower oil",
];

pub static FLOUR: [&'static str; 4] = [
    "gluten-free flour",
    "spelt flour",
    "white flour",
    "wholegrain flour",
];

pub static SUGAR: [&'static str; 8] = [
    "agave syrup",
    "black treacle",
    "brown sugar",
    "caster sugar",
    "golden syrup",
    "stevia",
    "vanilla sugar",
    "white sugar",
];

pub static LIQUID: [&'static str; 13] = [
    "almond milk",
    "apple juice, non-filtered",
    "barley milk",
    "cashew milk",
    "cold, strong coffee",
    "cold, strong earl grey tea",
    "hemp milk",
    "macadamia milk",
    "oat milk",
    "pear juice, non-filtered",
    "rice milk",
    "soy milk",
    "soy-rice milk",
    "spelt milk",
    "water",
];

pub static SPICE: [&'static str; 26] = [
    "anise seed",
    "basil",
    "black pepper",
    "cardamon",
    "cayenne pepper",
    "chilli",
    "chopped parsley",
    "cinnamon",
    "cloves",
    "coriander powder",
    "cumin",
    "curry powder",
    "curry powder",
    "dill",
    // "double espresso",
    "fresh coriander",
    "fresh ginger",
    "fresh mint",
    "garam masala",
    "marjoram leaves",
    "nutmeg",
    "orange peel",
    "powdered ginger",
    "rosemary",
    "thyme leaf",
    "vanilla extract",
];

pub static FRUITS: [&'static str; 20] = [
    "apricots",
    "avocado",
    "blueberries",
    "chopped apples",
    "chopped bananas",
    "chopped mango",
    "chopped nectarine",
    "chopped pears",
    "cooked pumpkin pulp",
    "cooked sweet potato pulp",
    "grated apples",
    "pitted cherries",
    "plums",
    "pomegranade seeds",
    "raspberries",
    "shredded beetroot",
    "shredded carrots",
    "shredded zucchini",
    "smashed bananas",
    "strawberries",
];

pub static NUTS: [&'static str; 13] = [
    "almond flakes",
    "almond powder",
    "chopped almonds",
    "chopped cashews",
    "chopped macadamia",
    "chopped peanuts",
    "chopped walnuts",
    "dates",
    "dried fruit mix",
    "pecans",
    "poppy seeds",
    "raisins",
    "walnut powder",
];

pub static SPRINKLES: [&'static str; 5] = [
    "cacao",
    "chopped chocolate",
    "lemon zest",
    "oats",
    "shredded coconut",
];
