<div id="controlPanelApplication">

<style>
/* Reset e isolamento específico para o painel */
#controlPanelApplication * {
    box-sizing: border-box;
}

#controlPanelApplication .containerAll {
    all: initial;
    display: block !important;
    font-family: Arial, sans-serif !important;
    font-size: 14px !important;
    color: #333 !important;
    padding: 20px !important;
    background: #f5f5f5 !important;
    min-height: 100vh !important;
    box-sizing: border-box !important;
}

#controlPanelApplication .statusbar {
    all: initial;
    display: flex !important;
    justify-content: space-between !important;
    align-items: center !important;
    background: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%) !important;
    padding: 15px 20px !important;
    border-radius: 8px !important;
    margin-bottom: 20px !important;
    box-shadow: 0 4px 6px rgba(0,0,0,0.1) !important;
    box-sizing: border-box !important;
}

#controlPanelApplication .statusbar > span {
    all: initial;
    font-weight: bold !important;
    font-size: 14px !important;
    display: inline-block !important;
    box-sizing: border-box !important;
}

#controlPanelApplication .utilities-container {
    all: initial;
    display: flex !important;
    align-items: center !important;
    gap: 15px !important;
    box-sizing: border-box !important;
}

#controlPanelApplication .Extensions-Calls-Count {
    all: initial;
    display: flex !important;
    gap: 20px !important;
    align-items: center !important;
    box-sizing: border-box !important;
}

#controlPanelApplication .Extensions-Calls-Count .Registered,
#controlPanelApplication .Extensions-Calls-Count .NotRegistered {
    all: initial;
    display: block !important;
    text-align: center !important;
    background: rgba(255,255,255,0.1) !important;
    padding: 10px 15px !important;
    border-radius: 8px !important;
    box-sizing: border-box !important;
}

#controlPanelApplication .Extensions-Calls-Count span {
    all: initial;
    display: inline-block !important;
    color: white !important;
    font-size: 12px !important;
    box-sizing: border-box !important;
}

/* Container principal com dois painéis */
#controlPanelApplication .left-container {
    all: initial;
    display: block !important;
    width: 48% !important;
    float: left !important;
    padding: 10px !important;
    background: white !important;
    border-radius: 8px !important;
    margin-right: 2% !important;
    margin-bottom: 20px !important;
    box-shadow: 0 2px 4px rgba(0,0,0,0.08) !important;
    box-sizing: border-box !important;
}

#controlPanelApplication .right-container {
    all: initial;
    display: block !important;
    width: 48% !important;
    float: left !important;
    padding: 10px !important;
    background: white !important;
    border-radius: 8px !important;
    margin-bottom: 20px !important;
    box-shadow: 0 2px 4px rgba(0,0,0,0.08) !important;
    box-sizing: border-box !important;
}

/* Título dos operadores */
#controlPanelApplication .operator-title-container {
    all: initial;
    display: flex !important;
    align-items: center !important;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%) !important;
    color: white !important;
    padding: 12px 15px !important;
    border-radius: 6px !important;
    margin-bottom: 15px !important;
    font-weight: 600 !important;
    font-size: 16px !important;
    box-sizing: border-box !important;
}

#controlPanelApplication .operator-title-container i {
    all: initial;
    font-size: 20px !important;
    padding-right: 10px !important;
    display: inline-block !important;
    font-family: FontAwesome !important;
    font-style: normal !important;
}

/* Lista de extensões */
#controlPanelApplication .Extensions-List {
    all: initial;
    display: block !important;
    padding: 10px !important;
    background: #fafafa !important;
    border-radius: 6px !important;
    min-height: 50px !important;
    box-sizing: border-box !important;
}

/* Tooltip info */
#controlPanelApplication .pbxtooltip {
    all: initial;
    position: relative !important;
    display: inline-block !important;
    cursor: pointer !important;
    box-sizing: border-box !important;
}

