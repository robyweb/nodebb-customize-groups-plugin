const nodebb = path => require.main.require(path);
exports.Groups = nodebb('./src/groups');
exports.database = nodebb('./src/database');