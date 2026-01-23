package net.bigpoint.cityrama.model.popup.vo
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import net.bigpoint.cityrama.view.popup.events.PopupEvent;
   
   public class PopupSettingsVo extends EventDispatcher
   {
      
      public static const PAPER_POPUP:String = "PAPER_POPUP";
      
      public static const MINI_POPUP:String = "MINI_POPUP";
      
      public static const FEATURE_POPUP:String = "FEATURE_POPUP";
      
      public static const STACK_POPUP:String = "STACK_POPUP";
      
      private var _modal:Boolean;
      
      private var _data:Object;
      
      private var _viewClass:Class;
      
      private var _mediatorName:String;
      
      private var _mediatorClass:Class;
      
      private var _requiredSWFLibs:Array;
      
      private var _type:String;
      
      private var _openedByUserAxn:Boolean = true;
      
      private var _noModeReset:Boolean = false;
      
      public function PopupSettingsVo(param1:String)
      {
         super();
         if(param1 == null)
         {
            throw new Error("PopupSettingsVo type cannots be null");
         }
         this._type = param1;
      }
      
      public function get modal() : Boolean
      {
         return this._modal;
      }
      
      public function set modal(param1:Boolean) : void
      {
         this._modal = param1;
      }
      
      public function get viewClass() : Class
      {
         return this._viewClass;
      }
      
      public function set viewClass(param1:Class) : void
      {
         this._viewClass = param1;
      }
      
      public function get mediatorClass() : Class
      {
         return this._mediatorClass;
      }
      
      public function set mediatorClass(param1:Class) : void
      {
         this._mediatorClass = param1;
      }
      
      public function get mediatorName() : String
      {
         return this._mediatorName;
      }
      
      public function set mediatorName(param1:String) : void
      {
         this._mediatorName = param1;
      }
      
      public function get data() : Object
      {
         return this._data;
      }
      
      public function set data(param1:Object) : void
      {
         this._data = param1;
      }
      
      public function creationComplete(param1:Event = null) : void
      {
         dispatchEvent(new PopupEvent(PopupEvent.POPUP_CREATED,true,false));
      }
      
      public function popupRemoved(param1:Event = null) : void
      {
         dispatchEvent(new PopupEvent(PopupEvent.POPUP_DESTROYED,true,false));
      }
      
      public function get requiredSWFLibs() : Array
      {
         return this._requiredSWFLibs;
      }
      
      public function set requiredSWFLibs(param1:Array) : void
      {
         this._requiredSWFLibs = param1;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get openedByUserAxn() : Boolean
      {
         if(this.type != PopupSettingsVo.STACK_POPUP && this.type != FEATURE_POPUP)
         {
            return true;
         }
         return this._openedByUserAxn;
      }
      
      public function set openedByUserAxn(param1:Boolean) : void
      {
         this._openedByUserAxn = param1;
      }
      
      public function get noModeReset() : Boolean
      {
         return this._noModeReset;
      }
      
      public function set noModeReset(param1:Boolean) : void
      {
         this._noModeReset = param1;
      }
   }
}

