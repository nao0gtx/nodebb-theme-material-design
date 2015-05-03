<div class="modal fade" id="change-picture-modal" tabindex="-1" role="dialog" aria-labelledby="[[user:change_picture]]" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h3 id="myModalLabel">[[user:change_picture]]</h3>
            </div>
            <div class="modal-body">
                <div id="gravatar-box">
						<img id="user-gravatar-picture" src="" class="user-picture">
						<span class="user-picture-label">[[user:gravatar]]</span>
						<i class='fa fa-check fa-2x'></i>
					</div>
					<br/>

					<!-- IF config.allowProfileImageUploads -->
					<div id="uploaded-box">
						<img id="user-uploaded-picture" src="" class="user-picture">
						<span class="user-picture-label">[[user:uploaded_picture]]</span>
						<i class='fa fa-check fa-2x'></i>
					</div>

					<a id="uploadPictureBtn" href="#">[[user:upload_new_picture]]</a> <br/>
					<!-- IF config.hasImageUploadPlugin -->
					<a id="uploadFromUrlBtn" href="#">[[user:upload_new_picture_from_url]]</a>
					<!-- ENDIF config.hasImageUploadPlugin -->
					<!-- ENDIF config.allowProfileImageUploads -->
            </div>
            <div class="modal-footer">
                <button class="btn btn-link btn-default" data-dismiss="modal" aria-hidden="true">[[global:close]]</button>
				<button id="savePictureChangesBtn" class="btn btn-link btn-primary">[[global:save_changes]]</button>
            </div>
        </div>
    </div>
</div>