function inputToLabel(){$(".input-loop").each(function(e){newid=this.id.split("-").pop(),lblid="#lbl-"+newid,$(lblid).text($(this).val())})}function labelToInput(){$(".label-loop").each(function(e){newid=this.id.split("-").pop(),inputid="#input-"+newid,$(inputid).val($(this).text())})}function inputClear(){$(".input-loop").each(function(e){inputid="#input-"+e,$(inputid).val("")})}$("#panel1-edit").click(function(e){e.preventDefault(),$("#show-1").hide(),$("#panel1-edit").hide(),labelToInput(),$("#edit-1").show(),$("#panel1-save").show(),$("#panel1-cancel").show()}),$("#panel1-cancel").click(function(e){e.preventDefault(),inputClear(),$("#panel1-save").hide(),$("#panel1-cancel").hide(),$("#edit-1").hide(),$("#show-1").show(),$("#panel1-edit").show()}),$("#panel1-save").click(function(e){e.preventDefault(),$("#panel1-save").hide(),$("#panel1-cancel").hide(),$("#edit-1").hide(),$("#show-1").show(),$("#panel1-edit").show(),inputToLabel()}),$("#panel2-edit").click(function(e){e.preventDefault(),$("#show-2").hide(),$("#panel2-edit").hide(),labelToInput(),$("#edit-2").show(),$("#panel2-save").show(),$("#panel2-cancel").show()}),$("#panel2-cancel").click(function(e){e.preventDefault(),inputClear(),$("#panel2-save").hide(),$("#panel2-cancel").hide(),$("#edit-2").hide(),$("#show-2").show(),$("#panel2-edit").show()}),$("#panel2-save").click(function(e){e.preventDefault(),$("#panel2-save").hide(),$("#panel2-cancel").hide(),$("#edit-2").hide(),$("#show-2").show(),$("#panel2-edit").show(),inputToLabel()}),$("#panel3-edit").click(function(e){e.preventDefault(),$("#show-3").hide(),$("#panel3-edit").hide(),labelToInput(),$("#edit-3").show(),$("#panel3-save").show(),$("#panel3-cancel").show()}),$("#panel3-cancel").click(function(e){e.preventDefault(),inputClear(),$("#panel3-save").hide(),$("#panel3-cancel").hide(),$("#edit-3").hide(),$("#show-3").show(),$("#panel3-edit").show()}),$("#panel3-save").click(function(e){e.preventDefault(),$("#panel3-save").hide(),$("#panel3-cancel").hide(),$("#edit-3").hide(),$("#show-3").show(),$("#panel3-edit").show(),inputToLabel()}),$("#panel4-edit").click(function(e){e.preventDefault(),$("#show-4").hide(),$("#panel4-edit").hide(),labelToInput(),$("#edit-4").show(),$("#panel4-save").show(),$("#panel4-cancel").show()}),$("#panel4-cancel").click(function(e){e.preventDefault(),inputClear(),$("#panel4-save").hide(),$("#panel4-cancel").hide(),$("#edit-4").hide(),$("#show-4").show(),$("#panel4-edit").show()}),$("#panel4-save").click(function(e){e.preventDefault(),$("#panel4save").hide(),$("#panel4-cancel").hide(),$("#edit-4").hide(),$("#show-4").show(),$("#panel4-edit").show(),inputToLabel()});