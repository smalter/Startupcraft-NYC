<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js" type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.12/jquery-ui.min.js" type="text/javascript"></script>
    <script src="/js/jquery.easing.1.3.js" type="text/javascript"></script> 
    <script src="/js/jquery.easing.compatibility.js" type="text/javascript"></script> 
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="/css/main.css" type="text/css" media="screen"> 
    <link href='http://fonts.googleapis.com/css?family=VT323' rel='stylesheet' type='text/css'>
    <script type="text/javascript"> 
      function inputFocus(i){
          if(i.value==i.defaultValue){ i.value=""; i.style.color="#000"; }
      }
      function inputBlur(i){
          if(i.value==""){ i.value=i.defaultValue; i.style.color="#888"; }
      }
    </script>
    <script type="text/javascript">
    (function($){
     $.fn.extend({

     	customStyle : function(options) {
    	  if(!$.browser.msie || ($.browser.msie&&$.browser.version>6)){
    	  return this.each(function() {

    			var currentSelected = $(this).find(':selected');
    			$(this).after('<span id="customStyleSelectBox"><span id="customStyleSelectBoxInner">'+currentSelected.text()+'</span></span>').css({position:'absolute', opacity:0,fontSize:$(this).next().css('font-size')});
    			var selectBoxSpan = $(this).next();
    			var selectBoxWidth = parseInt($(this).width()) - parseInt(selectBoxSpan.css('padding-left')) -parseInt(selectBoxSpan.css('padding-right'));			
    			var selectBoxSpanInner = selectBoxSpan.find(':first-child');
    			selectBoxSpan.css({display:'inline-block'});
    			selectBoxSpanInner.css({width:selectBoxWidth, display:'inline-block'});
    			var selectBoxHeight = parseInt(selectBoxSpan.height()) + parseInt(selectBoxSpan.css('padding-top')) + parseInt(selectBoxSpan.css('padding-bottom'));
    			$(this).height(selectBoxHeight).change(function(){
    				//selectBoxSpanInner.text($(this).val()).parent().addClass('changed');
    selectBoxSpanInner.text($(this).find(':selected').text()).parent().addClass('changed');
    // Thanks to Juarez Filho & PaddyMurphy
    			});

    	  });
    	  }
    	}
     });
    })(jQuery);

    $(document).ready(function() {
      $('#signup').click(function() {
        var isShowing = $("#declare").hasClass("showing");
        if (isShowing == false) {
          $.easing.def = "easeOutBounce";
          
          $('#declare').animate({top: "0px"}, 2000);
          $('#declare').addClass("showing");
        } else {
          $.easing.def = "easeInCirc";
          
          $('#declare').animate({top: "-750px"}, 1000);
          $('#declare').removeClass("showing");
        }
      });
      $('#x-image').click(function() {
        $.easing.def = "easeInCirc";
        
        $('#declare').animate({top: "-750px"}, 1000);
        $('#declare').removeClass("showing");
      });
      
    });
    
    

    // $(document).ready(function() {
    //    
    //  // $('select').customStyle();
    // 
    //  // shows the slickbox on clicking the noted link  
    //  $('#signup').click(function() {
    // 
    //    $('#declare').animate({
    //     // top:"-250px"
    //      top:"0"
    //    }, 1000);
