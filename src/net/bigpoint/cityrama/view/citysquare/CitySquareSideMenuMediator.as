package net.bigpoint.cityrama.view.citysquare
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.view.citysquare.ui.components.CitySquareSideMenu;
   import net.bigpoint.cityrama.view.citysquare.ui.components.CitySquareSideMenuTooltip;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CitySquareSideMenuMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "CitySquareSideMenuMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc1_)
      {
         NAME = "CitySquareSideMenuMediator";
      }
      
      private var _sideMenuTooltip:CitySquareSideMenuTooltip;
      
      private var _evP:EventProxy;
      
      public function CitySquareSideMenuMediator(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super(NAME,param1);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.onRegister();
            if(!(_loc1_ && Boolean(this)))
            {
               this.setupListener();
               if(_loc2_ || Boolean(this))
               {
                  addr004d:
                  this.setVisibility();
               }
            }
            return;
         }
         §§goto(addr004d);
      }
      
      private function setupListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.component);
            if(!_loc1_)
            {
               §§push(CitySquareSideMenu.CLICK_INFO);
               if(!_loc1_)
               {
                  §§pop().addEventListener(§§pop(),this.handleClick);
                  if(!_loc1_)
                  {
                     addr0040:
                     §§push(this.component);
                     if(!_loc1_)
                     {
                        addr0052:
                        §§push(CitySquareSideMenu.SHOW_INFO);
                        if(!_loc1_)
                        {
                           §§pop().addEventListener(§§pop(),this.handleShow);
                           if(!(_loc1_ && _loc1_))
                           {
                              addr007b:
                              this.component.addEventListener(CitySquareSideMenu.HIDE_INFO,this.handleHide);
                              addr0075:
                              addr0072:
                           }
                           return;
                        }
                        §§goto(addr007b);
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr007b);
            }
            §§goto(addr0052);
         }
         §§goto(addr0040);
      }
      
      private function handleHide(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            param1.stopPropagation();
            if(!_loc2_)
            {
               this.component.menuContainer.removeAllElements();
            }
         }
      }
      
      private function handleShow(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            param1.stopPropagation();
            if(!_loc3_)
            {
               if(!this._sideMenuTooltip)
               {
                  if(_loc2_)
                  {
                     addr0042:
                     this._sideMenuTooltip = new CitySquareSideMenuTooltip();
                     if(_loc2_)
                     {
                        addr0052:
                        this.component.menuContainer.addElement(this._sideMenuTooltip);
                     }
                  }
                  §§goto(addr0060);
               }
               §§goto(addr0052);
            }
            §§goto(addr0042);
         }
         addr0060:
      }
      
      private function handleClick(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            param1.stopPropagation();
            if(_loc3_)
            {
               this.component.menuContainer.removeAllElements();
               if(_loc3_)
               {
                  addr0043:
                  sendNotification(ApplicationNotificationConstants.CITYSQUARE_CLICKED);
               }
               §§goto(addr004d);
            }
            §§goto(addr0043);
         }
         addr004d:
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.EVENTS_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = param1.getName();
         if(_loc4_)
         {
            if(ApplicationNotificationConstants.EVENTS_CHANGED === _loc2_)
            {
               addr004e:
               §§push(0);
               if(_loc4_)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  this.setVisibility();
                  if(_loc4_)
                  {
                  }
            }
            return;
         }
         §§goto(addr004e);
      }
      
      private function setVisibility() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.component.includeInLayout = this.component.visible = this.showSideMenu();
         }
      }
      
      private function showSideMenu() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(this.eventProxy.currentRunningEventID != 0)
            {
               if(_loc1_ || Boolean(this))
               {
                  §§push(true);
                  if(_loc1_ || _loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr004a:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr004a);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this.removeListener();
            if(_loc1_ || _loc2_)
            {
               super.onRemove();
            }
         }
      }
      
      private function removeListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.component);
            if(!_loc2_)
            {
               §§push(CitySquareSideMenu.CLICK_INFO);
               if(!(_loc2_ && _loc2_))
               {
                  §§pop().removeEventListener(§§pop(),this.handleClick);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr004f:
                     §§push(this.component);
                     if(_loc1_)
                     {
                        addr0061:
                        §§push(CitySquareSideMenu.SHOW_INFO);
                        if(_loc1_)
                        {
                           §§pop().removeEventListener(§§pop(),this.handleShow);
                           if(!(_loc2_ && _loc2_))
                           {
                              addr008a:
                              this.component.removeEventListener(CitySquareSideMenu.HIDE_INFO,this.handleHide);
                              addr0084:
                              addr0081:
                           }
                           return;
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0081);
               }
               §§goto(addr008a);
            }
            §§goto(addr0061);
         }
         §§goto(addr004f);
      }
      
      public function get component() : CitySquareSideMenu
      {
         return super.viewComponent as CitySquareSideMenu;
      }
      
      private function get eventProxy() : EventProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            §§push(this._evP);
            if(_loc1_ || Boolean(this))
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     addr0041:
                     this._evP = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
                  }
               }
               return this._evP;
            }
         }
         §§goto(addr0041);
      }
   }
}

