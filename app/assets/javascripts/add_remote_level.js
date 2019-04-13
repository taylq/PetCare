$(document).ready(function () {
  $('#create-level').click(function () {
    console.log(123);
    addLevel();
  });
  loadType();
});

function loadType() {
  let countLevelType = 1;
  $('.level-type').each(function () {
    $(this).html(`STT - ` + countLevelType);
    countLevelType++;
  });
}

function deleteLevel(id, idLevel) {
  $(`#delete-level-${id}`).click(function () {
    if (confirm("Xóa dịch vụ/thuốc này?")) {
      let parent = $(this).parents(`#div-level-${id}`);
      if (idLevel === "" || idLevel == undefined) {
        parent.remove();
        loadType();
      }
    }
  });
}

function addLevel() {
  let id = $('.div-level').length;
  if (id < 200) {
    $('#div-level-add').append(`
      <div id="div-level-${id + 1}" class="div-level">
        <div>

          <div class="row group-input">
              <div class="col-sm-5 col-level">
                <div class="form-group">
                  <label class="control-label label-level">
                    Loại dịch vụ/thuốc
                    <span class="required">*</span>
                  </label>
                <div class="col-sm-12">
                  <select name="medical_record[medical_records_services_attributes][${id}][service_id]" id="medical_record_medical_records_services_attributes_${id}_service_id" class="mdb-select md-form" searchable="Search here..">
                    <option value="1">Marlin Bergnaum</option>
                    <option value="2">Afton Nolan</option>
                    <option value="3">Pauletta Bruen</option>
                    <option value="4">Chanelle Welch</option>
                    <option value="5">Dwana Wisozk</option>
                    <option value="6">Joellen Boyle</option>
                    <option value="7">Michele Huels</option>
                    <option value="8">Latricia Bogan</option>
                    <option value="9">Corinne Parisian</option>
                    <option value="10">Columbus Rempel</option>
                    <option value="11">Lecia Hilpert</option>
                    <option value="12">Latoyia Stroman</option>
                    <option value="13">Pierre Barton</option>
                    <option value="14">Launa Stark</option>
                    <option value="15">William Leannon</option>
                    <option value="16">Nakita Champlin</option>
                    <option value="17">Janetta Hahn</option>
                    <option value="18">Delorse Kilback</option>
                    <option value="19">Dwayne Dare</option>
                    <option value="20">Angelic Kreiger</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="col-sm-5 col-level">
                <div class="form-group">
                  <label class="control-label label-level">
                    Số lượng
                    <span class="required">*</span>
                  </label>
                <div class="col-sm-12">
                  <input type="number" name="medical_record[medical_records_services_attributes][${id}][quantity]" class="form-control" required>
                </div>
              </div>
            </div>

            <div class="col-sm-2">
              <div class="">
                <a class="btn btn-success button-delete"
                  id="delete-level-${id + 1}"
                  data-remote="true" href="#" style="margin-bottom: -75px;">
                  <i class="fa fa-minus"></i>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <script>
    // Material Select Initialization
    $(document).ready(function () {
      $('#medical_record_medical_records_services_attributes_${id}_service_id').materialSelect();
    });
  </script>
      `);
    deleteLevel(id + 1, null);
  } else {
    alert("dddd");
  }
}
