<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="container-fluid mt-xl-50 mt-lg-30 mt-15 bg-white p-3">
	<div class="row">
		<div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
			<h4 class="mb-3">
				Hizmet Listesi
				<a href="javascript:void(0)" data-url="<?= base_url("services/new_form"); ?>" class="btn btn-sm btn-outline-primary rounded-0 float-right createServiceBtn"> <i class="fa fa-plus"></i> Hizmet Ekle</a>
			</h4>
		</div>
		<div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
			<form id="filter_form" onsubmit="return false">
				<div class="d-flex flex-wrap">
					<label for="search" class="flex-fill mx-1">
						<input class="form-control form-control-sm rounded-0" placeholder="Arama Yapmak İçin Metin Girin." type="text" onkeypress="return runScript(event,'serviceTable')" name="search">
					</label>
					<label for="clear_button" class="mx-1">
						<button class="btn btn-sm btn-outline-danger rounded-0 " onclick="clearFilter('filter_form','serviceTable')" id="clear_button" data-toggle="tooltip" data-placement="top" data-title="Filtreyi Temizle" data-original-title="" title=""><i class="fa fa-eraser"></i></button>
					</label>
					<label for="search_button" class="mx-1">
						<button class="btn btn-sm btn-outline-success rounded-0 " onclick="reloadTable('serviceTable')" id="search_button" data-toggle="tooltip" data-placement="top" data-title="Hizmet Ara"><i class="fa fa-search"></i></button>
					</label>
					<label for="delete_button" class="mx-1 toggleLabel d-none">
						<button class="btn btn-sm btn-outline-danger rounded-0 " data-url="<?= base_url("services/deleteBulk") ?>" id="delete_button" data-toggle="tooltip" data-placement="top" data-title="Seçili Hizmetleri Sil"><i class="fa fa-trash"></i></button>
					</label>
				</div>
			</form>
			<table class="table table-hover table-striped table-bordered content-container serviceTable">
				<thead>
					<th class="order"><i class="fa fa-reorder"></i></th>
					<th class="order"><i class="fa fa-reorder"></i></th>
					<th class="w50">#id</th>
					<th>Başlık</th>
					<th>Hizmet Kategorisi</th>
					<th>Durumu</th>
					<th>Güncelleme Tarihi</th>
					<th class="nosort">İşlem</th>
				</thead>
				<tbody>

				</tbody>
			</table>
			<script>
				function obj(d) {
					let appendeddata = {};
					$.each($("#filter_form").serializeArray(), function() {
						d[this.name] = this.value;
					});
					return d;
				}
				$(document).ready(function() {
					TableInitializerV2("serviceTable", obj, {}, "<?= base_url("services/datatable") ?>", "<?= base_url("services/rankSetter") ?>", true);

				});
			</script>
		</div>
	</div>
</div>

<div id="serviceModal"></div>

<script>
	function toggleSelected($this) {
		if ($this.checked) {
			if ($(".toggleLabel").hasClass("d-none")) {
				$(".toggleLabel").removeClass("d-none");
			}
		} else {
			$(".toggleLabel").addClass("d-none");
		}
		$('input.editor-active').each(function() {
			$(this).prop('checked', $this.checked);
		});
	}

	$(document).on("change", "input.editor-active", function() {
		let selectedCounter = 0;
		$("input.editor-active").each(function() {
			if ($(this).is(":checked")) {
				selectedCounter++;
			}
		});
		if (selectedCounter > 0) {
			$(".toggleLabel").removeClass("d-none");
		} else {
			$(".toggleLabel").addClass("d-none");
		}
		if ($(this).is(":checked")) {
			$(".toggleLabel").removeClass("d-none");
		}
	});

	$(document).ready(function() {
		$(document).on("click", ".createServiceBtn", function(e) {
			e.preventDefault();
			e.stopImmediatePropagation();
			$('#serviceModal').iziModal('destroy');
			let url = $(this).data("url");
			createModal("#serviceModal", "Hizmet Ekle", "Hizmet Ekle", 600, true, "20px", 0, "#e20e17", "#fff", 1040, function() {
				$.post(url, {}, function(response) {
					$("#serviceModal .iziModal-content").html(response);
					TinyMCEInit();
					flatPickrInit();
					$(".tagsInput").select2({
						placeholder: 'Hizmet Kategorisi Seçiniz.',
						width: 'resolve',
						theme: "classic",
						tags: false,
						tokenSeparators: [',', ' '],
						multiple: false
					});
				});
			});
			openModal("#serviceModal");
			$("#serviceModal").iziModal("setFullscreen", false);
		});
		$(document).on("click", ".btnSave", function(e) {
			e.preventDefault();
			e.stopImmediatePropagation();
			let url = $(this).data("url");
			let formData = new FormData(document.getElementById("saveService"));
			createAjax(url, formData, function() {
				closeModal("#serviceModal");
				$("#serviceModal").iziModal("setFullscreen", false);
				reloadTable("serviceTable");
			});
		});
		$(document).on("click", ".updateServiceBtn", function(e) {
			e.preventDefault();
			e.stopImmediatePropagation();
			$('#serviceModal').iziModal('destroy');
			let url = $(this).data("url");
			createModal("#serviceModal", "Hizmet Düzenle", "Hizmet Düzenle", 600, true, "20px", 0, "#e20e17", "#fff", 1040, function() {
				$.post(url, {}, function(response) {
					$("#serviceModal .iziModal-content").html(response);
					TinyMCEInit();
					flatPickrInit();
					$(".tagsInput").select2({
						placeholder: 'Hizmet Kategorisi Seçiniz.',
						width: 'resolve',
						theme: "classic",
						tags: false,
						tokenSeparators: [',', ' '],
						multiple: false
					});
				});
			});
			openModal("#serviceModal");
			$("#serviceModal").iziModal("setFullscreen", false);
		});
		$(document).on("click", ".btnUpdate", function(e) {
			e.preventDefault();
			e.stopImmediatePropagation();
			let url = $(this).data("url");
			let formData = new FormData(document.getElementById("updateService"));
			createAjax(url, formData, function() {
				closeModal("#serviceModal");
				$("#serviceModal").iziModal("setFullscreen", false);
				reloadTable("serviceTable");
			});
		});
		$(document).on("click", "#delete_button", function(e) {
			e.preventDefault();
			e.stopImmediatePropagation();
			let url = $(this).data("url");
			let idArray = [];
			$('input.editor-active').each(function() {
				if ($(this).is(":checked")) {
					idArray.push($(this).val());
				}
			});
			idArray.sort();
			swal.fire({
				title: 'Emin Misiniz?',
				text: "Bu işlemi geri alamayacaksınız!",
				icon: 'question',
				showCancelButton: true,
				confirmButtonColor: '#3085d6',
				cancelButtonColor: '#d33',
				confirmButtonText: 'Evet, Sil!',
				cancelButtonText: "Hayır"
			}).then(function(result) {
				if (result.value) {
					let formData = new FormData();
					formData.append("service_ids", idArray);
					createAjax(url, formData, function() {
						reloadTable("serviceTable");
					});
				}
			});
		});
	});
</script>