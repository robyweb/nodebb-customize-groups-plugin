'use strict';

const {Groups, database: db} = require('./lib/nodebb');

module.exports.userChanges = async function (users) {
	const groupList = await Groups.getGroups('groups:visible:name', 0, 100).catch(console.error);
	for(let groupId=0; groupId < groupList.length; groupId++){
		for(let idx=0; idx < users.length;idx++) {
			if(!!users[idx].username) {
				const isOwnerBool = await Groups.ownership
					.isOwner(users[idx].uid, groupList[groupId].split(':')[0]).catch(console.error);
				if(isOwnerBool){
					users[idx].isOwner = users[idx].isOwner ?  users[idx].isOwner: {};
					users[idx].isOwner[groupList[groupId].split(':')[0]] = isOwnerBool;
				}
			};
		}
	}
	console.log(users);
	return users;
};

module.exports.groupUpdate = async function ({name, values}) {
	await db.setObject(`group-custom-fields:${name}`, {
		city: values.city,
		state: values.state,
		country: values.country,
		rules: values.rules,
		cid: values.cid,
		coverUrl: values.coverUrl,
		latitude: values.latitude,
		longitude: values.longitude,
	}).catch(console.error);
	delete values.city;
	delete values.state;
	delete values.country;
	delete values.rules;
	delete values.cid;
	delete values.coverUrl;
	delete values.latitude;
	delete values.longitude;
	return {values};
};

module.exports.groupGet = async function ({groups}) {
	if(groups[0]){
		for(let idx=0; idx< groups.length; idx++){
			const res = await db.getObject(`group-custom-fields:${groups[idx].name}`).catch(console.error);
			Object.assign(groups[idx], res);
		}
	}
	return {groups};
};

module.exports.groupCreate = async function ({group, data}) {
	await db.setObject(`group-custom-fields:${group.name}`, {city:'', state:'', country:'', rules:'', cid:'', coverUrl: '', latitude: 0, longitude: 0})
		.catch(console.error);
};

