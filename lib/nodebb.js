const nodebb = path => require.main.require(path);
exports.Groups = nodebb('./src/groups');
exports.Categories = nodebb("./src/categories");
exports.database = nodebb('./src/database');