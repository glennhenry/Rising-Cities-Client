package net.bigpoint.cityrama.view.hud
{
   import flash.display.Sprite;
   import flash.display.StageDisplayState;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.LayoutProxy;
   import net.bigpoint.cityrama.model.menu.HUDProxy;
   import net.bigpoint.cityrama.model.menu.vo.HUDVo;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.hud.ui.components.HUDBar;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class HUDMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "HUDMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "HUDMediator";
      }
      
      private var component:HUDBar;
      
      private var _hudProxy:HUDProxy;
      
      private var _flashVarsProxy:FlashVarsProxy;
      
      private var _soundProxy:SoundProxy;
      
      private var _hudData:HUDVo;
      
      private var _oldEnergyMod:Number = -1;
      
      private var _oldMoodMod:Number = -1;
      
      private var _layoutProxy:LayoutProxy;
      
      private var dead:Boolean;
      
      public function HUDMediator(param1:String, param2:HUDBar)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param2))
         {
            super(param1);
            if(_loc3_)
            {
               this.component = param2;
               if(_loc3_ || Boolean(param2))
               {
                  this._hudProxy = facade.retrieveProxy(HUDProxy.NAME) as HUDProxy;
                  addr003b:
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     this._flashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
                     if(_loc3_)
                     {
                        this._layoutProxy = super.facade.retrieveProxy(LayoutProxy.NAME) as LayoutProxy;
                        if(_loc3_ || Boolean(this))
                        {
                           addr00ab:
                           this._hudData = this._hudProxy.hudVo;
                           if(!_loc4_)
                           {
                              addr00bd:
                              this.setHUDData();
                           }
                        }
                        §§goto(addr00c2);
                     }
                     §§goto(addr00ab);
                  }
                  §§goto(addr00bd);
               }
               addr00c2:
               return;
            }
            §§goto(addr003b);
         }
         §§goto(addr00ab);
      }
      
      private function setHUDData() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            this.component.data = this._hudData;
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
            if(_loc1_ || _loc2_)
            {
               §§push(this.component);
               if(!_loc2_)
               {
                  §§push("addCC");
                  if(!_loc2_)
                  {
                     §§pop().addEventListener(§§pop(),this.handleAddCC);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(this.component);
                        if(!_loc2_)
                        {
                           §§push("addDD");
                           if(!_loc2_)
                           {
                              §§pop().addEventListener(§§pop(),this.handleAddDD);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(this.component);
                                 if(!_loc2_)
                                 {
                                    addr0090:
                                    §§push("addPP");
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       §§pop().addEventListener(§§pop(),this.handleAddPP);
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          addr00bf:
                                          §§push(this.component);
                                          if(!_loc2_)
                                          {
                                             §§push("logout");
                                             if(_loc1_ || Boolean(this))
                                             {
                                                addr00d8:
                                                §§pop().addEventListener(§§pop(),this.handleLogout);
                                                if(!_loc2_)
                                                {
                                                   §§push(this.component);
                                                   if(_loc1_)
                                                   {
                                                      addr00ee:
                                                      §§push("support");
                                                      if(!_loc2_)
                                                      {
                                                         §§pop().addEventListener(§§pop(),this.handleSupport);
                                                         if(!(_loc2_ && _loc1_))
                                                         {
                                                            addr010c:
                                                            §§push(this.component);
                                                            if(_loc1_ || _loc1_)
                                                            {
                                                               §§push("news");
                                                               if(!(_loc2_ && Boolean(this)))
                                                               {
                                                                  addr012d:
                                                                  §§pop().addEventListener(§§pop(),this.handleNews);
                                                                  if(!_loc2_)
                                                                  {
                                                                     addr013a:
                                                                     §§push(this.component);
                                                                     if(_loc1_ || Boolean(this))
                                                                     {
                                                                        addr014b:
                                                                        §§push("forum");
                                                                        if(!(_loc2_ && _loc1_))
                                                                        {
                                                                           addr0166:
                                                                           §§pop().addEventListener(§§pop(),this.handleForum);
                                                                           if(!(_loc2_ && _loc2_))
                                                                           {
                                                                              addr0182:
                                                                              this.component.addEventListener("openLevelPreview",this.handleOpenLevelPreview);
                                                                              addr017f:
                                                                              addr017b:
                                                                           }
                                                                           §§goto(addr018a);
                                                                        }
                                                                        §§goto(addr0182);
                                                                     }
                                                                     §§goto(addr017f);
                                                                  }
                                                                  §§goto(addr018a);
                                                               }
                                                               §§goto(addr0182);
                                                            }
                                                            §§goto(addr017f);
                                                         }
                                                         addr018a:
                                                         return;
                                                      }
                                                      §§goto(addr012d);
                                                   }
                                                   §§goto(addr014b);
                                                }
                                                §§goto(addr017b);
                                             }
                                             §§goto(addr0166);
                                          }
                                          §§goto(addr017f);
                                       }
                                       §§goto(addr013a);
                                    }
                                    §§goto(addr00d8);
                                 }
                                 §§goto(addr00ee);
                              }
                              §§goto(addr017b);
                           }
                           §§goto(addr0182);
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr010c);
                  }
                  §§goto(addr012d);
               }
               §§goto(addr00ee);
            }
            §§goto(addr00bf);
         }
         §§goto(addr013a);
      }
      
      private function handleNews(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            param1.stopPropagation();
            if(!(_loc3_ && Boolean(this)))
            {
               sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYER_REQUEST_NEWSSCREEN);
            }
         }
      }
      
      private function handleForum(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            param1.stopPropagation();
            if(_loc3_)
            {
               addr0023:
               sendNotification(ApplicationNotificationConstants.OPEN_EXTERNAL_FORUM);
            }
            return;
         }
         §§goto(addr0023);
      }
      
      private function handleAddPP(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            param1.stopPropagation();
            if(!_loc2_)
            {
               sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_PRODUCTIONPOINTS);
            }
         }
      }
      
      private function handleLogout(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            param1.stopPropagation();
            if(_loc3_)
            {
               addr0028:
               sendNotification(MiniLayerConstants.OPEN_MINI_LOGOUT);
            }
            return;
         }
         §§goto(addr0028);
      }
      
      private function handleSupport(param1:Event) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!(_loc6_ && Boolean(param1)))
         {
            param1.stopPropagation();
         }
         §§push(this._flashVarsProxy.supportURL);
         if(_loc5_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:URLRequest = new URLRequest(_loc2_);
         try
         {
            navigateToURL(_loc3_,"_blank");
         }
         catch(e:Error)
         {
         }
      }
      
      private function handleAddCC(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            param1.stopPropagation();
            if(!(_loc3_ && Boolean(param1)))
            {
               sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_VIRTUALCURRENCY);
            }
         }
      }
      
      private function handleAddDD(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            param1.stopPropagation();
            if(!_loc2_)
            {
               addr0023:
               sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
            }
            return;
         }
         §§goto(addr0023);
      }
      
      private function handleOpenLevelPreview(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            param1.stopPropagation();
            if(!(_loc3_ && Boolean(this)))
            {
               sendNotification(MiniLayerConstants.OPEN_MINI_LEVEL);
            }
         }
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.component);
            if(_loc1_)
            {
               §§push("addCC");
               if(_loc1_)
               {
                  §§pop().removeEventListener(§§pop(),this.handleAddCC);
                  if(_loc1_ || _loc1_)
                  {
                     §§push(this.component);
                     if(_loc1_)
                     {
                        §§push("addDD");
                        if(_loc1_)
                        {
                           §§pop().removeEventListener(§§pop(),this.handleAddDD);
                           if(_loc1_ || _loc1_)
                           {
                              §§push(this.component);
                              if(_loc1_)
                              {
                                 §§push("logout");
                                 if(_loc1_ || _loc2_)
                                 {
                                    §§goto(addr0083);
                                 }
                                 §§goto(addr00cd);
                              }
                              §§goto(addr00c9);
                           }
                           §§goto(addr0098);
                        }
                        addr0083:
                        §§pop().removeEventListener(§§pop(),this.handleLogout);
                        if(_loc1_ || Boolean(this))
                        {
                           addr0098:
                           §§push(this.component);
                           if(!_loc2_)
                           {
                              §§push("addPP");
                              if(!_loc2_)
                              {
                                 §§pop().removeEventListener(§§pop(),this.handleAddPP);
                                 if(_loc1_)
                                 {
                                    §§push(this.component);
                                    if(!_loc2_)
                                    {
                                       §§goto(addr00cd);
                                    }
                                    §§goto(addr00e6);
                                 }
                                 §§goto(addr00e2);
                              }
                              addr00cd:
                              §§pop().removeEventListener("support",this.handleSupport);
                              addr00c9:
                              if(_loc1_ || _loc2_)
                              {
                                 addr00e6:
                                 this.component.levelBar.removeEventListener("openLevelPreview",this.handleOpenLevelPreview);
                                 addr00e2:
                              }
                              §§goto(addr00f4);
                           }
                           §§goto(addr00e6);
                        }
                        §§goto(addr00f4);
                     }
                     §§goto(addr00e6);
                  }
                  §§goto(addr00e2);
               }
               §§goto(addr00cd);
            }
            §§goto(addr00c9);
         }
         addr00f4:
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.SHOW_GUI,ApplicationNotificationConstants.HUD_SWITCH_RESCOURCE,ApplicationNotificationConstants.LAYOUT_DISPLAYSTATE_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED,ApplicationNotificationConstants.INGAMECURRENCY_CHANGED,ApplicationNotificationConstants.MAXXP_CHANGED,ApplicationNotificationConstants.XP_CHANGED,ApplicationNotificationConstants.USERLEVEL_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED,ApplicationNotificationConstants.HAPPYNESS_PRODUCED_CHANGED,ApplicationNotificationConstants.ENERGY_CONSUMED_CHANGED,ApplicationNotificationConstants.ENERGY_PRODUCED_CHANGED,ApplicationNotificationConstants.HAPPYNESS_CONSUMED_CHANGED,ApplicationNotificationConstants.PRODUCTIONPOINTS_CHANGED,ApplicationNotificationConstants.EDUCATIONPOINTS_CHANGED,ApplicationNotificationConstants.RICHMEN_CHANGED,ApplicationNotificationConstants.WORKERS_CHANGED,ApplicationNotificationConstants.ACADEMICS_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(!(_loc4_ && Boolean(param1)))
         {
            §§push(ApplicationNotificationConstants.REALCURRENCY_CHANGED);
            if(_loc3_)
            {
               §§push(_loc2_);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        §§push(0);
                        if(_loc3_ || _loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr03ba:
                        §§push(11);
                        if(_loc3_ || _loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.INGAMECURRENCY_CHANGED);
                     if(_loc3_ || Boolean(this))
                     {
                        addr0189:
                        §§push(_loc2_);
                        if(!(_loc4_ && Boolean(this)))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_ || Boolean(_loc2_))
                              {
                                 §§push(1);
                                 if(_loc4_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr0518:
                                 §§push(17);
                                 if(_loc3_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(ApplicationNotificationConstants.MAXXP_CHANGED);
                              if(_loc3_)
                              {
                                 §§push(_loc2_);
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc4_ && Boolean(this)))
                                       {
                                          §§push(2);
                                          if(_loc4_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr04cd:
                                          §§push(16);
                                          if(_loc4_ && Boolean(param1))
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(ApplicationNotificationConstants.XP_CHANGED);
                                       if(_loc3_)
                                       {
                                          §§push(_loc2_);
                                          if(_loc3_ || Boolean(param1))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc3_ || Boolean(_loc2_))
                                                {
                                                   §§push(3);
                                                   if(_loc4_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr042b:
                                                   §§push(13);
                                                   if(_loc4_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(ApplicationNotificationConstants.USERLEVEL_CHANGED);
                                                if(_loc3_)
                                                {
                                                   §§push(_loc2_);
                                                   if(!(_loc4_ && Boolean(param1)))
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc3_ || Boolean(this))
                                                         {
                                                            §§push(4);
                                                            if(_loc4_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr04cd);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(ApplicationNotificationConstants.PRODUCTIONPOINTS_CHANGED);
                                                         if(!_loc4_)
                                                         {
                                                            addr0263:
                                                            §§push(_loc2_);
                                                            if(!_loc4_)
                                                            {
                                                               addr026a:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc4_ && Boolean(param1)))
                                                                  {
                                                                     §§push(5);
                                                                     if(_loc3_)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr042b);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(ApplicationNotificationConstants.EDUCATIONPOINTS_CHANGED);
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     addr02a4:
                                                                     §§push(_loc2_);
                                                                     if(_loc3_)
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc3_ || Boolean(this))
                                                                           {
                                                                              §§push(6);
                                                                              if(_loc4_)
                                                                              {
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr04cd);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(ApplicationNotificationConstants.WORKERS_CHANGED);
                                                                           if(_loc3_ || Boolean(_loc2_))
                                                                           {
                                                                              addr02da:
                                                                              §§push(_loc2_);
                                                                              if(_loc3_ || Boolean(param1))
                                                                              {
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(!(_loc4_ && Boolean(_loc2_)))
                                                                                    {
                                                                                       §§push(7);
                                                                                       if(_loc4_ && Boolean(this))
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr032a:
                                                                                       §§push(8);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(ApplicationNotificationConstants.RICHMEN_CHANGED);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr031a:
                                                                                       §§push(_loc2_);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§goto(addr032a);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr0518);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(ApplicationNotificationConstants.ACADEMICS_CHANGED);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr0348:
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      if(_loc3_ || Boolean(_loc2_))
                                                                                                      {
                                                                                                         §§push(9);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr048f:
                                                                                                         §§push(15);
                                                                                                         if(_loc3_ || Boolean(param1))
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(ApplicationNotificationConstants.HAPPYNESS_PRODUCED_CHANGED);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr0370:
                                                                                                         §§push(_loc2_);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(§§pop() === §§pop())
                                                                                                            {
                                                                                                               if(!(_loc4_ && Boolean(param1)))
                                                                                                               {
                                                                                                                  addr0389:
                                                                                                                  §§push(10);
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr03ba);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(ApplicationNotificationConstants.HAPPYNESS_CONSUMED_CHANGED);
                                                                                                               if(!(_loc4_ && Boolean(this)))
                                                                                                               {
                                                                                                                  addr03a9:
                                                                                                                  §§push(_loc2_);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     addr03b0:
                                                                                                                     if(§§pop() === §§pop())
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           §§goto(addr03ba);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr03f7:
                                                                                                                           §§push(12);
                                                                                                                           if(_loc3_ || Boolean(param1))
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(ApplicationNotificationConstants.ENERGY_CONSUMED_CHANGED);
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           addr03d7:
                                                                                                                           §§push(_loc2_);
                                                                                                                           if(_loc3_ || Boolean(param1))
                                                                                                                           {
                                                                                                                              addr03e5:
                                                                                                                              if(§§pop() === §§pop())
                                                                                                                              {
                                                                                                                                 if(!(_loc4_ && Boolean(param1)))
                                                                                                                                 {
                                                                                                                                    §§goto(addr03f7);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr048f);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(ApplicationNotificationConstants.ENERGY_PRODUCED_CHANGED);
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    addr0414:
                                                                                                                                    §§push(_loc2_);
                                                                                                                                    if(_loc3_ || Boolean(this))
                                                                                                                                    {
                                                                                                                                       addr0422:
                                                                                                                                       if(§§pop() === §§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr042b);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr048f);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(ApplicationNotificationConstants.APPLICATION_MODE_MOVE_INITIALIZE);
                                                                                                                                          if(_loc3_ || Boolean(param1))
                                                                                                                                          {
                                                                                                                                             §§push(_loc2_);
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                addr0450:
                                                                                                                                                if(§§pop() === §§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(14);
                                                                                                                                                      if(_loc3_ || Boolean(_loc2_))
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr052d:
                                                                                                                                                      §§push(18);
                                                                                                                                                      if(_loc3_ || Boolean(this))
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr054c);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(ApplicationNotificationConstants.APPLICATION_MODE_MOVE_DEINITIALIZE);
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr0477:
                                                                                                                                                      §§push(_loc2_);
                                                                                                                                                      if(!(_loc4_ && Boolean(this)))
                                                                                                                                                      {
                                                                                                                                                         addr0486:
                                                                                                                                                         if(§§pop() === §§pop())
                                                                                                                                                         {
                                                                                                                                                            if(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr048f);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr052d);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§push(ApplicationNotificationConstants.LAYOUT_DISPLAYSTATE_CHANGED);
                                                                                                                                                            if(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr04ac:
                                                                                                                                                               §§push(_loc2_);
                                                                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  addr04bb:
                                                                                                                                                                  if(§§pop() === §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc4_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr04cd);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr0518);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§push(ApplicationNotificationConstants.SHOW_GUI);
                                                                                                                                                                     if(!(_loc4_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        addr04f4:
                                                                                                                                                                        §§push(_loc2_);
                                                                                                                                                                        if(_loc3_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           addr0502:
                                                                                                                                                                           if(§§pop() === §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr0518);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr052d);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr0529);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr052d);
                                                                                                                                                                        }
                                                                                                                                                                        addr0529:
                                                                                                                                                                        §§goto(addr0528);
                                                                                                                                                                     }
                                                                                                                                                                     addr0528:
                                                                                                                                                                     if(ApplicationNotificationConstants.HUD_SWITCH_RESCOURCE === _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr052d);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push(19);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr054c);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr054c);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0502);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr04f4);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr052d);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0502);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr04ac);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr0486);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0528);
                                                                                                                                       }
                                                                                                                                       §§goto(addr054c);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0450);
                                                                                                                                 }
                                                                                                                                 §§goto(addr04f4);
                                                                                                                              }
                                                                                                                              §§goto(addr054c);
                                                                                                                           }
                                                                                                                           §§goto(addr0486);
                                                                                                                        }
                                                                                                                        §§goto(addr0414);
                                                                                                                     }
                                                                                                                     §§goto(addr054c);
                                                                                                                  }
                                                                                                                  §§goto(addr0502);
                                                                                                               }
                                                                                                               §§goto(addr03d7);
                                                                                                            }
                                                                                                            §§goto(addr054c);
                                                                                                         }
                                                                                                         §§goto(addr03e5);
                                                                                                      }
                                                                                                      §§goto(addr03a9);
                                                                                                   }
                                                                                                   §§goto(addr054c);
                                                                                                }
                                                                                                §§goto(addr0486);
                                                                                             }
                                                                                             §§goto(addr03a9);
                                                                                          }
                                                                                          §§goto(addr054c);
                                                                                       }
                                                                                       §§goto(addr0422);
                                                                                    }
                                                                                    §§goto(addr04f4);
                                                                                 }
                                                                                 §§goto(addr054c);
                                                                              }
                                                                              §§goto(addr0529);
                                                                           }
                                                                           §§goto(addr0370);
                                                                        }
                                                                        §§goto(addr054c);
                                                                     }
                                                                     §§goto(addr0348);
                                                                  }
                                                                  §§goto(addr0477);
                                                               }
                                                               §§goto(addr054c);
                                                            }
                                                            §§goto(addr03b0);
                                                         }
                                                         §§goto(addr031a);
                                                      }
                                                      §§goto(addr054c);
                                                   }
                                                   §§goto(addr04bb);
                                                }
                                                §§goto(addr0263);
                                             }
                                             §§goto(addr054c);
                                          }
                                          §§goto(addr0348);
                                       }
                                       §§goto(addr02a4);
                                    }
                                    §§goto(addr054c);
                                 }
                                 §§goto(addr03e5);
                              }
                              §§goto(addr03a9);
                           }
                           §§goto(addr054c);
                        }
                        §§goto(addr026a);
                     }
                     §§goto(addr02da);
                  }
                  addr054c:
                  switch(§§pop())
                  {
                     case 0:
                     case 1:
                     case 2:
                     case 3:
                     case 4:
                     case 5:
                     case 6:
                     case 7:
                     case 8:
                     case 9:
                        this.updateHUDData();
                        if(_loc4_)
                        {
                        }
                        break;
                     case 10:
                     case 11:
                     case 12:
                     case 13:
                        this.updateHUDData();
                        if(_loc3_)
                        {
                           this.checkChanges();
                           if(_loc4_ && _loc3_)
                           {
                           }
                        }
                        break;
                     case 14:
                        §§push(this.component);
                        if(_loc3_)
                        {
                           §§push(false);
                           if(!_loc4_)
                           {
                              §§pop().visible = §§pop();
                              if(_loc3_ || Boolean(param1))
                              {
                              }
                              break;
                           }
                           addr0085:
                           §§pop().visible = §§pop();
                           if(_loc3_ || _loc3_)
                           {
                           }
                           break;
                        }
                        addr0104:
                        §§pop().changeResourceSelectionTo(param1.getBody() as String);
                        if(_loc4_ && _loc3_)
                        {
                        }
                        break;
                     case 15:
                        §§push(this.component);
                        if(!(_loc4_ && Boolean(this)))
                        {
                           §§goto(addr0085);
                           §§push(true);
                        }
                        else
                        {
                           §§goto(addr0104);
                        }
                        break;
                     case 16:
                        §§push(this.component);
                        if(_loc3_)
                        {
                           §§pop().forumGroup.includeInLayout = this.component.forumGroup.visible = this._layoutProxy.displayState == StageDisplayState.FULL_SCREEN;
                           if(_loc4_ && Boolean(param1))
                           {
                           }
                           break;
                        }
                        §§goto(addr0104);
                        break;
                     case 17:
                        §§push(this.component);
                        if(_loc3_ || Boolean(this))
                        {
                           §§pop().visible = param1.getBody();
                           if(_loc3_ || _loc2_)
                           {
                           }
                           break;
                        }
                        §§goto(addr0104);
                        break;
                     case 18:
                        §§goto(addr0104);
                        §§push(this.component);
                  }
                  return;
               }
               §§goto(addr03b0);
            }
            §§goto(addr0189);
         }
         §§goto(addr0389);
      }
      
      private function checkChanges() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._oldEnergyMod);
            if(!_loc1_)
            {
               §§push(-1);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_)
                  {
                     §§push(!§§pop());
                     if(!(_loc1_ && _loc2_))
                     {
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        if(_temp_4)
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              §§pop();
                              if(!_loc1_)
                              {
                                 §§push(this._oldMoodMod);
                                 if(_loc2_)
                                 {
                                    §§goto(addr006c);
                                 }
                                 §§goto(addr0128);
                              }
                              §§goto(addr018f);
                           }
                           §§goto(addr006b);
                        }
                     }
                     addr006c:
                     §§goto(addr0065);
                  }
                  §§goto(addr006b);
               }
               addr0065:
               §§push(§§pop() == -1);
               if(_loc2_)
               {
                  addr006b:
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(this._oldEnergyMod);
                     if(!_loc1_)
                     {
                        §§push(this._hudData);
                        if(!_loc1_)
                        {
                           §§push(§§pop().energyModifier);
                           if(!_loc1_)
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(!_loc1_)
                                 {
                                    §§push(this._soundProxy);
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       §§pop().playEnergyDown();
                                       if(_loc2_ || Boolean(this))
                                       {
                                          addr011f:
                                          §§push(this._oldMoodMod);
                                          if(!_loc1_)
                                          {
                                             addr0128:
                                             §§push(this._hudData);
                                             if(_loc2_ || _loc1_)
                                             {
                                                addr0139:
                                                §§push(§§pop().happinessModifier);
                                                if(!_loc1_)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(_loc2_ || Boolean(this))
                                                      {
                                                         addr0152:
                                                         §§push(this._soundProxy);
                                                         if(_loc2_)
                                                         {
                                                            addr0165:
                                                            §§pop().playMoodDown();
                                                            if(_loc1_ && _loc2_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr0193:
                                                            §§pop().playMoodUp();
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr0186:
                                                      addr0183:
                                                      addr017f:
                                                      if(this._oldMoodMod < this._hudData.happinessModifier)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            addr018f:
                                                            §§goto(addr0193);
                                                            §§push(this._soundProxy);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr0198);
                                                }
                                                §§goto(addr0186);
                                             }
                                             §§goto(addr0183);
                                          }
                                          §§goto(addr017f);
                                       }
                                       §§goto(addr0152);
                                    }
                                    else
                                    {
                                       addr010d:
                                       §§pop().playEnergyUp();
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§goto(addr011f);
                                       }
                                    }
                                    §§goto(addr018f);
                                 }
                                 §§goto(addr011f);
                              }
                              else
                              {
                                 §§push(this._oldEnergyMod);
                                 if(_loc2_)
                                 {
                                    addr00d2:
                                    §§push(this._hudData);
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       addr00e3:
                                       §§push(§§pop().energyModifier);
                                       if(!(_loc1_ && Boolean(this)))
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             if(_loc2_ || Boolean(this))
                                             {
                                                addr0104:
                                                §§push(this._soundProxy);
                                                if(!_loc1_)
                                                {
                                                   §§goto(addr010d);
                                                }
                                                §§goto(addr0165);
                                             }
                                             §§goto(addr018f);
                                          }
                                          §§goto(addr011f);
                                       }
                                       §§goto(addr0186);
                                    }
                                    §§goto(addr0139);
                                 }
                              }
                              §§goto(addr0128);
                           }
                           §§goto(addr0186);
                        }
                        §§goto(addr00e3);
                     }
                     §§goto(addr0128);
                  }
                  §§goto(addr0104);
               }
               addr0198:
               return;
            }
            §§goto(addr00d2);
         }
         §§goto(addr011f);
      }
      
      private function updateHUDData() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this._oldEnergyMod = this._hudData.energyModifier;
            if(!_loc2_)
            {
               this._oldMoodMod = this._hudData.happinessModifier;
               if(!(_loc2_ && _loc2_))
               {
                  addr0051:
                  this._hudData = this._hudProxy.hudVo;
                  if(_loc1_ || _loc2_)
                  {
                     addr006a:
                     this.setHUDData();
                  }
                  §§goto(addr006f);
               }
               §§goto(addr006a);
            }
            addr006f:
            return;
         }
         §§goto(addr0051);
      }
      
      public function get vcElementSparkleSprite() : Sprite
      {
         return this.component.virtualCurrencySparkleSprite;
      }
      
      public function get rcElementSparkleSprite() : Sprite
      {
         return this.component.realCurrencySparkleSprite;
      }
      
      public function get xpElementSparkleSprite() : Sprite
      {
         return this.component.levelSparkleSprite;
      }
      
      public function get levelBarRectangle() : Rectangle
      {
         return this.component.levelBar.pixelBounds;
      }
      
      public function get residentElementSparkleSprite() : Sprite
      {
         return this.component.residentsSparkleSprite;
      }
      
      public function get resourceElementSparkleSprite() : Sprite
      {
         return this.component.resourcesSparkleSprite;
      }
      
      public function kill() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            this.component.visible = false;
            if(_loc1_)
            {
               this.dead = true;
            }
         }
      }
      
      public function visible(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(!this.dead)
            {
               if(_loc3_)
               {
                  addr0027:
                  this.component.visible = param1;
               }
            }
            return;
         }
         §§goto(addr0027);
      }
   }
}

