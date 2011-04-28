<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js" type="text/javascript"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>StartupCraft NYC</title>
    <style>
      body {
        background-color:#65a6d1;
        color:#000;
        font-family:Helvetica, Verdana, Arial, sans-serif;
        line-height:22px;
      }
      .centerdiv {
        margin:0 auto;
      }
      .mainholder {
        margin:0 auto;
        text-align:left;
        width:900px;
      }
      .formoptions {
        margin:20px;

      }
      .formoptions div {
        clear:both;
        padding:4px;
      }
      .formoptions div label {
        width:100px;
        display:block;
        float:left;
        text-align:right;
      }
      .formoptions div input,textarea {
        float:left;
        margin-left:10px;
        width:300px;
        padding:2px;
        border-radius: 3px;
        -moz-border-radius: 3px;
        -webkit-border-radius: 3px;
      }
      .formoptions div select {
        float:left;
        margin-left:10px;
        padding:2px;
      }
      div.submitButton {
        text-align:center;
        margin-left:110px;
        width:110px;
        border:1px solid #fff;
        padding:2px 4px 0px;
        cursor:pointer;
        background-color:#ffbc00;
      }
      .page_section {
        padding:20px;
        border-radius: 10px;
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        width:600px;
        margin:10px auto;
      }
      .our_message {
        border: 1px solid #999;
        background-color:#eee;
        -moz-box-shadow: 5px 5px 5px #333;
        -webkit-box-shadow: 5px 5px 5px #333;
        box-shadow: 5px 5px 5px #333;
      }
      .spread_word {
        background-color:#246;
        border: 1px solid #999;
        color:#fff;
        text-align:center;
        font-size:20px;
        line-height:30px;
      }
      .spread_word iframe {
        margin-bottom:-4px;
        margin-right:8px;
      }
      h1 {
        font-size:20px;
        margin:0;
      }
      a {
        color:#369;
      }
      a:link {
        color:#369;
      }
      a:visited {
        color:#369;
      }
    </style>
    <script type="text/javascript">
      function submitForm() {
        var data = {};
        data.name = jQuery('#name').val();
        data.email = jQuery('#email').val();
        data.startup = jQuery('#startup').val();
        data.league = jQuery('#league').val();
        data.bnetId = jQuery('#bnetId').val();
        data.comments = jQuery('#comments').val();
        data.twitter = jQuery('#twitter').val();
        jQuery.ajax({
          url:'/home/saveinfo'
          ,data:data
          ,success:function(resp) {
            jQuery('.formoptions').html('Thanks! We will keep you posted!');
          }
        });
      }

    </script>
  </head>
  <body>
  <div class="mainholder">
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
  </div>
  </body>
</html>
