!function(t){function e(o){if(n[o])return n[o].exports;var i=n[o]={i:o,l:!1,exports:{}};return t[o].call(i.exports,i,i.exports,e),i.l=!0,i.exports}var n={};e.m=t,e.c=n,e.i=function(t){return t},e.d=function(t,n,o){e.o(t,n)||Object.defineProperty(t,n,{configurable:!1,enumerable:!0,get:o})},e.n=function(t){var n=t&&t.__esModule?function(){return t.default}:function(){return t};return e.d(n,"a",n),n},e.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},e.p="",e(e.s="./client/src/legacy/TinyMCE_sslink.js")}({"./client/src/components/TinymceInlineToolbar/TinymceInlineToolbar.js":function(t,e,n){"use strict";function o(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}function i(t,e,n){var o=Array.isArray(n)?n:[n||""];return!(!t||!e)&&(o=o.map(function(t){return String(t)}).map(function(t){return t.toLowerCase()}),o.filter(function(e){if(e.indexOf("[")>-1&&e.indexOf("]")>-1){var n=e.substring(0,e.indexOf("[")),o=e.substring(e.indexOf("[")+1,e.indexOf("]"));if(n===t.tagName.toLowerCase()&&t.getAttribute(o))return!0}else if(t.tagName&&e===t.tagName.toLowerCase())return!0;return!1}).length>0)}function r(t,e){function n(){i(l,s,o)&&(r.hide(),clearTimeout(a),a=setTimeout(function(){r.show(),r.reposition(l)},300))}var o=arguments.length>2&&void 0!==arguments[2]?arguments[2]:["a"],r=new c(t,e),l=null,a=null,s=!1;return r.hide().renderTo(window.document.body),t.on("remove",function(){r.remove()}),t.on("focus",function(){s=!0}),t.on("blur hide",function(){r.hide(),s=!1}),t.on("nodechange",function(e){var n={element:e.element,parents:e.parents,collapsed:t.selection.isCollapsed()};l=n.selection||n.element,i(l,s,o)?(r.show(),r.reposition(l)):r.hide()}),window.addEventListener("scroll",function(e){e.target.contains(document.querySelector("#"+t.id))&&n()},!0),t.contentDocument.addEventListener("scroll",n),r}Object.defineProperty(e,"__esModule",{value:!0});var l=function(){function t(t,e){for(var n=0;n<e.length;n++){var o=e[n];o.enumerable=o.enumerable||!1,o.configurable=!0,"value"in o&&(o.writable=!0),Object.defineProperty(t,o.key,o)}}return function(e,n,o){return n&&t(e.prototype,n),o&&t(e,o),e}}(),c=function(){function t(e,n){o(this,t),this.mceIframe=document.getElementById(e.id+"_ifr"),this.container=e.getContainer(),this.mceToolbar=null,this.mceStatusbar=null,this.container&&(this.mceToolbar=this.container.querySelector(".mce-toolbar-grp"),this.mceStatusbar=this.container.querySelector(".mce-statusbar")),this.control=tinymce.ui.Factory.create({type:"panel",classes:"inline-toolbar",layout:"stack",items:[{type:"toolbar",items:n}]})}return l(t,[{key:"remove",value:function(){return this.control.remove(),this}},{key:"hide",value:function(){return this.control.hide(),this}},{key:"show",value:function(){return this.control.show(),this}},{key:"renderTo",value:function(t){return this.control.renderTo(t),this}},{key:"setStyles",value:function(t){return tinymce.DOM.setStyles(this.control.getEl(),t),this}},{key:"reposition",value:function(t){if(!t)return this;var e=window.pageXOffset||document.documentElement.scrollLeft,n=window.pageYOffset||document.documentElement.scrollTop,o=window.innerWidth,i=window.innerHeight,r=this.mceIframe?this.mceIframe.getBoundingClientRect():{top:0,right:o,bottom:i,left:0,width:o,height:i},l=this.control.getEl(),c=l.offsetWidth,a=l.offsetHeight,s=t.getBoundingClientRect(),u=(s.left+s.right)/2,f=a+8+5,d=this.mceToolbar?this.mceToolbar.getBoundingClientRect().bottom:0,m=this.mceStatusbar?i-this.mceStatusbar.getBoundingClientRect().top:0,h=Math.max(0,d,r.top),p=Math.max(0,m,i-r.bottom),g=s.top+r.top-h,b=i-r.top-s.bottom-p,y=i-h-p,k="",w=0,v=0;return g>=y||b>=y?this.hide():(this.bottom?b>=f?(k=" mce-arrow-up",w=s.bottom+r.top+n+10):g>=f&&(k=" mce-arrow-down",w=s.top+r.top+n-a-8):g>=f?(k=" mce-arrow-down",w=s.top+r.top+n-a-8):b>=f&&y/2>s.bottom+r.top-h&&(k=" mce-arrow-up",w=s.bottom+r.top+n+10),void 0===w&&(w=n+h+5),v=u-c/2+r.left+e,s.left<0||s.right>r.width?v=r.left+e+(r.width-c)/2:c>=o?(k+=" mce-arrow-full",v=0):v<0&&s.left+c>o||v+c>o&&s.right-c<0?v=(o-c)/2:v<r.left+e?(k+=" mce-arrow-left",v=s.left+r.left+e):v+c>r.width+r.left+e&&(k+=" mce-arrow-right",v=s.right-c+r.left+e),l.className=l.className.replace(/ ?mce-arrow-[\w]+/g,"")+k,this.setStyles({left:v,top:w}),this)}}]),t}();e.default=c,e.setupTinyMceInlineToolbar=r,e.shouldShowToolbar=i},"./client/src/legacy/TinyMCE_sslink.js":function(t,e,n){"use strict";function o(t){return t&&t.__esModule?t:{default:t}}Object.defineProperty(e,"__esModule",{value:!0});var i=n(1),r=o(i),l=n(0),c=o(l),a=n(3),s=o(a),u=n("./client/src/components/TinymceInlineToolbar/TinymceInlineToolbar.js"),f=n(2),d=o(f),m={init:function(t){function e(){var e=tinymce.activeEditor.selection.getNode(),n=e.getAttribute("href");n&&t.execCommand(r.default.getEditorCommandFromUrl(n))}var n=navigator.platform.toUpperCase().includes("MAC")?"⌘":"Ctrl",o=d.default._t("Admin.INSERT_LINK","Insert link"),i=d.default.inject(d.default._t("Admin.INSERT_LINK_WITH_SHORTCUT","Insert link {shortcut}"),{shortcut:"["+n+"+K]"}),l=r.default.getSortedActions("sslink",t.settings.editorIdentifier,!0).map(function(e){return Object.assign({},e,{onclick:function(){return e.onclick(t)}})});t.addButton("sslink",{icon:"link",title:i,type:"menubutton",menu:l}),t.addMenuItem("sslink",{icon:"link",text:o,menu:l}),t.addShortcut("Meta+k","Open link menu",function(){(0,s.default)('[aria-label^="'+o+'"] > button',t.container).first().click()}),t.on("preinit",function(){(0,u.setupTinyMceInlineToolbar)(t,[{type:"button",onClick:e,text:"Edit link"},{type:"button",onClick:function(){return t.execCommand("unlink")},text:"Remove link"}],["a[href]"])})}};s.default.entwine("ss",function(t){t(".insert-link__dialog-wrapper").entwine({Element:null,Data:{},Bookmark:null,onunmatch:function(){this._clearModal()},_clearModal:function(){c.default.unmountComponentAtNode(this[0])},open:function(){var t=this.getElement().getEditor().getInstance();this.setBookmark(t.selection.getBookmark(2,!0)),this.renderModal(!0)},close:function(){this.setData({}),this.renderModal(!1)},renderModal:function(){},handleInsert:function(t){this.getElement().getEditor().getInstance().selection.moveToBookmark(this.getBookmark());var e=this.buildAttributes(t);return this.insertLinkInEditor(e,t.Text),this.close(),Promise.resolve()},buildAttributes:function(t){var e=t.Anchor&&t.Anchor.length?"#"+t.Anchor:"";return{href:""+t.Link+e,target:t.TargetBlank?"_blank":"",title:t.Description}},insertLinkInEditor:function(t,e){var n=this.getElement().getEditor();n.insertLink(t,null,e),n.addUndo(),n.repaint();var o=n.getInstance(),i=o.selection;setTimeout(function(){return i&&i.collapse()},0)},getOriginalAttributes:function(){var e=this.getElement().getEditor(),n=t(e.getSelectedNode()),o=(n.attr("href")||"").split("#");return{Link:o[0]||"",Anchor:o[1]||"",Description:n.attr("title"),TargetBlank:!!n.attr("target")}}})}),tinymce.PluginManager.add("sslink",function(t){return m.init(t)}),e.default=m},0:function(t,e){t.exports=ReactDom},1:function(t,e){t.exports=TinyMCEActionRegistrar},2:function(t,e){t.exports=i18n},3:function(t,e){t.exports=jQuery}});