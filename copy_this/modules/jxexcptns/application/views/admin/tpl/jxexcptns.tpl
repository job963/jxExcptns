[{include file="headitem.tpl" title="GENERAL_ADMIN_TITLE"|oxmultilangassign box=" "}]

[{*<script type="text/javascript" src="[{$shop->basetpldir}]sortable/sortable.js"></script>
<link rel="stylesheet" type="text/css" href="[{$shop->basetpldir}]sortable/sortable.css" />
<script type="text/javascript">image_path = "[{$shop->basetpldir}]sortable/";</script>*}]

<script type="text/javascript">
  if(top)
  {
    top.sMenuItem    = "[{ oxmultilang ident="mxservice" }]";
    top.sMenuSubItem = "[{ oxmultilang ident="jxexcptns_menu" }]";
    top.sWorkArea    = "[{$_act}]";
    top.setTitle();
  }

    function resizeCodeFrame () {
        var codeframe = document.getElementById('codeframe');
        codeframe.style.height = (window.innerHeight - 150) + "px";;
    }
</script>
<body onresize="resizeCodeFrame();">
<div class="center" style="height:100%;">
    <h1>[{ oxmultilang ident="JXEXCPTNS_TITLE" }]</h1>
    <div style="position:absolute;top:4px;right:8px;color:gray;font-size:0.9em;border:1px solid gray;border-radius:3px;">&nbsp;[{$sModuleId}]&nbsp;[{$sModuleVersion}]&nbsp;</div>

    <p>
        <form name="transfer" id="transfer" action="[{ $shop->selflink }]" method="post">
            [{ $shop->hiddensid }]
            <input type="hidden" name="oxid" value="[{ $oxid }]">
            <input type="hidden" name="cl" value="article" size="40">
            <input type="hidden" name="updatelist" value="1">
        </form>
        
        <div style="position:relative; top:-10px;">
            <form name="jxexcptns" id="jxexcptns" action="[{ $shop->selflink }]" method="post">
                [{ $shop->hiddensid }]
                <input type="hidden" name="editlanguage" value="[{ $editlanguage }]">
                <input type="hidden" name="cl" value="jxexcptns">
                <input type="hidden" name="fnc" value="filedownload">
                <input type="hidden" name="oxid" value="[{ $oxid }]">
                <input class="edittext" type="submit" 
                         onClick="document.forms['jxexcptns'].elements['parentvarname'].value = document.forms['search'].elements['editval[oxarticles__oxvarname]'].value;" 
                         value=" [{ oxmultilang ident="JXEXCPTNS_DOWNLOAD" }] " [{ $readonly }]><br /> <br/>
            </form>
        </div>
        
        <div id="codeframe" style="border:1px solid #888; padding:4px; background-color:#efefef;height:500px;overflow-y: scroll;">
            <span style="">
                [{if !$aContent}]
                    <em>[{ oxmultilang ident="JXEXCPTNS_NOCONTENT" }]</em>
                [{else}]
                    [{foreach name=outer item=sLine from=$aContent}]
                        [{ $sLine }]<br />
                    [{/foreach}]
                [{/if}]
            </span>
            <div id="eop"></div>
        </div>
        
    </p>
    <div style="position:absolute; bottom:0px; left:0px; height:50px; background-color:#dd0000;"></div>

</div>
</body>
<script type="text/javascript">
    resizeCodeFrame();
    window.location.hash = "eop";
</script>
