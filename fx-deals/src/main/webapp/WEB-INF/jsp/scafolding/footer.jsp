<%@ page language="java" contentType="text/html; charset=utf-8"
  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
  integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script type="text/javascript" src="<c:url value='/theme/js/lib/jquery.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/theme/js/lib/chosen.jquery.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/theme/js/bootstrap.min.js'/>"></script>
<script src="<c:url value='/theme/js/lib/toastr.min.js'/>"></script>
<script src="<c:url value='/theme/js/lib/jquery.dataTables.js'/>"></script>
<script src="<c:url value='/theme/js/lib/js_tools.js'/>"></script>
<script src='<c:url value="/theme/js/lib/dataTables.responsive.min.js"/>'></script>
<script src='<c:url value="/theme/js/lib/dataTables.buttons.min.js"/>'></script>
<script src='<c:url value="/theme/js/lib/jszip.min.js"/>'></script>
<script src='<c:url value="/theme/js/lib/buttons.html5.min.js"/>'></script>
<script src='<c:url value="/theme/js/lib/buttons.print.min.js"/>'></script>
<script src='<c:url value="/theme/js/lib/buttons.flash.min.js"/>'></script>
<script src='<c:url value="/theme/js/lib/pdfmake.min.js"/>'></script>
<script src='<c:url value="/theme/js/lib/vfs_fonts.js"/>'></script>
<script src='<c:url value="/theme/js/lib/select2.min.js"/>'></script>
<script>
  function sformat(str_template, args) {
    return args.reduce(function (a, v) {
      return a.replace('%s', v);
    }, str_template);
  }

  $(document).ready(function () {
    $('#listButton').click(function (event) {
    	event.preventDefault(); 
    	
    	$('#trainers').hide();
    	$('#paginationCount').hide();
    	showTable();  	
    });
    $('#grid').click(function (event) { 
    	event.preventDefault();
    	$('#traineeList').hide();
    	$('#trainers').show(); 
    	//$('#trainers .item').removeClass('list-group-item'); 
    	$('#trainers .item').addClass('grid-group-item'); 
    	$('#paginationCount').show()});
    
    
  });

  $(document).ready(function () {
    var changeStarByInput = function () {
      var count = $(this).val();

      $(this).prevAll('.fa-star')
        .each(function (index, dom) {
          if (5 - index <= count) {
            $(dom).addClass('checked');
          } else {
            $(dom).removeClass('checked');
          }
        });
    };
    $('.star-input :input').change(changeStarByInput);
    $('.star-input :input').keyup(changeStarByInput);

    $('.star-input .fa-star').click(function () {
      var count = 1;
      $(this).addClass('checked');

      $(this).prevAll('.fa-star')
        .each(function (index, dom) {
          $(dom).addClass('checked');
          count++;
        });

      $(this).nextAll('.fa-star')
        .each(function (index, dom) {
          $(dom).removeClass('checked');
        });

      $(this).nextAll(':input').val(count);
    });

    $(".slide-toggle").click(function () {
      $(".box").animate({
        width: "toggle"
      });
    });
  });
 /*  function showTable(){
	   $('#traineeListTable').css("display","");
	  var traineeListTable = $("#traineeListTable").DataTable({
		  destroy: true,
		  ajax:{
			    url: "/api/trainer/info-all-tab",
			    method: "POST",
			    contentType: 'application/json'
			}, 
		      columns: [{
		        title: 'S.N.',
		        "data": null
		      }, {
		        title: 'Name',
		        data: 'trainerName'
		      }, {
		        title: 'Rank',
		        data: 'rank'
		      }]
			}); 
  
		
  }	
				 */
 
  function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("wrapper").style.marginLeft = "250px";
    document.body.style.backgroundColor = "#FFFFFF";
  }

  function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("wrapper").style.marginLeft = "0";
    document.body.style.backgroundColor = "#FFFFFF";
  }
</script>
<!-- For tagsinput -->
<script src='<c:url value="/theme/js/lib/bootstrap-tagsinput.js"/>'></script>

<!-- For chosen jquery plugin -->
<script src='<c:url value="/theme/js/lib/chosen.jquery.min.js"/>'></script>
</body>

</html>