/*
       $('#panel-image').animate({
         top:"-250px", right:"200px"
       }, 1000);
       $('#declare-image').animate({
         top:"125px", right:"250px"
       }, 1000);
       $('#fieldname-image').animate({
         top:"210px", right:"250px"
       }, 1000);
       $('#fieldemail-image').animate({
         top:"270px", right:"250px"
       }, 1000);
       $('#fieldteam-image').animate({
         top:"330px", right:"250px"
       }, 1000);
       $('#fieldleague-image').animate({
         top:"390px", right:"250px"
       }, 1000);
       $('#leaguedrop-image').animate({
         top:"390px", right:"250px"
       }, 1000);
       $('#styled').animate({
         top:"450px", right:"250px"
       }, 1000);
       $('#fieldbnet-image').animate({
         top:"510px", right:"250px"
       }, 1000);
       $('#submit-image').animate({
         top:"570px", right:"250px"
       }, 1000);
       $('#x-image').animate({
         top:"570px", right:"437px"
       }, 1000);
 */      
       
       
       
       
    //  });
    // });
    </script>

    <title>StartupCraft NYC</title>
  </head>
  <body>
    
    <div id="background"></div> 
    <div id="midground"></div> 
    <div id="foreground"></div>
    <div id="big-image"></div>
    <div id="signup">
      <a href="#" id="signup-link"></a>
    </div>

    <div id="declare">
      <div id="panel-image">
        <div id="declare-image"></div>
      
        <input type="text" id="fieldname-image" title="NAME" style="color:#888;" value="NAME" onfocus="inputFocus(this)" onblur="inputBlur(this)" />
      
        <input type="text" id="fieldemail-image" title="EMAIL" style="color:#888;" value="EMAIL" onfocus="inputFocus(this)" onblur="inputBlur(this)" />
        <input type="text" id="fieldteam-image" title="TEAM NAME AND STARTUP" style="color:#888;" value="TEAM NAME / STARTUP" onfocus="inputFocus(this)" onblur="inputBlur(this)" />
      
        <select id="styled">
          <option value="bronze">Bronze</option>
          <option value="silver">Silver</option>
          <option value="gold">Gold</option>
          <option value="platinum">Platinum</option>
          <option value="diamond">Diamond</option>
          <option value="master">Master</option>
        </select>

        <select id="matchup">
          <option value="1">1 VS 1</option>
          <option value="2">2 VS 2</option>
        </select>

        <!-- <div id="fieldleague-image"></div> 
        <div id="leaguedrop-image"></div>
        -->

        <input type="text" id="fieldbnet-image" title="BNET ID" style="color:#888;" value="BNET ID" onfocus="inputFocus(this)" onblur="inputBlur(this)" />
        <div id="submit-image"></div>
        <div id="x-image"></div>
      </div>
    </div>

       <!-- <div id="fieldmatchup-image"></div>
      <div id="matchupdrop-image"></div> 
      </div>
      -->
    
    <!-- <div class="mainholder">
      <div class="centerdiv" style="width:800px;">
        <img src="/images/logo.png" />
      </div>
      <div>
        <div class="our_message page_section">
          Hey StartupCrafters,
          <br /><br />
          So after recently reading on HN about StartupCraft SF
          (<a href="http://news.ycombinator.com/item?id=2177648">http://news.ycombinator.com/item?id=2177648</a>),
          we decided to try and get something going over on the right coast in NYC.
          So to gauge interest and assemble a list of people that want to have a super
          Gosu tournament in NYC, we decided to throw up a quick page that you can register
          on and keep everyone up to date.
          <br /><br />
          If we can get enough people interested and involved this will for sure happen.
          <br /><br />
          Gl Hf,<br />
          @aaronhenshaw & @flyingnome <br />
          Team Hashable<br />
        </div>
        <div class="page_section spread_word">
          <a href="http://twitter.com/share" style="cursor:pointer;" class="twitter-share-button" data-text="I signed up for StartupCraft NYC!!" data-count="none" data-via="startupcraftnyc">Tweet</a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
          Help us spread the word!
        </div>
        <div class="page_section our_message">
          <h1>Enter Your Info To Sign Up</h1>
          <div class="formoptions">
            <div>
              <label for="name">Name</label>
              <input type="text" name="name" id="name" />
            </div>
            <div>
              <label for="email">Email</label>
              <input type="text" name="email" id="email" />
            </div>
            <div>
              <label for="twitter">Twitter</label>
              <input type="text" name="twitter" id="twitter" />
            </div>
            <div>
              <label for="startup">Startup Name</label>
              <input type="text" name="startup" id="startup" />
            </div>
            <div>
              <label for="league">1v1 League</label>
              <select name="league" id="league">
                <option value="bronze">bronze</option>
                <option value="silver">silver</option>
                <option value="gold">gold</option>
                <option value="platinum">platinum</option>
                <option value="diamond">diamond</option>
                <option value="masters">masters</option>
              </select>
            </div>
            <div>
              <label for="bnetId">BnetId</label>
              <input type="text" name="bnetId" id="bnetId" />
            </div>
            <div>
              <label for="comments">Comments</label>
              <textarea name="comments" id="comments" style="height:70px;"></textarea>
            </div>
            <div align="left">
              <div type="button" value="submit" onclick="submitForm()" class="submitButton">Submit</div>
            </div>
          </div>
        </div>
      </div>
    </div> -->
 
  </body>
</html>