#controlPanelApplication .pbxtooltip > div {
    all: initial;
    visibility: hidden !important;
    position: absolute !important;
    z-index: 9999 !important;
    background: rgba(0,0,0,0.9) !important;
    color: white !important;
    padding: 10px 15px !important;
    border-radius: 6px !important;
    font-size: 12px !important;
    line-height: 1.4 !important;
    white-space: normal !important;
    min-width: 200px !important;
    max-width: 400px !important;
    left: 25px !important;
    top: 0 !important;
    box-shadow: 0 4px 12px rgba(0,0,0,0.3) !important;
    display: block !important;
    box-sizing: border-box !important;
}

#controlPanelApplication .pbxtooltip:hover > div {
    visibility: visible !important;
}

#controlPanelApplication .pbxtooltip img {
    all: initial;
    width: 16px !important;
    height: 16px !important;
    display: block !important;
    box-sizing: border-box !important;
}

/* Phone e Mail container */
#controlPanelApplication .phone-mail-container {
    all: initial;
    display: flex !important;
    align-items: center !important;
    gap: 8px !important;
    float: right !important;
    box-sizing: border-box !important;
}

#controlPanelApplication .phone-icon,
#controlPanelApplication .mail-icon {
    all: initial;
    display: inline-block !important;
    box-sizing: border-box !important;
}

#controlPanelApplication .phone-icon img,
#controlPanelApplication .mail-icon img {
    all: initial;
    width: 30px !important;
    height: 25px !important;
    display: block !important;
    cursor: pointer !important;
    box-sizing: border-box !important;
}

/* Monitor de linhas */
#controlPanelApplication .line-monitor {
    all: initial;
    display: flex !important;
    gap: 8px !important;
    margin-top: 5px !important;
    font-size: 11px !important;
    box-sizing: border-box !important;
}

#controlPanelApplication .line-monitor .line {
    all: initial;
    display: inline-block !important;
    color: #666 !important;
    font-weight: 500 !important;
    box-sizing: border-box !important;
}

#controlPanelApplication .line-monitor .line span {
    all: initial;
    display: block !important;
    font-size: 11px !important;
    color: #666 !important;
    box-sizing: border-box !important;
}

#controlPanelApplication .line-monitor .RemoteExtension {
    all: initial;
    display: inline-block !important;
    box-sizing: border-box !important;
}

#controlPanelApplication .monitor {
    all: initial;
    display: inline-block !important;
    color: #2ecc71 !important;
    font-weight: 600 !important;
    font-size: 11px !important;
    background: rgba(46, 204, 113, 0.1) !important;
    padding: 2px 6px !important;
    border-radius: 3px !important;
    box-sizing: border-box !important;
}

/* Queue Container - CORRIGIDO */
#controlPanelApplication .Queue-Container {
    all: initial;
    display: block !important;
    background: white !important;
    border: 1px solid #e0e0e0 !important;
    border-radius: 8px !important;
    padding: 15px !important;
    margin-bottom: 10px !important;
    position: relative !important;
    box-sizing: border-box !important;
}

#controlPanelApplication .Queue-Container b {
    all: initial;
    font-weight: bold !important;
    font-size: 14px !important;
    color: #333 !important;
    display: inline !important;
    font-family: Arial, sans-serif !important;
    box-sizing: border-box !important;
}

#controlPanelApplication .Queue-Container > i {
    all: initial;
    cursor: pointer !important;
    font-size: 25px !important;
    position: absolute !important;
    right: 15px !important;
    top: 15px !important;
    color: #3498db !important;
    font-family: FontAwesome !important;
    font-style: normal !important;
    display: inline-block !important;
    padding: 2px !important;
    box-sizing: border-box !important;
}

#controlPanelApplication .Queue-Container-Agent-Client {
    all: initial;
    display: flex !important;
    gap: 15px !important;
    margin-top: 15px !important;
    box-sizing: border-box !important;
}

#controlPanelApplication .Queue-Agents {
    all: initial;
    display: block !important;
    width: 60% !important;
    box-sizing: border-box !important;
}

#controlPanelApplication .Queue-Container-Agent-Client > div {
    all: initial;
    display: block !important;
    box-sizing: border-box !important;
}

