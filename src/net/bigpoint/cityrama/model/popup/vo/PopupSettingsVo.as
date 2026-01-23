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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         PAPER_POPUP = "PAPER_POPUP";
         if(_loc2_ || _loc1_)
         {
            addr0036:
            MINI_POPUP = "MINI_POPUP";
            if(_loc2_ || _loc2_)
            {
               FEATURE_POPUP = "FEATURE_POPUP";
               if(_loc2_)
               {
                  addr005a:
                  STACK_POPUP = "STACK_POPUP";
               }
               §§goto(addr0063);
            }
            §§goto(addr005a);
         }
         addr0063:
         return;
      }
      §§goto(addr0036);
      
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            super();
            if(_loc2_)
            {
               if(param1 == null)
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     §§goto(addr0054);
                  }
               }
               this._type = param1;
               return;
            }
         }
         addr0054:
         throw new Error("PopupSettingsVo type cannots be null");
      }
      
      public function get modal() : Boolean
      {
         return this._modal;
      }
      
      public function set modal(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._modal = param1;
         }
      }
      
      public function get viewClass() : Class
      {
         return this._viewClass;
      }
      
      public function set viewClass(param1:Class) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._viewClass = param1;
         }
      }
      
      public function get mediatorClass() : Class
      {
         return this._mediatorClass;
      }
      
      public function set mediatorClass(param1:Class) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._mediatorClass = param1;
         }
      }
      
      public function get mediatorName() : String
      {
         return this._mediatorName;
      }
      
      public function set mediatorName(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._mediatorName = param1;
         }
      }
      
      public function get data() : Object
      {
         return this._data;
      }
      
      public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._data = param1;
         }
      }
      
      public function creationComplete(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            dispatchEvent(new PopupEvent(PopupEvent.POPUP_CREATED,true,false));
         }
      }
      
      public function popupRemoved(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            dispatchEvent(new PopupEvent(PopupEvent.POPUP_DESTROYED,true,false));
         }
      }
      
      public function get requiredSWFLibs() : Array
      {
         return this._requiredSWFLibs;
      }
      
      public function set requiredSWFLibs(param1:Array) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._requiredSWFLibs = param1;
         }
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get openedByUserAxn() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.type);
            if(_loc2_ || _loc1_)
            {
               §§push(PopupSettingsVo.STACK_POPUP);
               if(_loc2_ || Boolean(this))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_)
                  {
                     §§push(!§§pop());
                     if(!_loc1_)
                     {
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        if(_temp_4)
                        {
                           if(!_loc1_)
                           {
                              §§pop();
                              if(_loc2_)
                              {
                                 addr006e:
                                 addr006b:
                                 §§push(this.type == FEATURE_POPUP);
                                 if(_loc2_)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc1_)
                                    {
                                       addr007a:
                                       if(§§pop())
                                       {
                                          if(!_loc1_)
                                          {
                                             addr0083:
                                             §§push(true);
                                             if(_loc2_)
                                             {
                                                §§goto(addr0089);
                                             }
                                          }
                                          else
                                          {
                                             addr008a:
                                             §§push(this._openedByUserAxn);
                                          }
                                          §§goto(addr008e);
                                       }
                                       §§goto(addr008a);
                                    }
                                 }
                                 §§goto(addr008e);
                              }
                              §§goto(addr0083);
                           }
                           §§goto(addr0089);
                        }
                        §§goto(addr007a);
                     }
                     addr0089:
                     return §§pop();
                  }
                  addr008e:
                  return §§pop();
               }
               §§goto(addr006e);
            }
            §§goto(addr006b);
         }
         §§goto(addr008a);
      }
      
      public function set openedByUserAxn(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._openedByUserAxn = param1;
         }
      }
      
      public function get noModeReset() : Boolean
      {
         return this._noModeReset;
      }
      
      public function set noModeReset(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._noModeReset = param1;
         }
      }
   }
}

