<div class="row">
	<form role="form" class="group" data-groupname="{group.displayName}">
		<div class="col-md-9">
			<div class="group-settings-form">
				<fieldset>
					<label for="change-group-name">[[admin/manage/groups:edit.name]]</label>
					<input type="text" class="form-control" id="change-group-name" placeholder="Group Name" value="{group.displayName}" maxlength="{maximumGroupNameLength}" <!-- IF group.system -->readonly<!-- ENDIF group.system -->/><br />
				</fieldset>

				<fieldset>
					<label for="change-group-desc">[[admin/manage/groups:edit.description]]</label>
					<input type="text" class="form-control" id="change-group-desc" placeholder="A short description about your group" value="{group.description}" maxlength="255" /><br />
				</fieldset>

				<fieldset>
					<label for="change-group-rules">[[admin/manage/groups:edit.rules]]</label>
					<textarea class="form-control" id="change-group-rules" placeholder="Rules text" maxlength="255" rows="4" cols="50">{group.rules}</textarea><br />
				</fieldset>

				<fieldset>
					<label for="change-group-city">[[admin/manage/groups:edit.city]]</label>
					<input type="text" class="form-control" id="change-group-city" placeholder="A city name" value="{group.city}" maxlength="255" /><br />
				</fieldset>

				<fieldset>
					<label for="change-group-state">[[admin/manage/groups:edit.state]]</label>
					<input type="text" class="form-control" id="change-group-state" placeholder="State name" value="{group.state}" maxlength="255" /><br />
				</fieldset>

				<fieldset>
					<label for="change-group-country">[[admin/manage/groups:edit.country]]</label>
					<input type="text" class="form-control" id="change-group-country" placeholder="Country name" value="{group.country}" maxlength="255" /><br />
				</fieldset>

				<fieldset>
					<label for="change-group-coverUrl">[[admin/manage/groups:edit.coverUrl]]</label>
					<input type="text" class="form-control" id="change-group-coverUrl" placeholder="Cover Url" value="{group.coverUrl}" maxlength="255" /><br />
				</fieldset>

				<fieldset>
					<label for="change-group-cid">[[admin/manage/groups:edit.cid]]</label>
					<input type="text" class="form-control" id="change-group-cid" placeholder="Category Id" value="{group.cid}" maxlength="10" /><br />
				</fieldset>

				<fieldset>
					<label for="change-group-latitude">[[admin/manage/groups:edit.latitude]]</label>
					<input type="text" class="form-control" id="change-group-latitude" placeholder="Latitude" value="{group.latitude}" maxlength="10" /><br />
				</fieldset>

				<fieldset>
					<label for="change-group-longitude">[[admin/manage/groups:edit.longitude]]</label>
					<input type="text" class="form-control" id="change-group-longitude" placeholder="Longitude" value="{group.longitude}" maxlength="10" /><br />
				</fieldset>

				<div class="row">
					<div class="col-md-4">
						<fieldset>
							<label for="change-group-user-title">[[admin/manage/groups:edit.user-title]]</label>
							<span id="group-label-preview" class="label label-default" style="color:<!-- IF group.textColor -->{group.textColor}<!-- ELSE -->#ffffff<!-- ENDIF group.textColor -->; background:<!-- IF group.labelColor -->{group.labelColor}<!-- ELSE -->#000000<!-- ENDIF group.labelColor -->;"><i id="group-icon-preview" class="fa {group.icon} <!-- IF !group.icon -->hidden<!-- ENDIF -->"></i> <span id="group-label-preview-text">{group.userTitle}</span></span>
							<input type="text" class="form-control" id="change-group-user-title" placeholder="The title of users if they are a member of this group" value="{group.userTitle}" maxlength="{maximumGroupTitleLength}" /><br />
						</fieldset>
					</div>
					<div class="col-md-2">
						<fieldset>
							<label id="group-icon-label" for="change-group-icon">[[admin/manage/groups:edit.icon]]</label><br/>
							<i id="group-icon" class="fa fa-2x <!-- IF group.icon -->{group.icon}<!-- ENDIF group.icon -->" value="{group.icon}"></i><br />
						</fieldset>
					</div>
					<div class="col-md-3">
						<fieldset>
							<label for="change-group-label-color">[[admin/manage/groups:edit.label-color]]</label>

							<input id="change-group-label-color" placeholder="#0059b2" data-name="bgColor" value="{group.labelColor}" class="form-control" /><br />
						</fieldset>
					</div>
					<div class="col-md-3">
						<fieldset>
							<label for="change-group-text-color">[[admin/manage/groups:edit.text-color]]</label>
							<input id="change-group-text-color" placeholder="#ffffff" data-name="textColor" value="{group.textColor}" class="form-control" /><br />
						</fieldset>
					</div>
				</div>
				<fieldset>
					<div class="checkbox">
						<label>
							<input id="group-userTitleEnabled" name="userTitleEnabled" type="checkbox"<!-- IF group.userTitleEnabled --> checked<!-- ENDIF group.userTitleEnabled -->> <strong>[[admin/manage/groups:edit.show-badge]]</strong>
						</label>
					</div>
				</fieldset>

				<fieldset>
					<div class="checkbox">
						<label>
							<input id="group-private" name="private" type="checkbox"<!-- IF group.private --> checked<!-- ENDIF group.private -->>
							<strong>[[groups:details.private]]</strong>
							<p class="help-block">
								[[admin/manage/groups:edit.private-details]]
							</p>
							<!-- IF !allowPrivateGroups -->
							<p class="help-block">
								[[admin/manage/groups:edit.private-override]]
							</p>
							<!-- ENDIF !allowPrivateGroups -->
						</label>
					</div>
				</fieldset>

				<fieldset>
					<div class="checkbox">
						<label>
							<input id="group-disableJoinRequests" name="disableJoinRequests" type="checkbox"<!-- IF group.disableJoinRequests --> checked<!-- ENDIF group.disableJoinRequests -->>
							<strong>[[admin/manage/groups:edit.disable-join]]</strong>
						</label>
					</div>
				</fieldset>

				<fieldset>
					<div class="checkbox">
						<label>
							<input id="group-disableLeave" name="disableLeave" type="checkbox"{{{if group.disableLeave}}} checked{{{end}}}>
							<strong>[[admin/manage/groups:edit.disable-leave]]</strong>
						</label>
					</div>
				</fieldset>

				<fieldset>
					<div class="checkbox">
						<label>
							<input id="group-hidden" name="hidden" type="checkbox"<!-- IF group.hidden --> checked<!-- ENDIF group.hidden -->>
							<strong>[[admin/manage/groups:edit.hidden]]</strong>
							<p class="help-block">
								[[admin/manage/groups:edit.hidden-details]]
							</p>
						</label>
					</div>
				</fieldset>

				<fieldset>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title"><i class="fa fa-users"></i> [[admin/manage/groups:edit.members]]</h3>
						</div>
						<div class="panel-body">
							<!-- IMPORT admin/partials/groups/memberlist.tpl -->
						</div>
					</div>
				</fieldset>
			</div>
		</div>
		<div class="col-md-3">
			<select id="group-selector" class="form-control">
				<!-- BEGIN groupNames -->
				<option value="{groupNames.encodedName}" <!-- IF groupNames.selected -->selected<!-- ENDIF groupNames.selected -->>{groupNames.displayName}</option>
				<!-- END groupNames -->
			</select>
		</div>
	</form>
</div>

<button id="save" class="floating-button mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
    <i class="material-icons">save</i>
</button>

<div id="icons" style="display:none;">
	<div class="icon-container">
		<div class="row fa-icons">
			<i class="fa fa-doesnt-exist"></i>
			<!-- IMPORT partials/fontawesome.tpl -->
		</div>
	</div>
</div>