#controlPanelApplication .queueParameters {
    all: initial;
    display: block !important;
    margin-top: 10px !important;
    padding: 10px !important;
    background: #f8f9fa !important;
    border-radius: 4px !important;
    box-sizing: border-box !important;
}

/* Queue View Large */
#controlPanelApplication .QueueView-large {
    all: initial;
    display: block !important;
    background: #f9f9f9 !important;
    border: 1px solid #e0e0e0 !important;
    border-radius: 8px !important;
    padding: 15px !important;
    margin-bottom: 15px !important;
    box-sizing: border-box !important;
}

/* Conference View Large */
#controlPanelApplication .ConferenceView-large {
    all: initial;
    display: block !important;
    background: #f9f9f9 !important;
    border: 1px solid #e0e0e0 !important;
    border-radius: 8px !important;
    padding: 12px !important;
    margin-bottom: 10px !important;
    box-sizing: border-box !important;
    overflow: hidden !important;
}

#controlPanelApplication .ConferenceView-large::after {
    content: "" !important;
    display: table !important;
    clear: both !important;
}

/* Parkinglot View Large */
#controlPanelApplication .ParkinglotView-large {
    all: initial;
    display: block !important;
    background: #f9f9f9 !important;
    border: 1px solid #e0e0e0 !important;
    border-radius: 8px !important;
    padding: 12px !important;
    margin-bottom: 10px !important;
    box-sizing: border-box !important;
    overflow: hidden !important;
}

#controlPanelApplication .ParkinglotView-large::after {
    content: "" !important;
    display: table !important;
    clear: both !important;
}

/* Parkinglots list */
#controlPanelApplication .parkinglots-list {
    all: initial;
    display: block !important;
    padding: 10px !important;
    box-sizing: border-box !important;
}

/* Icons gerais */
#controlPanelApplication .icon {
    all: initial;
    display: inline-block !important;
    vertical-align: middle !important;
    box-sizing: border-box !important;
}

#controlPanelApplication img.icon {
    all: initial;
    display: inline-block !important;
    vertical-align: middle !important;
    max-width: 100% !important;
    box-sizing: border-box !important;
}

/* Listas */
#controlPanelApplication ul {
    all: initial;
    display: block !important;
    list-style: none !important;
    padding: 0 0 0 10px !important;
    margin: 5px 0 !important;
    box-sizing: border-box !important;
}

#controlPanelApplication li {
    all: initial;
    display: block !important;
    padding: 3px 0 !important;
    font-size: 12px !important;
    color: #555 !important;
    line-height: 1.4 !important;
    font-family: Arial, sans-serif !important;
    box-sizing: border-box !important;
}

#controlPanelApplication li img {
    all: initial;
    display: inline-block !important;
    vertical-align: middle !important;
    margin-right: 5px !important;
    box-sizing: border-box !important;
}

/* Botões */
#controlPanelApplication button {
    all: initial;
    display: inline-block !important;
    padding: 6px 12px !important;
    background: #3498db !important;
    color: white !important;
    border: none !important;
    border-radius: 4px !important;
    cursor: pointer !important;
    font-size: 13px !important;
    font-weight: 500 !important;
    font-family: Arial, sans-serif !important;
    box-sizing: border-box !important;
}

#controlPanelApplication button:hover {
    background: #2980b9 !important;
}

/* Inputs */
#controlPanelApplication input[type="text"] {
    all: initial;
    display: inline-block !important;
    padding: 6px 10px !important;
    border: 1px solid #ddd !important;
    border-radius: 4px !important;
    font-size: 13px !important;
    font-family: Arial, sans-serif !important;
    box-sizing: border-box !important;
}

/* Editable title */
#controlPanelApplication .paneledittitle {
    all: initial;
    display: inline-block !important;
    color: #3498db !important;
    cursor: pointer !important;
    margin-left: 10px !important;
    font-size: 12px !important;
    box-sizing: border-box !important;
}

#controlPanelApplication .paneledittitle:hover {
    text-decoration: underline !important;
}

