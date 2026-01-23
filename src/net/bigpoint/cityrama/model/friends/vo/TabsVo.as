package net.bigpoint.cityrama.model.friends.vo
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.interfaces.IInactiveItemrendererVo;
   
   public class TabsVo implements IInactiveItemrendererVo, IEventDispatcher
   {
      
      private var _tabLabel:String;
      
      private var _styleName:String;
      
      private var _1609594047enabled:Boolean;
      
      private var _hasNews:Boolean;
      
      private var _icon:String;
      
      public var tooltip:String;
      
      private var _bindingEventDispatcher:EventDispatcher;
      
      public function TabsVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
            if(_loc1_)
            {
               super();
            }
         }
      }
      
      public function get hasNews() : Boolean
      {
         return this._hasNews;
      }
      
      public function set hasNews(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._hasNews = param1;
         }
      }
      
      public function get styleName() : String
      {
         return this._styleName;
      }
      
      public function set styleName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._styleName = param1;
         }
      }
      
      public function get tabLabel() : String
      {
         return this._tabLabel;
      }
      
      public function set tabLabel(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._tabLabel = param1;
         }
      }
      
      public function get isLocked() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(this.enabled);
         if(!(_loc1_ && _loc1_))
         {
            return !§§pop();
         }
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && param1))
         {
            §§push(this);
            §§push(param1);
            if(_loc2_ || _loc3_)
            {
               §§push(!§§pop());
            }
            §§pop().enabled = §§pop();
         }
      }
      
      public function get icon() : String
      {
         return this._icon;
      }
      
      public function set icon(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._icon = param1;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get enabled() : Boolean
      {
         return this._1609594047enabled;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1609594047enabled;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1609594047enabled = param1;
                  addr003e:
                  if(_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"enabled",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0055);
            }
            addr007b:
            return;
         }
         §§goto(addr003e);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(_loc6_)
         {
            this._bindingEventDispatcher.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this._bindingEventDispatcher.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this._bindingEventDispatcher.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            this._bindingEventDispatcher.removeEventListener(param1,param2,param3);
         }
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this._bindingEventDispatcher.willTrigger(param1);
      }
   }
}

