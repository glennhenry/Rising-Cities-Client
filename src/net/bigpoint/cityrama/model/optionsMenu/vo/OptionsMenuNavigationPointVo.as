package net.bigpoint.cityrama.model.optionsMenu.vo
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class OptionsMenuNavigationPointVo extends EventDispatcher
   {
      
      public static const CHANGED:String = "CHANGED";
      
      private var _name:String;
      
      private var _notificationOnSelect:String;
      
      private var _visualPresentation:DisplayObject;
      
      private var _enabled:Boolean;
      
      private var _selected:Boolean;
      
      private var _toolTip:String;
      
      private var _noToggle:Boolean = false;
      
      public function OptionsMenuNavigationPointVo(param1:String, param2:Boolean = true, param3:Boolean = true, param4:Boolean = false, param5:String = null)
      {
         super();
         this.name = param1;
         this.notificationOnSelect = param5;
         this.selected = param2;
         this._enabled = param3;
         this._noToggle = param4;
      }
      
      public function get noToggle() : Boolean
      {
         return this._noToggle;
      }
      
      public function get enabled() : Boolean
      {
         return this._enabled;
      }
      
      public function get selected() : Boolean
      {
         return this._selected;
      }
      
      public function set selected(param1:Boolean) : void
      {
         this._selected = param1;
         dispatchEvent(new Event(CHANGED));
      }
      
      public function get notificationOnSelect() : String
      {
         return this._notificationOnSelect;
      }
      
      public function set notificationOnSelect(param1:String) : void
      {
         this._notificationOnSelect = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get toolTip() : String
      {
         return this._toolTip;
      }
      
      public function set toolTip(param1:String) : void
      {
         this._toolTip = param1;
      }
      
      public function get visualPresentation() : DisplayObject
      {
         return this._visualPresentation;
      }
      
      public function set visualPresentation(param1:DisplayObject) : void
      {
         this._visualPresentation = param1;
      }
   }
}

