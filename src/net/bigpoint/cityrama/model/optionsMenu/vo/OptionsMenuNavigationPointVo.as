package net.bigpoint.cityrama.model.optionsMenu.vo
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class OptionsMenuNavigationPointVo extends EventDispatcher
   {
      
      public static const CHANGED:String = "CHANGED";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         CHANGED = "CHANGED";
      }
      
      private var _name:String;
      
      private var _notificationOnSelect:String;
      
      private var _visualPresentation:DisplayObject;
      
      private var _enabled:Boolean;
      
      private var _selected:Boolean;
      
      private var _toolTip:String;
      
      private var _noToggle:Boolean = false;
      
      public function OptionsMenuNavigationPointVo(param1:String, param2:Boolean = true, param3:Boolean = true, param4:Boolean = false, param5:String = null)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(_loc6_ || param2)
         {
            super();
            if(!(_loc7_ && Boolean(this)))
            {
               this.name = param1;
               if(_loc6_)
               {
                  addr0056:
                  this.notificationOnSelect = param5;
                  if(!(_loc7_ && Boolean(this)))
                  {
                     addr006b:
                     this.selected = param2;
                     if(_loc6_)
                     {
                        §§goto(addr0076);
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr006b);
            }
            addr0076:
            this._enabled = param3;
            if(!_loc7_)
            {
               addr0081:
               this._noToggle = param4;
            }
            return;
         }
         §§goto(addr0056);
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._selected = param1;
            if(!_loc3_)
            {
               dispatchEvent(new Event(CHANGED));
            }
         }
      }
      
      public function get notificationOnSelect() : String
      {
         return this._notificationOnSelect;
      }
      
      public function set notificationOnSelect(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._notificationOnSelect = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._name = param1;
         }
      }
      
      public function get toolTip() : String
      {
         return this._toolTip;
      }
      
      public function set toolTip(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._toolTip = param1;
         }
      }
      
      public function get visualPresentation() : DisplayObject
      {
         return this._visualPresentation;
      }
      
      public function set visualPresentation(param1:DisplayObject) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._visualPresentation = param1;
         }
      }
   }
}