/* Dt e Dd elements */
#controlPanelApplication dt {
    all: initial;
    display: block !important;
    font-weight: bold !important;
    margin-bottom: 10px !important;
    color: #2c3e50 !important;
    font-size: 15px !important;
    padding: 10px !important;
    background: #f8f9fa !important;
    border-radius: 6px !important;
    font-family: Arial, sans-serif !important;
    box-sizing: border-box !important;
}

#controlPanelApplication dd {
    all: initial;
    display: block !important;
    margin: 0 0 15px 0 !important;
    padding: 0 !important;
    box-sizing: border-box !important;
}

#controlPanelApplication dd > div {
    all: initial;
    display: block !important;
    box-sizing: border-box !important;
}

/* Links */
#controlPanelApplication a {
    all: initial;
    display: inline-block !important;
    text-decoration: none !important;
    color: inherit !important;
    cursor: pointer !important;
    box-sizing: border-box !important;
}

/* Spans gerais */
#controlPanelApplication span {
    all: initial;
    display: inline !important;
    box-sizing: border-box !important;
}

/* Bold elements */
#controlPanelApplication b {
    all: initial;
    font-weight: bold !important;
    display: inline !important;
    font-size: inherit !important;
    color: inherit !important;
    font-family: Arial, sans-serif !important;
    box-sizing: border-box !important;
}

/* Br elements */
#controlPanelApplication br {
    all: initial;
    display: block !important;
    content: "" !important;
    margin: 3px 0 !important;
}

/* Divs com float */
#controlPanelApplication div[style*="float:left"],
#controlPanelApplication div[style*="float: left"] {
    box-sizing: border-box !important;
}

#controlPanelApplication div[style*="float:right"],
#controlPanelApplication div[style*="float: right"] {
    box-sizing: border-box !important;
}

/* FontAwesome icons */
#controlPanelApplication .fa {
    all: initial;
    display: inline-block !important;
    font-family: FontAwesome !important;
    font-style: normal !important;
    font-weight: normal !important;
    line-height: 1 !important;
    -webkit-font-smoothing: antialiased !important;
    box-sizing: border-box !important;
}

#controlPanelApplication .fa-phone:before {
    content: "\f095" !important;
}

#controlPanelApplication .fa-refresh:before {
    content: "\f021" !important;
}

/* Clearfix */
#controlPanelApplication .containerAll::after,
#controlPanelApplication .left-container::after,
#controlPanelApplication .right-container::after,
#controlPanelApplication .Queue-Container::after,
#controlPanelApplication .Queue-Container-Agent-Client::after {
    content: "" !important;
    display: table !important;
    clear: both !important;
}
</style>

