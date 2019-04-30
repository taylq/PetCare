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
                    <option value = "1" > Tiêm phòng vaccin tổng hợp </option>
                      <option value = "2" > Tiêm phòng vaccin 5 b </option>
                      <option value = "3" > Tiêm phòng vaccin 7 b </option>
                      <option value = "4" > Cắt tỉa - Tạo kiểu </option>
                      <option value = "5" > Cắt tỉa - Tạo kiểu </option>
                      <option value = "6" > Tắm - mát xa </option>
                      <option value = "7" > Sấy khô toàn thân </option>
                      <option value = "8" > Chụp X </option>
                      <option value = "9" > Siêu âm </option>
                      <option value = "10" > Nhuộm lông </option>
                      <option value = "11" > Nhuộm lông </option>
                      <option value = "12" > Xét nghiệm </option>
                      <option value = "13" > Cấp cứu 24 / 7 </option>
                      <option value = "14" > Phẫu thuật </option>
                      <option value = "15" > Vệ sinh miệng </option>
                      <option value = "16" > Ở nội trú / ngày </option>
                      <option value = "17" > Mổ đẻ chó mèo </option>
                      <option value = "18" > Cắt tai cho chó mèo </option>
                      <option value = "19" > Cắt đuôi cho chó mèo </option>
                      <option value = "20" > Gel Virbac Megaderm giúp mượt da lông và giảm ngứa chó mèo </option>
                      <option value = "21" > Thuốc bột trị ho viêm phổi cho chó mèo Bio amcoli </option>
                      <option value = "22" > Kháng sinh phòng trị bệnh chó mèo Doxy - Sul - Trep </option>
                      <option value = "23" > Thuốc tiêm chó mèo bỏ ăn tiêu chảy - Bio Linco S 20 ml </option>
                      <option value = "24" > Thuốc trị tiêu chảy trên chó mèo Hanvet Vitamycin </option>
                      <option value = "25" > Thuốc trị ghẻ THIVAMIDIN </option>
                      <option value = "26" > Men phòng và trị tiêu chảy cho chó mèo Genyo - Clostop 20 g </option>
                      <option value = "27" > Thuốc bổ sung Vitamin B cho chó mèo Kissbaby </option>
                      <option value = "28" > Thuốc bổ sung vitamin và tăng đề kháng chó mèo Bio - Vit Plus </option>
                      <option value = "29" > Thuốc trị viêm mắt, ngứa mắt cho chó mèo Bio Gentadrop 10 ml </option>
                      <option value = "30" > Thức ăn bổ sung cho chó mèo tăng sức kháng bệnh BOGO 500 gam </option>
                      <option value = "31" > Thuốc bổ tiêm cho chó mèo thèm ăn tăng sức đề kháng - Bio Bcomplex C 20 ml </option>
                      <option value = "32" > Thuốc bột trị tiêu chảy ói mửa cho chó mèo Gentatylo </option>
                      <option value = "33" > Sữa Cho Chó Mèo Bio 100 g </option>
                      <option value = "34" > Thuốc tiêm cho chó mèo sốt bỏ ăn không rõ nguyên nhân - Florodxy 20 ml </option>
                      <option value = "35" > Thuốc Diệt Ve Bọ Chét Cho Chó Mèo An Toàn HOUSETOX </option>
                      <option value = "36" > Thuốc Xịt trị xà mâu ghẻ - Viêm da chó mèo - Ecotraz 250 </option>
                      <option value = "37" > Thuốc trị tiêu chảy, rối loạn tiêu hóa chó mèo </option>
                      <option value = "38" > Thuốc tiêm giảm ho long đờm cho chó mèo Bio Bromhexine 100 ml </option>
                      <option value = "39" > Dung dịch sát trùng, đặc trị ghẻ, lở trên chó mèo Asi - POVIDINE 10 ml </option>
                      <option value = "40" > Thuốc trị nấm ALKIN FUNGIKUR </option>
                      <option value = "41" > Thuốc dinh dưỡng cho chó mèo Bayer Catosal 10 % 100 ml </option>
                      <option value = "42" > Thuốc xổ giun sán cho chó mèo sanpet </option>
                      <option value = "43" > Thuốc Tẩy Giun Chó Mèo Biaverm </option>
                      <option value = "44" > Thuốc trị viêm phổi và ký sinh trùng đường máu cho chó mèo - Doxytab </option>
                      <option value = "45" > Thuốc tẩy giun sán chó mèo BIAVERM </option>
                      <option value = "46" > Thuốc tiêm trị tiêu chảy viêm phổi cho chó mèo - Bio Codexine 20 ml </option>
                      <option value = "47" > Thuốc xổ lãi cho chó mèo - Oliver Fenbensol gói 10 g </option>
                      <option value = "48" > Thuốc Nhỏ Trị Ve - Bọ Chét Cho Chó - Mèo </option>
                      <option value = "49" > Thuốc tiêm triệt sản chó mèo - Depo 3 ml </option>
                      <option value = "50" > Thuốc Bột Đặc Trị Ói Mửa, Tiêu Chảy Cho Chó Mèo Bio - Scour 5 g </option>
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
                <a class="btn btn-danger button-delete"
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
