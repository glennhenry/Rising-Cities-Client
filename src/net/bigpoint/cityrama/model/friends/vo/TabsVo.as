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
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function TabsVo()
      {
         super();
      }
      
      public function get hasNews() : Boolean
      {
         return this._hasNews;
      }
      
      public function set hasNews(param1:Boolean) : void
      {
         this._hasNews = param1;
      }
      
      public function get styleName() : String
      {
         return this._styleName;
      }
      
      public function set styleName(param1:String) : void
      {
         this._styleName = param1;
      }
      
      public function get tabLabel() : String
      {
         return this._tabLabel;
      }
      
      public function set tabLabel(param1:String) : void
      {
         this._tabLabel = param1;
      }
      
      public function get isLocked() : Boolean
      {
         return !this.enabled;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         this.enabled = !param1;
      }
      
      public function get icon() : String
      {
         return this._icon;
      }
      
      public function set icon(param1:String) : void
      {
         this._icon = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get enabled() : Boolean
      {
         return this._1609594047enabled;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         var _loc2_:Object = this._1609594047enabled;
         if(_loc2_ !== param1)
         {
            this._1609594047enabled = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"enabled",_loc2_,param1));
            }
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this._bindingEventDispatcher.addEventListener(param1,param2,param3,param4,param5);
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
         this._bindingEventDispatcher.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this._bindingEventDispatcher.willTrigger(param1);
      }
   }
}

