package net.bigpoint.cityrama.view.featuredEvent
{
   import flash.events.Event;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.featuredEvent.FeaturedLayerTabProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.cityWheel.FeaturedEventCityWheelMediator;
   import net.bigpoint.cityrama.view.featuredEvent.components.FeaturedEventLayer;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.mysteryBuilding.FeaturedEventMysteryMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.events.IndexChangeEvent;
   
   public class FeaturedEventLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "FeaturedEventLayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
      {
         NAME = "FeaturedEventLayerMediator";
      }
      
      private var _tabProxy:FeaturedLayerTabProxy;
      
      public function FeaturedEventLayerMediator(param1:String, param2:FeaturedEventLayer)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1,param2);
            if(!_loc3_)
            {
               §§goto(addr0021);
            }
            §§goto(addr002d);
         }
         addr0021:
         this.prepareProxies();
         if(_loc4_)
         {
            addr002d:
            this.setupListeners();
         }
      }
      
      private function prepareProxies() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this._tabProxy = facade.retrieveProxy(FeaturedLayerTabProxy.NAME) as FeaturedLayerTabProxy;
         }
      }
      
      private function setTabs() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            this.component.tabs = this._tabProxy.tabs;
         }
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.onRemove();
            if(_loc1_ || _loc2_)
            {
               this.removeListener();
               if(_loc1_ || Boolean(this))
               {
                  this._tabProxy.selectedIndex = -1;
                  if(_loc1_ || _loc2_)
                  {
                     §§goto(addr0064);
                  }
                  §§goto(addr007c);
               }
            }
            addr0064:
            facade.removeMediator(FeaturedEventCityWheelMediator.NAME);
            if(!(_loc2_ && Boolean(this)))
            {
               addr007c:
               facade.removeMediator(FeaturedEventMysteryMediator.NAME);
            }
            return;
         }
         §§goto(addr007c);
      }
      
      private function removeListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            sendNotification(VirtualTaskNotificationInterest.FEATURED_EVENT_LAYER_CLOSED);
            if(_loc2_ || _loc2_)
            {
               §§push(this.component);
               if(_loc2_)
               {
                  §§pop().removeEventListener(Event.CLOSE,this.handleClose);
                  if(!(_loc1_ && _loc1_))
                  {
                     addr0067:
                     this.component.removeEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
                     addr0064:
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0067);
            }
            §§goto(addr0064);
         }
         addr0074:
      }
      
      private function setupListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.component);
            if(!(_loc1_ && _loc1_))
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(!_loc1_)
               {
                  addr0045:
                  this.component.addEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
               }
               §§goto(addr0052);
            }
            §§goto(addr0045);
         }
         addr0052:
      }
      
      private function handleTabIndexChanged(param1:IndexChangeEvent = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1)
            {
               if(_loc3_ || _loc3_)
               {
                  if(param1.newIndex != param1.oldIndex)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        this._tabProxy.selectedIndex = param1.newIndex;
                        if(!_loc2_)
                        {
                           addr006b:
                           this.cleanContainer();
                           if(!_loc2_)
                           {
                              addr0076:
                              facade.sendNotification(ApplicationNotificationConstants.FEATURED_LAYER_TAB_CHANGE,this.component);
                           }
                        }
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr006b);
               }
               addr0084:
               return;
            }
            §§goto(addr006b);
         }
         §§goto(addr0076);
      }
      
      private function cleanContainer() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.component);
            if(!(_loc2_ && Boolean(this)))
            {
               if(§§pop().contentGroup)
               {
                  if(_loc1_)
                  {
                     addr003e:
                     this.component.contentGroup.removeAllElements();
                  }
               }
               §§goto(addr0045);
            }
            §§goto(addr003e);
         }
         addr0045:
      }
      
      private function handleClose(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:* = param1.getName();
         switch(0)
         {
         }
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.setTabs();
            if(_loc3_ || _loc2_)
            {
               if(param1)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     §§push(this._tabProxy);
                     if(!_loc2_)
                     {
                        §§pop().selectedIndex = param1 as int;
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0088:
                           this.handleTabIndexChanged();
                           if(!_loc2_)
                           {
                              §§goto(addr00a2);
                           }
                        }
                        §§goto(addr00bc);
                     }
                     addr00a2:
                     addr009e:
                     if(this._tabProxy.selectedIndex != FeaturedLayerTabProxy.CITYWHEEL_TAB_INDEX)
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr00bc:
                           this.component.tabBar.addEventListener(FlexEvent.CREATION_COMPLETE,this.setTabBarSelectedIndex);
                        }
                     }
                     §§goto(addr00ce);
                  }
                  addr00ce:
                  return;
               }
               §§push(this._tabProxy);
               if(_loc3_ || Boolean(this))
               {
                  §§pop().selectedIndex = FeaturedLayerTabProxy.CITYWHEEL_TAB_INDEX;
                  if(!_loc2_)
                  {
                     §§goto(addr0088);
                  }
                  §§goto(addr009e);
               }
               §§goto(addr00a2);
            }
            §§goto(addr0088);
         }
         §§goto(addr009e);
      }
      
      private function setTabBarSelectedIndex(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            §§push(this.component);
            if(!(_loc2_ && _loc2_))
            {
               §§pop().tabBar.removeEventListener(FlexEvent.CREATION_COMPLETE,this.setTabBarSelectedIndex);
               if(!_loc2_)
               {
                  addr0056:
                  this.component.tabBar.selectedIndex = this._tabProxy.selectedIndex;
                  addr0053:
               }
               return;
            }
            §§goto(addr0056);
         }
         §§goto(addr0053);
      }
      
      public function get component() : FeaturedEventLayer
      {
         return super.viewComponent as FeaturedEventLayer;
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            sendNotification(VirtualTaskNotificationInterest.FEATURED_EVENT_LAYER_OPENED);
         }
      }
   }
}

