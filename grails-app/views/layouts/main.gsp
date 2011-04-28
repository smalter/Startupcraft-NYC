<html>
    <head>
        <title>StartupCraft NYC</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js" type="text/javascript"></script>
    </head>
    <body>
        <div id="spinner" class="spinner">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>
        <g:layoutBody />
    </body>
</html>