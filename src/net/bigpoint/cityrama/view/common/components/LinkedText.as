package net.bigpoint.cityrama.view.common.components
{
   import flash.events.Event;
   import flash.ui.Mouse;
   import flashx.textLayout.conversion.TextConverter;
   import flashx.textLayout.elements.FlowElement;
   import flashx.textLayout.elements.FlowGroupElement;
   import flashx.textLayout.elements.LinkElement;
   import flashx.textLayout.events.FlowElementMouseEvent;
   import flashx.textLayout.formats.TextLayoutFormat;
   import net.bigpoint.cityrama.model.field.FieldCursorProxy;
   import net.bigpoint.cityrama.view.common.events.LinkedTextEvent;
   import spark.components.RichEditableText;
   import spark.utils.TextFlowUtil;
   
   public class LinkedText extends RichEditableText
   {
      
      public static const LINK_START_PLAYFIELDITEM:String = "{linkStart_playfieldItem}";
      
      public static const LINK_END_PLAYFIELDITEM:String = "{linkEnd_playfieldItem}";
      
      private var _links:Vector.<LinkElement>;
      
      private var _linkParameter:Array;
      
      private var _linkNormalFormat:TextLayoutFormat;
      
      private var _linkHoverFormat:TextLayoutFormat;
      
      private var _stylePropertyChanged:Boolean;
      
      public function LinkedText()
      {
         super();
         mouseChildren = false;
         editable = false;
         selectable = false;
         useHandCursor = false;
         buttonMode = false;
         this.setFocus();
         addEventListener(Event.REMOVED_FROM_STAGE,this.removedFromStageHandler);
      }
      
      private static function replaceLinks(param1:String) : String
      {
         var _loc2_:RegExp = null;
         var _loc3_:String = null;
         if(param1.indexOf(LINK_START_PLAYFIELDITEM) != -1)
         {
            _loc2_ = /{linkStart_playfieldItem}/g;
            _loc3_ = "<a href=\'LINK_TYPE_PLAYFIELDITEM\' style=\'cursor: default\' target=\'null\'>";
            param1 = param1.replace(_loc2_,_loc3_);
         }
         if(param1.indexOf(LINK_END_PLAYFIELDITEM) != -1)
         {
            _loc2_ = /{linkEnd_playfieldItem}/g;
            _loc3_ = "</a>";
            param1 = param1.replace(_loc2_,_loc3_);
         }
         return param1;
      }
      
      private static function findLinkElement(param1:FlowGroupElement, param2:Vector.<LinkElement>) : void
      {
         var _loc5_:FlowElement = null;
         var _loc6_:FlowGroupElement = null;
         var _loc3_:Array = [];
         var _loc4_:int = 0;
         while(_loc4_ < param1.numChildren)
         {
            _loc5_ = param1.getChildAt(_loc4_);
            if(_loc5_ is LinkElement)
            {
               param2.push(_loc5_ as LinkElement);
            }
            else if(_loc5_ is FlowGroupElement)
            {
               _loc3_.push(_loc5_);
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc3_.length)
         {
            _loc6_ = _loc3_[_loc4_];
            findLinkElement(_loc6_,param2);
            _loc4_++;
         }
      }
      
      private static function setNormalCursor() : void
      {
         Mouse.cursor = FieldCursorProxy.CURSOR_NORMAL;
         Mouse.hide();
         Mouse.show();
      }
      
      override public function set text(param1:String) : void
      {
         var _loc4_:LinkElement = null;
         if(!param1 || param1 == "")
         {
            this.removeLinkListener();
            return;
         }
         param1 = replaceLinks(param1);
         textFlow = TextFlowUtil.importFromString(param1,TextConverter.TEXT_FIELD_HTML_FORMAT);
         this._links = new Vector.<LinkElement>();
         findLinkElement(textFlow,this._links);
         var _loc2_:uint = uint(this.getStyle("linkNormalColor"));
         var _loc3_:uint = uint(this.getStyle("linkHoverColor"));
         if(_loc2_)
         {
            this._linkNormalFormat = new TextLayoutFormat();
            this._linkNormalFormat.color = _loc2_;
         }
         if(_loc3_)
         {
            this._linkHoverFormat = new TextLayoutFormat();
            this._linkHoverFormat.color = _loc3_;
         }
         for each(_loc4_ in this._links)
         {
            _loc4_.addEventListener(FlowElementMouseEvent.CLICK,this.handleClickEvent,false,0,true);
            _loc4_.addEventListener(FlowElementMouseEvent.ROLL_OVER,this.handleMouseOver,false,0,true);
            _loc4_.addEventListener(FlowElementMouseEvent.ROLL_OUT,this.handleMouseOut,false,0,true);
            if(this._linkNormalFormat)
            {
               _loc4_.linkNormalFormat = this._linkNormalFormat;
            }
            if(this._linkHoverFormat)
            {
               _loc4_.linkHoverFormat = this._linkHoverFormat;
            }
         }
      }
      
      private function handleMouseOut(param1:FlowElementMouseEvent) : void
      {
         param1.preventDefault();
         param1.stopImmediatePropagation();
         setNormalCursor();
         param1.flowElement.linkHoverFormat = this._linkNormalFormat;
      }
      
      private function handleMouseOver(param1:FlowElementMouseEvent) : void
      {
         param1.preventDefault();
         param1.stopImmediatePropagation();
         setNormalCursor();
         param1.flowElement.linkHoverFormat = this._linkHoverFormat;
      }
      
      private function handleClickEvent(param1:FlowElementMouseEvent) : void
      {
         param1.preventDefault();
         param1.stopImmediatePropagation();
         setNormalCursor();
         if(param1.flowElement is LinkElement)
         {
            if(this._linkParameter == null || this._linkParameter.length == 0)
            {
               this._linkParameter = [];
               this._linkParameter.length = this._links.length;
            }
            dispatchEvent(new LinkedTextEvent(LinkedTextEvent.LINK_CLICKED,true,true,LinkElement(param1.flowElement).href,[this._linkParameter[this._links.indexOf(LinkElement(param1.flowElement))]]));
         }
      }
      
      private function removedFromStageHandler(param1:Event) : void
      {
         this.removeLinkListener();
      }
      
      private function removeLinkListener() : void
      {
         var _loc1_:LinkElement = null;
         if(this._links)
         {
            for each(_loc1_ in this._links)
            {
               _loc1_.removeEventListener(FlowElementMouseEvent.CLICK,this.handleClickEvent);
               _loc1_.removeEventListener(FlowElementMouseEvent.ROLL_OVER,this.handleMouseOver);
               _loc1_.removeEventListener(FlowElementMouseEvent.ROLL_OUT,this.handleMouseOut);
            }
         }
      }
      
      override public function styleChanged(param1:String) : void
      {
         super.styleChanged(param1);
         if(param1 == "linkNormalColor" || param1 == "linkHoverColor")
         {
            this._stylePropertyChanged = true;
            invalidateDisplayList();
         }
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:LinkElement = null;
         if(this._stylePropertyChanged == true)
         {
            this._stylePropertyChanged = false;
            _loc3_ = uint(this.getStyle("linkNormalColor"));
            _loc4_ = uint(this.getStyle("linkHoverColor"));
            if(_loc3_)
            {
               this._linkNormalFormat.color = _loc3_;
            }
            if(_loc4_)
            {
               this._linkHoverFormat.color = _loc4_;
            }
            for each(_loc5_ in this._links)
            {
               if(this._linkNormalFormat)
               {
                  _loc5_.linkNormalFormat = this._linkNormalFormat;
               }
               if(this._linkHoverFormat)
               {
                  _loc5_.linkHoverFormat = this._linkHoverFormat;
               }
            }
         }
         super.updateDisplayList(param1,param2);
      }
      
      public function set linkParameter(param1:Array) : void
      {
         this._linkParameter = param1;
      }
      
      public function set linksEnabled(param1:Boolean) : void
      {
         this.mouseEnabled = param1;
      }
   }
}