<script type="text/x-handlebars" data-template-name="desktop">
    <div class="containerAll">
        <div class="statusbar">
            {literal}
                {{#if connected}}
                    <span style="all: initial; color: #06ea06c4 !important; font-weight: bold !important; display: inline-block !important; box-sizing: border-box !important;">Conectado</span>
                    <div class="utilities-container">
                        <div class="Extensions-Calls-Count">
                          <div class="Registered">
                            <span style="all: initial; display: block !important; color: white !important; font-size: 12px !important; margin-bottom: 5px !important; box-sizing: border-box !important;">Ramais Online</span>
                            <span class="Count-Registered" style="all: initial; font-size: 35px !important; color: #06ea06c4 !important; padding: 10px !important; text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000 !important; display: block !important; box-sizing: border-box !important;"></span>
                          </div>
                          <div class="NotRegistered">
                            <span style="all: initial; display: block !important; color: white !important; font-size: 12px !important; margin-bottom: 5px !important; box-sizing: border-box !important;">Ramais Offline</span>
                            <span class="Count-NotRegistered" style="all: initial; font-size: 35px !important; color: red !important; padding: 10px !important; text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000 !important; display: block !important; box-sizing: border-box !important;"></span>
                          </div>
                        </div>
                    </div>
                {{else}}
                    <span style="all: initial; color: red !important; font-weight: bold !important; display: inline-block !important; box-sizing: border-box !important;">Connecting...</span>
                {{/if}}
            {/literal}
        </div>

        <div class="left-container" id="left-container">
        {literal}{{#view App.BaseSortableView }}{/literal}
        
        {literal}
            {{#view App.PBXPanelView controllerBinding="extensions" }}
              <dt class="operator-title-container" id="operator-title-container">
                <i class="fa fa-phone"></i> {/literal}{$AREA_DESCR_EXTENSION}{literal}
              </dt>
                 <div class="Extensions-List" id="Extensions-List">
                    {{#if finishedloading}}
                        {{#view App.SortablePanelView }}
                            {{#each }}
                                  {{view App.ExtensionView}}
                            {{else}}
                                <br/>
                            {{/each}}
                        {{/view}}
                    {{else}}
                <img class="icon" src="modules/{/literal}{$module_name}{literal}/images/loading.gif"/>
                {{/if}}
                </div>
            {{/view}}
        {/literal}
        {literal}{{/view}}{/literal}

        {literal}{{#view App.FAQView }}{/literal}
        {literal}{{#view App.BaseSortableView }}{/literal}

        {* Áreas 1-9 *}
        {literal}
            {{#view App.PBXPanelView controllerBinding="area1" }}
                {{view App.EditableTitleView }}
                <dd>
                <div class="Extensions-List">
                    {{#if finishedloading}}
                        {{#view App.SortablePanelView }}
                            {{#each }}
                                {{view App.ExtensionView}}
                            {{else}}
                                <br/>
                            {{/each}}
                        {{/view}}
                    {{else}}
                        <img class="icon" src="modules/{/literal}{$module_name}{literal}/images/loading.gif"/>
                    {{/if}}
                </div>
                </dd>
            {{/view}}
        {/literal}<br/>

        {* Repetir para area2-9 conforme necessário *}

        {literal}{{/view}}{/literal}
        {literal}{{/view}}{/literal}
        
        </div>

        <div class="right-container">
        {literal}{{#view App.FAQView }}{/literal}
        {literal}{{#view App.BaseSortableView }}{/literal}
        
        {* Queues *}
        {literal}
            {{#view App.PBXPanelView controllerBinding="queues" }}
                <dt>{{description}}</dt>
                <dd>
                    {{#if finishedloading}}
                        <div>
                            {{#each }}
                                {{view App.QueueView class="QueueView-large"}}
                            {{else}}
                                <br/>
                            {{/each}}
                        </div>
                    {{else}}
                        <img class="icon" src="modules/{/literal}{$module_name}{literal}/images/loading.gif"/>
                    {{/if}}
                </dd>
            {{/view}}
        {/literal}<br>

        {* Conferences *}
        {literal}
            {{#view App.PBXPanelView controllerBinding="conferences" }}
                <dt>{{description}}</dt>
                <dd>
                    {{#if finishedloading}}
                        <div>
                            {{#each }}
                                {{view App.ConferenceView class="ConferenceView-large"}}
                            {{else}}
                                <br/>
                            {{/each}}
                        </div>
                    {{else}}
                        <img class="icon" src="modules/{/literal}{$module_name}{literal}/images/loading.gif"/>
                    {{/if}}
                </dd>
            {{/view}}
        {/literal}<br>

        {* Parkinglots *}
        {literal}
            {{#view App.PBXPanelView controllerBinding="parkinglots" }}
                <dt>{{description}}</dt>
                <dd>
                    {{#if finishedloading}}
                        <div class="parkinglots-list">
                            {{#each }}
                                {{view App.ParkinglotView class="ParkinglotView-large"}}
                            {{else}}
                                <br/>
                            {{/each}}
                        </div>
                    {{else}}
                        <img class="icon" src="modules/{/literal}{$module_name}{literal}/images/loading.gif"/>
                    {{/if}}
                </dd>
            {{/view}}
        {/literal}
        
        {literal}{{/view}}{/literal}
        {literal}{{/view}}{/literal}
        </div>

        <div class="left-container"> 
        {literal}{{#view App.BaseSortableView }}{/literal}

        {* Trunks VoIP *}
        <div style="all: initial; width: 50% !important; float: left !important; display: block !important; box-sizing: border-box !important;"> 
        {literal}
            {{#view App.PBXPanelView controllerBinding="iptrunks" }}
                <dt class="operator-title-container">
                    {/literal}{$AREA_DESCR_TRUNKSSIP}{literal}
                </dt>
                {{#if finishedloading}}
                    <div>
                        {{#each }}
                            {{view App.IPTrunkView }}
                        {{else}}
                            <br/>
                        {{/each}}
                    </div>
                {{else}}
                    <img class="icon" src="modules/{/literal}{$module_name}{literal}/images/loading.gif"/>
                {{/if}}
            {{/view}}
        {/literal}
        </div>

        {* Trunks DAHDI *}
        <div style="all: initial; width: 50% !important; float: left !important; display: block !important; box-sizing: border-box !important;"> 
        {literal}
            {{#view App.PBXPanelView controllerBinding="dahdi" }}
            <dt class="operator-title-container">
                {/literal}{$AREA_DESCR_TRUNKS}{literal}
              </dt>
                    {{#if finishedloading}}
                        <div>
                            {{#each }}
                                {{view App.DAHDISpanView }}
                            {{else}}
                                <br/>
                            {{/each}}
                        </div>
                    {{else}}
                <img class="icon" src="modules/{/literal}{$module_name}{literal}/images/loading.gif"/>
                {{/if}}
            {{/view}}
        {/literal}
        </div>

        {literal}{{/view}}{/literal}
        </div>
        
    </div>
</script>

<script type="text/x-handlebars" data-template-name="extension">
<div style="all: initial; float: left !important; border: none !important; z-index: 2 !important; display: block !important; box-sizing: border-box !important;">
	<a class="pbxtooltip" href="#">
    	<img src="modules/{$module_name}/images/info.png"/>
    	<div>
    		{literal}
    		{{channel}} {{#if registered}} - ({{ip}}){{/if}}<br/>
            {{description}}<br/>
    		{{#if active }}
    		<ul>
    	    {{#each active}}
    	    <li>{{formatSince}}: {{remoteExten}}</li>
    	    {{/each}}
    	    </ul>
    	    {{/if}}
    		{/literal}
    	</div>
	</a>
</div>
<div style="all: initial; float: left !important; width: 115px !important; text-align: left !important; padding-left: 4px !important; display: block !important; box-sizing: border-box !important;">
	{literal}
	<b style="all: initial; font-weight: bold !important; display: inline !important; font-family: Arial, sans-serif !important;">{{extension}}:</b> <span style="all: initial; display: inline !important;">{{view.truncatedDescription}}</span><br/>
        <div class="line-monitor">
              <div class="line" style="all: initial; width: 30% !important; display: inline-block !important; vertical-align: top !important; box-sizing: border-box !important;">
              <span style="all: initial; display: block !important; font-size: 11px !important; color: #666 !important; font-family: Arial, sans-serif !important;">Line1:</span>
              <span style="all: initial; display: block !important; font-size: 11px !important; color: #666 !important; font-family: Arial, sans-serif !important;">Line2:</span>
              </div>
              <div class="RemoteExtension" style="all: initial; width: 70% !important; display: inline-block !important; vertical-align: top !important; box-sizing: border-box !important;">
              {{#each active}}
                  <span class="monitor" title="{{Channel}}">{{formatSince}}: {{remoteExten}}</span><br>
              {{/each}}
            </div>
        </div>
	{/literal}
</div>

{literal}
<div class="phone-mail-container">
  <div class="phone-icon">
    {{view App.DraggablePhoneIconView iconBinding="view.extensionIcon"}}
  </div>
  {{#if unreadMail }}
  <div class="mail-icon">
    <a class="pbxtooltip">
      <img class="icon" src="modules/{/literal}{$module_name}{literal}/images/mail.png" style="all: initial; width: 30px !important; height: 20px !important; display: block !important;" />
      <div>{/literal}{$LBL_NEW}{literal}: {{NewMessages}}, {/literal}{$LBL_OLD}{literal}: {{OldMessages}}</div>
    </a>
  </div>
  {{/if}}
</div>
{/literal}
</script>

<script type="text/x-handlebars" data-template-name="iptrunk">
<div style="all: initial; float: left !important; border: none !important; display: block !important; box-sizing: border-box !important;">
    <a class="pbxtooltip" href="#">
    <img src="modules/{$module_name}/images/info.png"/>
    <div>
        {literal}
        {{channel}} {{#if registered}}({{ip}}){{/if}}<br/>
        {{#if active}}
        <ul>
	    {{#each active}}
	    <li>{{formatSince}}: {{CallerIDNum}}</li>
	    {{/each}}
	    </ul>
	    {{/if}}
        {/literal}
    </div>
    </a>
</div>
<div style="all: initial; float: left !important; width: 115px !important; text-align: left !important; padding-left: 4px !important; display: block !important; box-sizing: border-box !important;">
    {literal}
    <b style="all: initial; font-weight: bold !important; display: inline !important; font-family: Arial, sans-serif !important;">{{view.truncatedDescription}}</b><br/>
    {{#each active}}
    <span class="monitor">{{formatSince}}: {{CallerIDNum}}</span><br/>
    {{/each}}
    {/literal}
</div>
{literal}
<div style="all: initial; float: right !important; border: none !important; display: block !important; box-sizing: border-box !important;">
    <img class="icon" src="modules/{/literal}{$module_name}{literal}/images/icon_trunk2.png"/>
</div>
{/literal}
</script>

<script type="text/x-handlebars" data-template-name="dahdispan">
<div style="all: initial; float: left !important; border: none !important; display: block !important; box-sizing: border-box !important;">
    <a class="pbxtooltip" href="#">
    <img src="modules/{$module_name}/images/info.png"/>
    <div>
        {literal}
        DAHDI/{{span}}: {{formatChanRange}}<br/>
        {{#each chan}}<span {{bindAttr style="alarmstyle"}}>{{chan}}</span>{{/each}}
        {{#if active}}
        <ul>
        {{#each active}}
        <li>{{formatSince}}: {{CallerIDNum}}</li>
        {{/each}}
        </ul>
        {{/if}}
        <ul>
        {{#each chan}}
            {{#if active }}
	            <li>{{chan}}:
	            {{#each active}}
	                {{formatSince}}: {{CallerIDNum}}
	            {{else}}
	                (idle)
	            {{/each}}
	            </li>
            {{/if}}
        {{/each}}
        </ul>
        {/literal}
    </div>
    </a>
</div>
<div style="all: initial; float: left !important; width: 135px !important; text-align: left !important; padding-left: 4px !important; display: block !important; box-sizing: border-box !important;">
    {literal}
    <b style="all: initial; font-weight: bold !important; display: inline !important; font-family: Arial, sans-serif !important;">DAHDI/{{span}}:</b> {{formatChanRange}}<br/>
    {/literal}
</div>
<div style="all: initial; float: right !important; border: none !important; display: block !important; box-sizing: border-box !important;">
    <img class="icon" src="modules/{$module_name}/images/icon_trunk2.png"/>
</div>
</script>

<script type="text/x-handlebars" data-template-name="queue">
    <div class="Queue-Container">
        {literal}
        <b>Fila: {{extension}} </b>({{view.truncatedDescription}})
        <i title="Reestablece los parámetros a 0" class="fa fa-refresh" style="all: initial; cursor: pointer !important; font-size: 25px !important; position: absolute !important; right: 15px !important; top: 15px !important; padding: 2px !important; font-family: FontAwesome !important; font-style: normal !important; display: inline-block !important; box-sizing: border-box !important;" onclick="refreshQueueParameters(this.offsetParent.dataset.idattr)"></i>
        <div class="queueParameters">
        </div>
    </div>
    <div class="Queue-Container-Agent-Client">
        <div class="Queue-Agents" style="all: initial; width: 60% !important; display: block !important; box-sizing: border-box !important;"> 
            </div>
        <div style="all: initial; width: 40% !important; display: block !important; box-sizing: border-box !important;">
                <b style="all: initial; font-weight: bold !important; display: inline !important; font-family: Arial, sans-serif !important; font-size: 13px !important; color: #333 !important;">Clientes na fila:</b><span class="monitor"><b style="all: initial; font-weight: bold !important; display: inline !important;">{{callers.length}}</b></span><br/>
                {{#each callers}}<li><img src="modules/{/literal}{$module_name}{literal}/images/cliente.png" style="all: initial; width: 15px !important; height: 15px !important; display: inline-block !important; vertical-align: middle !important; margin-right: 5px !important;">{{CallerIDNum}}</li>{{/each}}
            {/literal}
        </div>
    </div>
</script>

<script type="text/x-handlebars" data-template-name="conference">
<div style="all: initial; float: left !important; border: none !important; display: block !important; box-sizing: border-box !important;">
	<a class="pbxtooltip" href="#">
	<img src="modules/{$module_name}/images/info.png"/>
	<div>
		{literal}
		{{extension}}: {{description}}<br/>
		{{#if callers}}
		{/literal}{$LBL_QUEUE_CALLERS}{literal}:<br/>
		<ul>
		{{#each callers}}
		<li>{{CallerIDName}} &lt;{{CallerIDNum}}&gt;</li>
		{{/each}}
		</ul>
		{{else}}
		{/literal}{$LBL_QUEUE_NO_CALLERS}{literal}
		{{/if}}
		{/literal}
	</div>
	</a>
</div>
<div style="all: initial; float: left !important; width: 135px !important; text-align: left !important; padding-left: 4px !important; display: block !important; box-sizing: border-box !important;">
	{literal}
	<b style="all: initial; font-weight: bold !important; display: inline !important; font-family: Arial, sans-serif !important;">{{extension}}:</b> {{view.truncatedDescription}}<br/>
	{{#if callers }}
	<span class="monitor">{/literal}{$LBL_CONF_PARTICIPANTS}{literal}: {{callers.length}} - {{formatSince}}</span><br/>
	{{/if}}
	{/literal}
</div>
<div style="all: initial; float: right !important; border: none !important; display: block !important; box-sizing: border-box !important;">
    {literal}{{view App.DroppableIconView icon="{/literal}modules/{$module_name}/images/conference.png{literal}" }}{/literal}
</div>
</script>

<script type="text/x-handlebars" data-template-name="parkinglot">
<div style="all: initial; float: left !important; border: none !important; display: block !important; box-sizing: border-box !important;">
	<a class="pbxtooltip" href="#">
	<img src="modules/{$module_name}/images/info.png"/>
	<div>
		{literal}
		{{extension}}
		{/literal}
	</div>
	</a>
</div>
<div style="all: initial; float: left !important; width: 135px !important; text-align: left !important; padding-left: 4px !important; display: block !important; box-sizing: border-box !important;">
	{literal}
	<b style="all: initial; font-weight: bold !important; display: inline !important; font-family: Arial, sans-serif !important;">{/literal}{$LBL_PARKED}{literal} ({{extension}})</b><br/>
	{{#if shortchannel }}
	<span class="monitor">{{shortchannel}}: {{formatTimeout}}</span><br/>
	{{/if}}
	{/literal}
</div>
<div style="all: initial; float: right !important; border: none !important; display: block !important; box-sizing: border-box !important;">
	{literal}{{view App.DroppableIconView icon="{/literal}modules/{$module_name}/images/parking.png{literal}" }}{/literal}
</div>
</script>

<script type="text/x-handlebars" data-template-name="editable-title">
{literal}
{{#if editing }}
{{view Ember.TextField valueBinding="description" }}
<button {{action "save" bubbles=false }}>{/literal}{$LBL_SAVE_NAME}{literal}</button>
{{else}}
{{description}} -- {{length}} ext
<span class="paneledittitle" {{action "edit" bubbles=false }}>[{/literal}{$LBL_EDIT_NAME}{literal}]</span>
{{/if}}
{/literal}
</script>

</div>

<script type="text/javascript">
var arrLang_main = {$ARRLANG_MAIN};
var var_init = {$VAR_INIT}
</script>