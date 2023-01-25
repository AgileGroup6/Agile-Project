#!/usr/bin/env python


# clear database
print("USE lgl;")
deleteTables = ['Ingredient_Grp', 'Recipe_Measurement',
                'Measurement', 'Recipe', 'Grp', 'Ingredient', 'Category']
[print("DELETE FROM %s;" % (t)) for t in deleteTables]

tagSet = set()

allIngredients = []

categorySet = set()
groupSet = set()
with open('./ingredients', 'r') as f:
    category = ""
    tags = set()
    for line in f:
        # empty line
        if not line.strip():
            continue
        # category
        if line[0] == '#':
            category = line[1:].strip()
            categorySet.add(category)
            continue
        # item
        if line[0] == '\t':
            item = line.strip()

            isVegan = True
            if item.startswith("NON-VEGAN"):
                item = item[len("NON-VEGAN"):]
                isVegan = False
            group = None
            if '~' in item:
                splitted = item.split(" ~ ")
                item = splitted[0]
                group = splitted[1]
                groupSet.add(group)

            allIngredients.append({
                'isVegan': isVegan,
                'name': item,
                'category': category,
                'group': group,
                'tags': tags
            })
            continue

        tags = set([x for x in line.strip().split(', ') if x != "None"])
        tagSet.update(tags)


# category like "my dried fruits"
categoryMap = {}
index = 0
print("INSERT INTO Category(category_id, category_name) VALUES ")
for category in categorySet:
    index += 1
    trail = ","
    if index == len(categorySet):
        trail = ";"
    categoryMap[category] = index
    print("(%d, '%s')%s" % (index, category, trail))


# group like RICE, APPLE, POTATO
groupMap = {}
index = 0
print("INSERT INTO Grp(grp_id, grp_name) VALUES ")
for group in groupSet:
    index += 1
    trail = ","
    if index == len(groupSet):
        trail = ";"
    groupMap[group] = index
    print("(%d, '%s')%s" % (index, group, trail))


# ingredients
ingredientMap = {}
print("""INSERT INTO Ingredient(ingredient_id, category_id, ingredient_name, store_has,
vegan, fillable, weightable, chilled, organic, jarred, canned) VALUES """)
index = 0
for ingredient in allIngredients:
    trail = ","
    index += 1
    ingredientMap[ingredient['name']] = index
    if len(allIngredients) == index:
        trail = ";"
    vegan = ingredient['isVegan']
    fillable = 'Fillable' in ingredient['tags']
    weightable = 'Weightable' in ingredient['tags']
    chilled = 'Chilled' in ingredient['tags']
    organic = 'Organic' in ingredient['tags']
    jarred = 'Jarred' in ingredient['tags']
    canned = 'Canned' in ingredient['tags']
    store_has = True
    group = ingredient['group']
    print("(%d, %d, '%s', %s, %s, %s, %s, %s, %s, %s, %s)%s" %
          (index, categoryMap[ingredient['category']], ingredient['name'],
           store_has, vegan, fillable, weightable, chilled, organic, jarred, canned, trail))


# linking table for ingredients to group
print("INSERT INTO Ingredient_Grp(ingredient_id, grp_id) VALUES")
index = 0
values = []
for ingredient in allIngredients:
    if not ingredient['group']:
        continue
    group = ingredient['group']
    name = ingredient['name']
    ingredient_id = ingredientMap[name]
    group_id = groupMap[group]
    values.append("(%d, %d)" % (ingredient_id, group_id))
print("%s;" % (",\n".join(values)))


# recipes
recipes = []
nonStockMap = {}

nonStockIngredients = set()
with open("recipes", "r") as f:
    title = ""
    serves = 0
    contents = ""
    ingredients = []

    for line in f:
        if line[0] == "#":
            if title != "":
                recipes.append({
                    "title": title,
                    "ingredients": ingredients,
                    "contents": contents,
                    "serves": serves
                })
                ingredients = []
                contents = ""
            title = line[1:].strip()
            if ', ' in title:
                splitted = title.split(', ')
                title = splitted[0]
                serves = int(splitted[1])
            continue

        if line[0] == "\t":
            splitted = line.strip().split(", ")
            amount = splitted[0]
            item = splitted[1]
            if item.endswith(' - NON'):
                item = item[:-len(' - NON')]
                nonStockIngredients.add(item)
            ingredients.append([item, amount])
            continue

        if line.strip():
            contents += line.strip() + "\n"


# add non stock items to db
print("INSERT INTO Ingredient(ingredient_id, ingredient_name, store_has) VALUES")
index = len(allIngredients)
for ingredient in nonStockIngredients:
    trail = ","
    index += 1
    if index-len(allIngredients) == len(nonStockIngredients):
        trail = ";"
    print("(%s, '%s', False)%s" % (index, ingredient, trail))
    ingredientMap[ingredient] = index


# err
# add recipe to db
recipeMap = {}

# Recipe_id: ['name','amount']
recIngMap = {}

print("INSERT INTO Recipe (recipe_id, recipe_name, serves, instructions) VALUES")
index = 0
measurement_index = 0
for recipe in recipes:
    trail = ","
    index += 1
    if index == len(recipes):
        trail = ";"

    recIngMap[index] = recipe['ingredients']

    print("(%d, '%s', %d, '%s')%s" %
          (index, recipe['title'], recipe['serves'], recipe['contents'], trail))
# recipe has measurement, which is joining table for measurement

# err
recipieToMeasurements = []
measurements = []
index = 0
for recipe_id in recIngMap:
    for [name, amount] in recIngMap[recipe_id]:
        index += 1
        measurements.append("(%d, %d, '%s')" %
                            (index, ingredientMap[name], amount))
        recipieToMeasurements.append("(%d, %d)" % (recipe_id, index))

print("INSERT INTO Measurement(measurement_id, ingredient_id, amount) VALUES")
print("%s;" % (",\n".join(measurements)))
print("INSERT INTO Recipe_Measurement(recipe_id, measurement_id) VALUES")
print("%s;" % (",\n".join(recipieToMeasurements)))
