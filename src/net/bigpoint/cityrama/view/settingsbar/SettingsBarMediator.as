package net.bigpoint.cityrama.view.settingsbar
{
   import com.greensock.TweenMax;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.constants.quest.QuestGFXIDLayerConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.model.CityProxy;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.professionals.ProfessionalProxy;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemPermissionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayfieldLightVo;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalAttributeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.model.urbies.SpawnProxy;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IFloaterObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import net.bigpoint.cityrama.view.settingsbar.ui.components.SettingsBarView;
   import net.bigpoint.field3d.interfaces.IObject3D;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.events.IndexChangeEvent;
   
   public class SettingsBarMediator extends Mediator
   {
      
      public static const NAME:String = "SettingsBarMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "SettingsBarMediator";
      }
      
      private var _playfieldObjects:PlayfieldObjectsProxy;
      
      private var _socketProxy:ServerCommunicationProxy;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _cityProxy:CityProxy;
      
      private var packIndex:int = 0;
      
      public function SettingsBarMediator(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      private function configureMessageSpool() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.settingsBar);
            if(!_loc1_)
            {
               §§pop().toggleSpool.selected = this._socketProxy.clientSpool;
               if(!(_loc1_ && Boolean(this)))
               {
                  addr0048:
                  this.settingsBar.toggleSpool.addEventListener(MouseEvent.CLICK,this.handleSpoolClick);
                  addr0044:
               }
               return;
            }
            §§goto(addr0048);
         }
         §§goto(addr0044);
      }
      
      private function handleSpoolClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(this.settingsBar);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop().toggleSpool.selected)
               {
                  if(_loc2_)
                  {
                     §§push(this.settingsBar);
                     if(!_loc3_)
                     {
                        addr0054:
                        §§pop().toggleSpool.label = "stop and send spool";
                        if(_loc2_ || Boolean(this))
                        {
                           §§push(this._socketProxy);
                           if(_loc2_)
                           {
                              §§pop().startClientSpool();
                              if(_loc3_)
                              {
                                 addr00ac:
                                 this._socketProxy.stopClientSpool();
                                 addr00a8:
                              }
                              §§goto(addr00b1);
                           }
                           §§goto(addr00ac);
                        }
                     }
                     else
                     {
                        addr0091:
                        §§pop().toggleSpool.label = "start spool";
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr00a8);
                        }
                     }
                  }
                  addr00b1:
                  return;
               }
               §§push(this.settingsBar);
               §§goto(addr0091);
            }
            §§goto(addr0054);
         }
         §§goto(addr00a8);
      }
      
      private function initGoodList() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc3_:ConfigGoodDTO = null;
         var _loc4_:* = null;
         var _loc5_:EventProxy = null;
         var _loc1_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc2_:ArrayList = new ArrayList();
         for each(_loc3_ in _loc1_.config.goods)
         {
            if(_loc8_ || Boolean(_loc1_))
            {
               §§push(ResourceManager.getInstance().getString(String("rcl.goods.goodname"),String("rcl.goods.goodname." + _loc3_.localeId)));
               if(_loc8_)
               {
                  §§push(§§pop());
                  if(!(_loc9_ && Boolean(this)))
                  {
                     addr009b:
                     _loc4_ = §§pop();
                     §§push(_loc4_);
                     if(!(_loc9_ && Boolean(_loc3_)))
                     {
                        addr00ac:
                        §§push("");
                        if(_loc8_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!(_loc9_ && Boolean(_loc2_)))
                              {
                                 _loc5_ = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
                                 addr00c6:
                                 if(_loc8_ || Boolean(this))
                                 {
                                    §§push(LocaUtils);
                                    §§push("rcl.citysquarequests.");
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop() + _loc5_.currentRunningEventQuestLocaleId);
                                    }
                                    §§push("rcl.citysquarequests.");
                                    if(!_loc9_)
                                    {
                                       §§push(_loc5_.currentRunningEventQuestLocaleId);
                                       if(!_loc9_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc9_)
                                          {
                                             §§push(§§pop() + ".goods.goodname.");
                                             if(_loc8_)
                                             {
                                                addr012a:
                                                addr012e:
                                                §§push(§§pop() + _loc3_.localeId);
                                             }
                                             §§push(§§pop().getString(§§pop(),§§pop()));
                                             if(!(_loc9_ && Boolean(_loc1_)))
                                             {
                                                §§push(§§pop());
                                             }
                                             _loc4_ = §§pop();
                                             addr0143:
                                             addr0147:
                                             addr0145:
                                             if(_loc4_ == "")
                                             {
                                                if(!_loc8_)
                                                {
                                                   continue;
                                                }
                                                _loc4_ = "zZz Unkown maybe nonrunning Event";
                                                if(_loc9_)
                                                {
                                                   continue;
                                                }
                                             }
                                             addr015d:
                                             _loc2_.addItem({
                                                "name":_loc4_,
                                                "cGood":_loc3_
                                             });
                                             continue;
                                          }
                                          §§goto(addr012a);
                                       }
                                       §§goto(addr012e);
                                    }
                                    §§goto(addr012a);
                                 }
                                 §§goto(addr0143);
                              }
                              §§goto(addr015d);
                           }
                           §§goto(addr0143);
                        }
                        §§goto(addr0147);
                     }
                     §§goto(addr0145);
                  }
                  §§goto(addr00ac);
               }
               §§goto(addr009b);
            }
            §§goto(addr00c6);
         }
         if(!_loc9_)
         {
            _loc2_.source.sortOn(["name"]);
            if(!_loc9_)
            {
               §§push(this.settingsBar);
               if(_loc8_)
               {
                  §§pop().goodsList.dataProvider = _loc2_;
                  if(!_loc9_)
                  {
                     addr01b4:
                     if(_loc2_.length > 0)
                     {
                        if(_loc8_ || Boolean(_loc2_))
                        {
                           addr01cf:
                           this.settingsBar.goodsList.selectedItem = _loc2_.getItemAt(0);
                        }
                     }
                  }
                  return;
               }
               §§goto(addr01cf);
            }
         }
         §§goto(addr01b4);
      }
      
      private function initPlayfieldList() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc3_:ConfigPlayfieldDTO = null;
         var _loc4_:* = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         var _loc2_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         for each(_loc3_ in _loc2_.config.playfields)
         {
            if(!(_loc8_ || Boolean(_loc1_)))
            {
               continue;
            }
            var _loc7_:* = _loc3_.id;
            if(!(_loc9_ && Boolean(this)))
            {
               §§push(1);
               if(!(_loc9_ && Boolean(_loc2_)))
               {
                  §§push(_loc7_);
                  if(!(_loc9_ && Boolean(_loc3_)))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc8_)
                        {
                           addr015b:
                           §§push(1);
                           if(!(_loc8_ || Boolean(_loc3_)))
                           {
                              addr01b5:
                              §§push(_loc7_);
                              if(_loc8_)
                              {
                                 addr01bd:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc8_)
                                    {
                                       addr01c7:
                                       §§push(3);
                                       if(!(_loc8_ || Boolean(_loc3_)))
                                       {
                                          addr01eb:
                                          addr01ed:
                                          if(§§pop() === _loc7_)
                                          {
                                             addr01f1:
                                             §§push(4);
                                             if(_loc9_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             §§push(0);
                                          }
                                       }
                                       addr020e:
                                       switch(§§pop())
                                       {
                                          case 1:
                                             §§push("Standard");
                                             if(!(_loc9_ && Boolean(_loc1_)))
                                             {
                                                addr0092:
                                                _loc4_ = §§pop();
                                                if(_loc8_ || Boolean(this))
                                                {
                                                }
                                                break;
                                             }
                                             addr00f1:
                                             _loc4_ = §§pop();
                                             if(_loc9_ && Boolean(_loc3_))
                                             {
                                             }
                                             break;
                                          case 2:
                                             §§push("Coastal");
                                             if(_loc9_)
                                             {
                                                addr00d8:
                                                _loc4_ = §§pop();
                                                if(_loc8_ || Boolean(this))
                                                {
                                                }
                                                break;
                                             }
                                             _loc4_ = §§pop();
                                             if(_loc8_ || Boolean(_loc1_))
                                             {
                                                break;
                                             }
                                             continue;
                                          case 3:
                                             §§push("Suburban");
                                             if(_loc8_ || Boolean(_loc3_))
                                             {
                                                §§goto(addr00d8);
                                             }
                                             else
                                             {
                                                §§goto(addr00f1);
                                             }
                                          case 4:
                                             §§goto(addr00f1);
                                             §§push("Mountain");
                                          default:
                                             §§push("unknown playfield");
                                             if(_loc8_ || Boolean(_loc3_))
                                             {
                                                _loc4_ = §§pop();
                                                if(_loc9_)
                                                {
                                                }
                                                break;
                                             }
                                             §§goto(addr0092);
                                       }
                                       _loc1_.addItem(_loc4_);
                                       continue;
                                    }
                                    §§goto(addr01f1);
                                 }
                                 else
                                 {
                                    §§push(4);
                                    if(_loc8_ || Boolean(_loc1_))
                                    {
                                       §§goto(addr01eb);
                                    }
                                 }
                                 §§goto(addr020e);
                              }
                              §§goto(addr01ed);
                           }
                           §§goto(addr020e);
                        }
                        §§goto(addr01c7);
                     }
                     else
                     {
                        §§push(2);
                        if(!(_loc9_ && Boolean(_loc2_)))
                        {
                           §§push(_loc7_);
                           if(_loc8_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc9_ && Boolean(this)))
                                 {
                                    §§push(2);
                                    if(_loc9_ && Boolean(_loc1_))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr01c7);
                                 }
                                 §§goto(addr020e);
                              }
                              else
                              {
                                 §§push(3);
                                 if(_loc8_)
                                 {
                                    §§goto(addr01b5);
                                 }
                              }
                              §§goto(addr01eb);
                           }
                           §§goto(addr01ed);
                        }
                     }
                     §§goto(addr020e);
                  }
                  §§goto(addr01bd);
               }
               §§goto(addr01b5);
            }
            §§goto(addr015b);
         }
         if(_loc8_ || Boolean(_loc2_))
         {
            this.settingsBar.playfieldBar.dataProvider = _loc1_;
         }
      }
      
      private function configureCheatListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(this.settingsBar);
            if(!_loc2_)
            {
               §§pop().vcCheatButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
               if(!_loc2_)
               {
                  §§push(this.settingsBar);
                  if(!_loc2_)
                  {
                     §§pop().rcCheatButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
                     if(_loc1_)
                     {
                        addr0057:
                        §§push(this.settingsBar);
                        if(!_loc2_)
                        {
                           §§pop().ppCheatButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
                           if(_loc1_)
                           {
                              §§push(this.settingsBar);
                              if(_loc1_)
                              {
                                 §§pop().epCheatButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
                                 if(!_loc2_)
                                 {
                                    §§push(this.settingsBar);
                                    if(_loc1_ || _loc1_)
                                    {
                                       addr00a2:
                                       §§pop().xpCheatButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
                                       if(_loc1_)
                                       {
                                          addr00b6:
                                          §§push(this.settingsBar);
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             §§pop().lvlCheatButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
                                             if(_loc1_ || _loc1_)
                                             {
                                                §§push(this.settingsBar);
                                                if(_loc1_ || _loc2_)
                                                {
                                                   §§pop().pwrCheatButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
                                                   if(!_loc2_)
                                                   {
                                                      §§push(this.settingsBar);
                                                      if(_loc1_)
                                                      {
                                                         addr011b:
                                                         §§pop().moodCheatButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
                                                         if(_loc1_ || Boolean(this))
                                                         {
                                                            §§goto(addr0137);
                                                         }
                                                         §§goto(addr0154);
                                                      }
                                                      §§goto(addr01fe);
                                                   }
                                                   §§goto(addr0137);
                                                }
                                                §§goto(addr018a);
                                             }
                                             §§goto(addr01fa);
                                          }
                                          §§goto(addr0140);
                                       }
                                       §§goto(addr01a6);
                                    }
                                    §§goto(addr0140);
                                 }
                                 §§goto(addr00b6);
                              }
                              §§goto(addr018a);
                           }
                           §§goto(addr0154);
                        }
                        §§goto(addr0140);
                     }
                     addr0137:
                     §§push(this.settingsBar);
                     if(!_loc2_)
                     {
                        addr0140:
                        §§pop().worCheatButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
                        if(!_loc2_)
                        {
                           addr0154:
                           §§push(this.settingsBar);
                           if(!_loc2_)
                           {
                              §§goto(addr015d);
                           }
                           §§goto(addr01e6);
                        }
                        §§goto(addr01fa);
                     }
                     addr015d:
                     §§pop().ricCheatButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
                     if(_loc1_ || Boolean(this))
                     {
                        addr0179:
                        §§push(this.settingsBar);
                        if(_loc1_ || Boolean(this))
                        {
                           addr018a:
                           §§pop().academicsCheatButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
                           if(_loc1_ || _loc1_)
                           {
                              addr01a6:
                              §§push(this.settingsBar);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§pop().grantPermissionButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
                                 if(_loc1_ || _loc2_)
                                 {
                                    §§push(this.settingsBar);
                                    if(_loc1_)
                                    {
                                       §§goto(addr01e6);
                                    }
                                    §§goto(addr01fe);
                                 }
                                 §§goto(addr01fa);
                              }
                              addr01e6:
                              §§pop().grantgoodsnButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
                              if(!_loc2_)
                              {
                                 addr01fe:
                                 this.settingsBar.playfieldBar.addEventListener(IndexChangeEvent.CHANGING,this.playfieldChangeRequestHandler);
                                 addr01fa:
                              }
                           }
                           §§goto(addr0210);
                        }
                        §§goto(addr01fe);
                     }
                     addr0210:
                     return;
                  }
                  §§goto(addr011b);
               }
               §§goto(addr0057);
            }
            §§goto(addr00a2);
         }
         §§goto(addr0179);
      }
      
      private function cheatClicked(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         if(!(_loc8_ && Boolean(this)))
         {
            facade.sendNotification(ApplicationNotificationConstants.EVENTS_CHANGED);
         }
         var _loc6_:* = param1.target.id;
         if(_loc7_)
         {
            §§push("vcCheatButton");
            if(_loc7_ || Boolean(param1))
            {
               if(§§pop() === _loc6_)
               {
                  if(_loc7_)
                  {
                     §§push(0);
                     if(_loc8_ && Boolean(_loc3_))
                     {
                     }
                  }
                  else
                  {
                     addr06cb:
                     §§push(4);
                     if(_loc8_)
                     {
                     }
                  }
               }
               else
               {
                  §§push("rcCheatButton");
                  if(!(_loc8_ && Boolean(this)))
                  {
                     if(§§pop() === _loc6_)
                     {
                        if(_loc7_)
                        {
                           §§push(1);
                           if(_loc7_ || Boolean(_loc3_))
                           {
                           }
                        }
                        else
                        {
                           addr0777:
                           §§push(8);
                           if(_loc8_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push("ppCheatButton");
                        if(_loc7_ || Boolean(_loc3_))
                        {
                           if(§§pop() === _loc6_)
                           {
                              if(_loc7_)
                              {
                                 §§push(2);
                                 if(_loc8_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr0746:
                                 §§push(7);
                                 if(_loc7_ || Boolean(_loc3_))
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push("epCheatButton");
                              if(!_loc8_)
                              {
                                 if(§§pop() === _loc6_)
                                 {
                                    if(!_loc8_)
                                    {
                                       §§push(3);
                                       if(_loc7_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr07d1:
                                       §§push(10);
                                       if(_loc7_)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push("xpCheatButton");
                                    if(_loc7_ || Boolean(_loc2_))
                                    {
                                       addr06bf:
                                       if(§§pop() === _loc6_)
                                       {
                                          if(!_loc8_)
                                          {
                                             §§goto(addr06cb);
                                          }
                                          else
                                          {
                                             addr07a8:
                                             §§push(9);
                                             if(_loc7_)
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push("lvlCheatButton");
                                          if(!(_loc8_ && Boolean(_loc3_)))
                                          {
                                             if(§§pop() === _loc6_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   §§push(5);
                                                   if(_loc7_ || Boolean(param1))
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr07d1);
                                                }
                                             }
                                             else
                                             {
                                                §§push("pwrCheatButton");
                                                if(!_loc8_)
                                                {
                                                   if(§§pop() === _loc6_)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         §§push(6);
                                                         if(_loc7_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr0777);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push("moodCheatButton");
                                                      if(!(_loc8_ && Boolean(this)))
                                                      {
                                                         addr073a:
                                                         if(§§pop() === _loc6_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               §§goto(addr0746);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr0777);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push("worCheatButton");
                                                            if(!(_loc8_ && Boolean(_loc3_)))
                                                            {
                                                               addr076b:
                                                               if(§§pop() === _loc6_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§goto(addr0777);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr07a8);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push("ricCheatButton");
                                                                  if(_loc7_ || Boolean(this))
                                                                  {
                                                                     addr0794:
                                                                     if(§§pop() === _loc6_)
                                                                     {
                                                                        if(!(_loc8_ && Boolean(_loc3_)))
                                                                        {
                                                                           §§goto(addr07a8);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr081d:
                                                                           §§push(12);
                                                                           if(_loc7_)
                                                                           {
                                                                           }
                                                                        }
                                                                        addr0835:
                                                                        loop0:
                                                                        while(true)
                                                                        {
                                                                           switch(§§pop())
                                                                           {
                                                                              case 0:
                                                                                 §§push(this.settingsBar);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§push(§§pop().vcCheatInput.text);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       if(!(_loc8_ && Boolean(_loc2_)))
                                                                                       {
                                                                                          §§push("vc");
                                                                                          if(!(_loc8_ && Boolean(_loc3_)))
                                                                                          {
                                                                                             _loc2_ = §§pop();
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                break loop0;
                                                                                             }
                                                                                             addr02dc:
                                                                                             §§push("ric");
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                addr02e6:
                                                                                                _loc2_ = §§pop();
                                                                                                if(!(_loc8_ && Boolean(this)))
                                                                                                {
                                                                                                   break loop0;
                                                                                                }
                                                                                                addr087d:
                                                                                                addr05a3:
                                                                                                §§push("good");
                                                                                                if(_loc7_ || Boolean(this))
                                                                                                {
                                                                                                   addr05b4:
                                                                                                   _loc2_ = §§pop();
                                                                                                   if(_loc8_ && Boolean(this))
                                                                                                   {
                                                                                                      break loop0;
                                                                                                   }
                                                                                                   addr05d9:
                                                                                                   addr05d7:
                                                                                                   addr05c7:
                                                                                                   addr05c3:
                                                                                                   §§push((this.settingsBar.goodsList.selectedItem.cGood as ConfigGoodDTO).id + "");
                                                                                                }
                                                                                                §§goto(addr05da);
                                                                                             }
                                                                                             §§goto(addr05b4);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr0104:
                                                                                             _loc2_ = §§pop();
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                break loop0;
                                                                                             }
                                                                                             addr03b6:
                                                                                             §§push(this.settingsBar);
                                                                                             if(_loc7_ || Boolean(param1))
                                                                                             {
                                                                                                addr03c8:
                                                                                                §§push(§§pop().permissionsList.selectedItem == null);
                                                                                                if(!(_loc8_ && Boolean(this)))
                                                                                                {
                                                                                                   addr03de:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         §§goto(addr03e8);
                                                                                                      }
                                                                                                   }
                                                                                                   addr0403:
                                                                                                   §§push(int(parseInt(this.settingsBar.permissionsCountInput.text)));
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   _loc5_ = §§pop();
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      addr0422:
                                                                                                      §§push("PER");
                                                                                                      if(!(_loc8_ && Boolean(_loc3_)))
                                                                                                      {
                                                                                                         addr0434:
                                                                                                         _loc2_ = §§pop();
                                                                                                         if(_loc7_ || Boolean(this))
                                                                                                         {
                                                                                                            §§push(this.settingsBar);
                                                                                                            if(_loc7_ || Boolean(param1))
                                                                                                            {
                                                                                                               addr0455:
                                                                                                               §§push((§§pop().permissionsList.selectedItem.perm as ConfigPlayfieldItemPermissionDTO).id);
                                                                                                               if(!(_loc8_ && Boolean(_loc3_)))
                                                                                                               {
                                                                                                                  §§push("");
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc7_ || Boolean(this))
                                                                                                                     {
                                                                                                                        addr048a:
                                                                                                                        _loc3_ = §§pop();
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TEST,[_loc2_,_loc3_,_loc5_]);
                                                                                                                        if(!(_loc8_ && Boolean(param1)))
                                                                                                                        {
                                                                                                                           §§goto(addr04b0);
                                                                                                                        }
                                                                                                                        §§goto(addr087d);
                                                                                                                     }
                                                                                                                     §§goto(addr05da);
                                                                                                                  }
                                                                                                                  §§goto(addr05d9);
                                                                                                               }
                                                                                                               §§goto(addr05d7);
                                                                                                            }
                                                                                                            addr04d2:
                                                                                                            §§push(§§pop().goodsCountInput.text == null);
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               addr04df:
                                                                                                               var _temp_29:* = §§pop();
                                                                                                               §§push(_temp_29);
                                                                                                               §§push(_temp_29);
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  addr04e6:
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        if(_loc7_ || Boolean(_loc2_))
                                                                                                                        {
                                                                                                                           addr04ff:
                                                                                                                           §§push(this.settingsBar);
                                                                                                                           if(_loc7_ || Boolean(this))
                                                                                                                           {
                                                                                                                              addr0511:
                                                                                                                              §§push(§§pop().goodsCountInput.text == "");
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 addr051f:
                                                                                                                                 var _temp_32:* = §§pop();
                                                                                                                                 addr0520:
                                                                                                                                 §§push(_temp_32);
                                                                                                                                 if(!_temp_32)
                                                                                                                                 {
                                                                                                                                    if(!(_loc8_ && Boolean(param1)))
                                                                                                                                    {
                                                                                                                                       addr0532:
                                                                                                                                       §§pop();
                                                                                                                                       if(_loc7_ || Boolean(this))
                                                                                                                                       {
                                                                                                                                          §§push(this.settingsBar);
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             addr0553:
                                                                                                                                             addr054b:
                                                                                                                                             if(§§pop().goodsList.selectedItem == null)
                                                                                                                                             {
                                                                                                                                                if(!(_loc8_ && Boolean(this)))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr0565);
                                                                                                                                                }
                                                                                                                                                break loop0;
                                                                                                                                             }
                                                                                                                                             addr0574:
                                                                                                                                             §§push(int(parseInt(this.settingsBar.goodsCountInput.text)));
                                                                                                                                             if(!(_loc7_ || Boolean(_loc3_)))
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             _loc4_ = §§pop();
                                                                                                                                             if(!(_loc8_ && Boolean(_loc3_)))
                                                                                                                                             {
                                                                                                                                                §§goto(addr05a3);
                                                                                                                                             }
                                                                                                                                             §§goto(addr087d);
                                                                                                                                          }
                                                                                                                                          §§goto(addr05c7);
                                                                                                                                       }
                                                                                                                                       §§goto(addr05c3);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr0553);
                                                                                                                           }
                                                                                                                           §§goto(addr05c7);
                                                                                                                        }
                                                                                                                        §§goto(addr05c3);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr051f);
                                                                                                               }
                                                                                                               §§goto(addr0520);
                                                                                                            }
                                                                                                            §§goto(addr0553);
                                                                                                         }
                                                                                                         §§goto(addr0574);
                                                                                                      }
                                                                                                      §§goto(addr05b4);
                                                                                                   }
                                                                                                   §§goto(addr05c3);
                                                                                                }
                                                                                                §§goto(addr0532);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr05c7);
                                                                                       }
                                                                                       §§goto(addr04ff);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0312:
                                                                                       _loc3_ = §§pop();
                                                                                       if(_loc7_ || Boolean(this))
                                                                                       {
                                                                                          §§push("tea");
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             addr032b:
                                                                                             _loc2_ = §§pop();
                                                                                             if(_loc7_ || Boolean(_loc2_))
                                                                                             {
                                                                                                break loop0;
                                                                                             }
                                                                                             §§goto(addr0403);
                                                                                          }
                                                                                          §§goto(addr0434);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0096:
                                                                                    §§push(§§pop().rcCheatInput.text);
                                                                                    if(_loc7_ || Boolean(this))
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       if(!(_loc8_ && Boolean(this)))
                                                                                       {
                                                                                          §§push("rc");
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             _loc2_ = §§pop();
                                                                                             if(_loc7_ || Boolean(_loc2_))
                                                                                             {
                                                                                                break loop0;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr01ca:
                                                                                             _loc2_ = §§pop();
                                                                                             if(!(_loc8_ && Boolean(_loc2_)))
                                                                                             {
                                                                                                break loop0;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr04ff);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr02dc);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr00f4:
                                                                                       _loc3_ = §§pop();
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          break loop0;
                                                                                       }
                                                                                       §§push("pp");
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§goto(addr0104);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr032b);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr05c3);
                                                                              case 1:
                                                                                 §§push(this.settingsBar);
                                                                                 if(!(_loc8_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    §§goto(addr0096);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0164:
                                                                                    §§push(§§pop().xpCheatInput.text);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       if(_loc7_ || Boolean(param1))
                                                                                       {
                                                                                          §§push("xp");
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             _loc2_ = §§pop();
                                                                                             if(_loc8_)
                                                                                             {
                                                                                             }
                                                                                             break loop0;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr04ff);
                                                                                       }
                                                                                       addr05da:
                                                                                       _loc3_ = §§pop();
                                                                                       if(!(_loc8_ && Boolean(this)))
                                                                                       {
                                                                                          break loop0;
                                                                                       }
                                                                                       addr087d:
                                                                                       return;
                                                                                    }
                                                                                    addr0204:
                                                                                    _loc3_ = §§pop();
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       §§push("pwr");
                                                                                       if(!(_loc8_ && Boolean(this)))
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             break loop0;
                                                                                          }
                                                                                          addr03e8:
                                                                                          return;
                                                                                       }
                                                                                       §§goto(addr048a);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr0565);
                                                                              case 2:
                                                                                 §§push(this.settingsBar);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§push(§§pop().ppCheatInput.text);
                                                                                    if(_loc7_ || Boolean(_loc3_))
                                                                                    {
                                                                                       §§goto(addr00f4);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr028a:
                                                                                       _loc3_ = §§pop();
                                                                                       if(_loc7_ || Boolean(this))
                                                                                       {
                                                                                          §§push("wor");
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             _loc2_ = §§pop();
                                                                                             if(_loc7_ || Boolean(_loc2_))
                                                                                             {
                                                                                                break loop0;
                                                                                             }
                                                                                             §§goto(addr0574);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr048a);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0565);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr01f0:
                                                                                    §§push(§§pop().pwrCheatInput.text);
                                                                                    if(!(_loc8_ && Boolean(_loc2_)))
                                                                                    {
                                                                                       §§goto(addr0204);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0247:
                                                                                       _loc3_ = §§pop();
                                                                                       if(_loc8_ && Boolean(param1))
                                                                                       {
                                                                                          break loop0;
                                                                                       }
                                                                                       §§push("moo");
                                                                                       if(_loc7_ || Boolean(_loc2_))
                                                                                       {
                                                                                          addr0268:
                                                                                          _loc2_ = §§pop();
                                                                                          if(_loc8_)
                                                                                          {
                                                                                          }
                                                                                          break loop0;
                                                                                       }
                                                                                       §§goto(addr032b);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr032b);
                                                                              case 3:
                                                                                 §§push(this.settingsBar);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§push(§§pop().epCheatInput.text);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       if(_loc7_ || Boolean(this))
                                                                                       {
                                                                                          §§push("ep");
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             _loc2_ = §§pop();
                                                                                             if(!(_loc8_ && Boolean(this)))
                                                                                             {
                                                                                                break loop0;
                                                                                             }
                                                                                             §§goto(addr0403);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr0268);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0574);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr0312);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr02c1:
                                                                                    §§push(§§pop().ricCheatInput.text);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       addr02cd:
                                                                                       _loc3_ = §§pop();
                                                                                       if(!(_loc8_ && Boolean(_loc2_)))
                                                                                       {
                                                                                          §§goto(addr02dc);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr037e:
                                                                                          §§push(this.settingsBar);
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§push(§§pop().permissionsCountInput.text == "");
                                                                                             if(!(_loc8_ && Boolean(this)))
                                                                                             {
                                                                                                addr039e:
                                                                                                var _temp_57:* = §§pop();
                                                                                                §§push(_temp_57);
                                                                                                §§push(_temp_57);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            §§goto(addr03b6);
                                                                                                         }
                                                                                                         addr04b0:
                                                                                                         return;
                                                                                                      }
                                                                                                      §§goto(addr051f);
                                                                                                   }
                                                                                                   §§goto(addr03de);
                                                                                                }
                                                                                                §§goto(addr04e6);
                                                                                             }
                                                                                             §§goto(addr04df);
                                                                                          }
                                                                                          §§goto(addr0455);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr0312);
                                                                                    }
                                                                                    §§goto(addr05c3);
                                                                                 }
                                                                                 §§goto(addr0312);
                                                                              case 4:
                                                                                 §§push(this.settingsBar);
                                                                                 if(!(_loc8_ && Boolean(this)))
                                                                                 {
                                                                                    §§goto(addr0164);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr01a6);
                                                                                 }
                                                                              case 5:
                                                                                 §§push(this.settingsBar);
                                                                                 if(!(_loc8_ && Boolean(this)))
                                                                                 {
                                                                                    addr01a6:
                                                                                    §§push(§§pop().lvlCheatInput.text);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§push("lvl");
                                                                                          if(_loc7_ || Boolean(this))
                                                                                          {
                                                                                             §§goto(addr01ca);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr02e6);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr0422);
                                                                                       }
                                                                                       §§goto(addr05b4);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr0204);
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr03c8);
                                                                                 §§goto(addr0532);
                                                                              case 6:
                                                                                 §§push(this.settingsBar);
                                                                                 if(_loc7_ || Boolean(_loc2_))
                                                                                 {
                                                                                    §§goto(addr01f0);
                                                                                 }
                                                                                 §§goto(addr054b);
                                                                              case 7:
                                                                                 §§push(this.settingsBar);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§push(§§pop().moodCheatInput.text);
                                                                                    if(_loc7_ || Boolean(param1))
                                                                                    {
                                                                                       §§goto(addr0247);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr02cd);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr05c7);
                                                                              case 8:
                                                                                 §§push(this.settingsBar);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§push(§§pop().worCheatInput.text);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§goto(addr028a);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr02cd);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr030c:
                                                                                    §§goto(addr0312);
                                                                                    §§push(§§pop().academicsCheatInput.text);
                                                                                 }
                                                                                 §§goto(addr05c3);
                                                                              case 9:
                                                                                 §§push(this.settingsBar);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§goto(addr02c1);
                                                                                 }
                                                                                 §§goto(addr0455);
                                                                              case 10:
                                                                                 §§push(this.settingsBar);
                                                                                 if(_loc7_ || Boolean(this))
                                                                                 {
                                                                                    §§goto(addr030c);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr03c8);
                                                                                 }
                                                                              case 11:
                                                                                 §§push(this.settingsBar);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§push(§§pop().permissionsCountInput.text == null);
                                                                                    if(_loc7_ || Boolean(_loc2_))
                                                                                    {
                                                                                       var _temp_65:* = §§pop();
                                                                                       §§push(_temp_65);
                                                                                       §§push(_temp_65);
                                                                                       if(_loc7_ || Boolean(_loc3_))
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                addr0377:
                                                                                                §§pop();
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§goto(addr037e);
                                                                                                }
                                                                                                §§goto(addr0422);
                                                                                             }
                                                                                             §§goto(addr051f);
                                                                                          }
                                                                                          §§goto(addr039e);
                                                                                       }
                                                                                       §§goto(addr0520);
                                                                                    }
                                                                                    §§goto(addr0377);
                                                                                 }
                                                                                 §§goto(addr0511);
                                                                              case 12:
                                                                                 break;
                                                                              default:
                                                                                 break loop0;
                                                                           }
                                                                           §§push(this.settingsBar);
                                                                           if(!(_loc8_ && Boolean(_loc2_)))
                                                                           {
                                                                              §§goto(addr04d2);
                                                                           }
                                                                           §§goto(addr0511);
                                                                        }
                                                                        facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TEST,[_loc2_,_loc3_,_loc4_]);
                                                                        §§goto(addr087d);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push("academicsCheatButton");
                                                                        if(!_loc8_)
                                                                        {
                                                                           addr07bd:
                                                                           if(§§pop() === _loc6_)
                                                                           {
                                                                              if(!(_loc8_ && Boolean(_loc3_)))
                                                                              {
                                                                                 §§goto(addr07d1);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr07f2:
                                                                                 §§push(11);
                                                                                 if(_loc8_ && Boolean(this))
                                                                                 {
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push("grantPermissionButton");
                                                                              if(!_loc8_)
                                                                              {
                                                                                 addr07e6:
                                                                                 if(§§pop() === _loc6_)
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       §§goto(addr07f2);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr081d);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0817:
                                                                                    if("grantgoodsnButton" === _loc6_)
                                                                                    {
                                                                                       §§goto(addr081d);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(13);
                                                                                    }
                                                                                    §§goto(addr0835);
                                                                                 }
                                                                                 §§goto(addr081d);
                                                                              }
                                                                              §§goto(addr0817);
                                                                           }
                                                                           §§goto(addr0835);
                                                                        }
                                                                        §§goto(addr07e6);
                                                                     }
                                                                  }
                                                                  §§goto(addr0817);
                                                               }
                                                               §§goto(addr0835);
                                                            }
                                                            §§goto(addr07bd);
                                                         }
                                                         §§goto(addr0835);
                                                      }
                                                      §§goto(addr076b);
                                                   }
                                                   §§goto(addr0835);
                                                }
                                                §§goto(addr073a);
                                             }
                                             §§goto(addr0835);
                                          }
                                          §§goto(addr0794);
                                       }
                                       §§goto(addr0835);
                                    }
                                    §§goto(addr07bd);
                                 }
                                 §§goto(addr0835);
                              }
                              §§goto(addr06bf);
                           }
                           §§goto(addr0835);
                        }
                        §§goto(addr0794);
                     }
                     §§goto(addr0835);
                  }
                  §§goto(addr07bd);
               }
               §§goto(addr0835);
            }
            §§goto(addr07e6);
         }
         §§goto(addr07f2);
      }
      
      private function configureListener() : void
      {
      }
      
      private function handleShowWorldMap(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            facade.sendNotification(ApplicationNotificationConstants.OPEN_WORLD_MAP,false);
         }
      }
      
      private function fakeFeatureUpdateClickedHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc7_:String = null;
         var _loc2_:String = this.settingsBar.featureTextInput.text;
         var _loc3_:PlayerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         var _loc4_:MessageVo = new MessageVo();
         var _loc5_:Object = new Object();
         _loc5_.up = new Object();
         var _loc6_:Array = [];
         for each(_loc7_ in _loc3_.player.enabledFeatures)
         {
            if(!(_loc11_ && Boolean(param1)))
            {
               _loc6_.push(_loc7_);
            }
         }
         if(_loc10_)
         {
            _loc6_.push(_loc2_);
            if(_loc10_ || Boolean(_loc2_))
            {
               _loc5_.ef = _loc6_;
               if(!(_loc11_ && Boolean(_loc2_)))
               {
                  addr00dc:
                  _loc4_.json = _loc5_;
                  if(!_loc11_)
                  {
                     addr00e9:
                     sendNotification(ServerNotificationConstants.SERVER_MESSAGE_PLAYER_FEATURE_UPDATE,_loc4_);
                  }
               }
               return;
            }
            §§goto(addr00e9);
         }
         §§goto(addr00dc);
      }
      
      private function fakeUpsellUpdateClickedHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc2_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         if(!(_loc7_ && Boolean(this)))
         {
            var _loc5_:* = this;
            §§push(_loc5_.packIndex);
            if(_loc8_)
            {
               §§push(§§pop() + 1);
            }
            var _loc6_:* = §§pop();
            if(_loc8_ || Boolean(_loc2_))
            {
               _loc5_.packIndex = _loc6_;
            }
            if(_loc8_)
            {
               this.packIndex %= 6;
            }
         }
         var _loc3_:MessageVo = new MessageVo();
         var _loc4_:Object = new Object();
         _loc4_.up = new Object();
         if(!(_loc7_ && Boolean(_loc3_)))
         {
            _loc4_.up.id = 164 + this.packIndex;
            if(_loc8_ || Boolean(this))
            {
               _loc4_.up.c = ServerTagConstants.PAYMENT_UPSELL;
               if(!_loc7_)
               {
                  _loc4_.up.st = _loc2_.currentTimeStamp - 1000;
                  if(_loc8_)
                  {
                     _loc4_.up.d = 1000 * 60 * 60 * 24 * 3;
                     if(_loc8_ || Boolean(param1))
                     {
                        addr0123:
                        _loc3_.json = _loc4_;
                        if(!_loc7_)
                        {
                           addr012f:
                           sendNotification(ServerNotificationConstants.SERVER_MESSAGE_PLAYER_PAYMENT_UPSELL_UPDATE,_loc3_);
                        }
                        §§goto(addr013b);
                     }
                     §§goto(addr012f);
                  }
                  addr013b:
                  return;
               }
            }
         }
         §§goto(addr0123);
      }
      
      private function handleSwitchPlayfield(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:PlayfieldLightVo = null;
         var _loc3_:int = 0;
         var _loc4_:* = this._cityProxy.city.playfields;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_ && Boolean(param1))
               {
                  break;
               }
               if(_loc2_.configId != this._playfieldProxy.config.id)
               {
                  if(_loc5_ && Boolean(param1))
                  {
                     break;
                  }
                  sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TEST,["switchPlayfield",_loc2_.id]);
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     break;
                  }
               }
            }
            return;
         }
      }
      
      private function fillWithStreets(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:* = 0;
         var _loc4_:Cuboid = null;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            loop1:
            while(true)
            {
               §§push(this._playfieldProxy);
               loop2:
               while(§§pop() < §§pop().aquiredPlayFieldSize.width)
               {
                  §§push(0);
                  if(!(_loc6_ && Boolean(_loc2_)))
                  {
                     _loc3_ = §§pop();
                     if(_loc5_ || Boolean(param1))
                     {
                        loop3:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc6_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(this._playfieldProxy);
                              if(!_loc5_)
                              {
                                 break;
                              }
                              if(§§pop() >= §§pop().aquiredPlayFieldSize.height)
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop0;
                                 }
                              }
                              else
                              {
                                 _loc4_ = new Cuboid(_loc2_,_loc3_,1,1,1);
                                 if(_loc5_)
                                 {
                                    if(this._playfieldObjects.isFree(_loc4_))
                                    {
                                       if(!(_loc5_ || Boolean(param1)))
                                       {
                                          continue loop3;
                                       }
                                       addr008c:
                                       sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_CREATE_GROUND,{
                                          "id":49,
                                          "x":_loc2_,
                                          "y":_loc3_
                                       });
                                       if(!(_loc5_ || Boolean(_loc2_)))
                                       {
                                          continue loop3;
                                       }
                                    }
                                    _loc3_++;
                                    continue loop3;
                                 }
                                 §§goto(addr008c);
                              }
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                     _loc2_++;
                     if(!(_loc5_ || Boolean(param1)))
                     {
                        break;
                     }
                     continue loop0;
                  }
                  §§goto(addr00c7);
               }
               break;
            }
            break;
         }
      }
      
      private function handlePermissionCategoryChange(param1:IndexChangeEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this.setPermissionCategory(param1.newIndex);
         }
      }
      
      private function initializePermissionCategories() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.settingsBar);
            if(!_loc2_)
            {
               §§pop().categoryList.dataProvider = new ArrayList(["ALL",ServerTagConstants.RESIDENTIAL,ServerTagConstants.SHOP,ServerTagConstants.POWERPLANT,ServerTagConstants.PRODUCTION,ServerTagConstants.DECORATION,ServerTagConstants.STREET,ServerTagConstants.SPECIAL]);
               if(_loc1_)
               {
                  §§push(this.settingsBar);
                  if(!(_loc2_ && _loc1_))
                  {
                     addr007d:
                     §§pop().categoryList.selectedIndex = 1;
                     if(!(_loc2_ && _loc1_))
                     {
                        addr0096:
                        this.settingsBar.permissionsCountInput.text = "1";
                        addr0092:
                     }
                     §§goto(addr009e);
                  }
                  §§goto(addr0096);
               }
               addr009e:
               return;
            }
            §§goto(addr007d);
         }
         §§goto(addr0092);
      }
      
      private function setPermissionCategory(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc5_:ConfigTagDTO = null;
         var _loc6_:ArrayList = null;
         var _loc7_:ConfigPlayfieldItemPermissionDTO = null;
         var _loc8_:Vector.<ConfigPlayfieldItemDTO> = null;
         var _loc9_:ConfigPlayfieldItemDTO = null;
         var _loc2_:String = this.settingsBar.categoryList.dataProvider.getItemAt(param1) as String;
         var _loc3_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc4_:int = -1;
         for each(_loc5_ in _loc3_.config.tags)
         {
            if(_loc5_.tagName == _loc2_)
            {
               if(!(_loc12_ && Boolean(_loc3_)))
               {
                  _loc4_ = _loc5_.tagId;
               }
               break;
            }
         }
         _loc6_ = new ArrayList();
         if(_loc13_ || Boolean(_loc2_))
         {
            var _loc10_:int = 0;
            if(_loc13_ || Boolean(_loc2_))
            {
               for each(_loc7_ in _loc3_.config.permissions)
               {
                  _loc8_ = _loc3_.getConfigPlayfieldItemsByPermissionId(_loc7_.id);
                  if(_loc8_.length > 0)
                  {
                     if(_loc13_ || Boolean(param1))
                     {
                        _loc9_ = _loc8_[0];
                        if(!_loc12_)
                        {
                           §§push(_loc4_ == -1);
                           if(!(_loc12_ && Boolean(_loc2_)))
                           {
                              §§push(!§§pop());
                              if(!(_loc12_ && Boolean(this)))
                              {
                                 addr0151:
                                 var _temp_10:* = §§pop();
                                 §§push(_temp_10);
                                 if(_temp_10)
                                 {
                                    if(!(_loc12_ && Boolean(this)))
                                    {
                                       §§pop();
                                       if(!(_loc13_ || Boolean(_loc2_)))
                                       {
                                          continue;
                                       }
                                       addr0173:
                                       §§push(_loc9_.tagIds.indexOf(_loc4_) == -1);
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 if(_loc12_)
                                 {
                                 }
                              }
                              else
                              {
                                 _loc6_.addItem({
                                    "name":ResourceManager.getInstance().getString(String("rcl.playfielditems.name"),String("rcl.playfielditems.name." + _loc9_.localeId)),
                                    "perm":_loc7_
                                 });
                              }
                              continue;
                           }
                           §§goto(addr0151);
                        }
                        §§goto(addr0173);
                     }
                  }
                  else
                  {
                     if(_loc4_ != -1)
                     {
                        continue;
                     }
                     if(_loc12_ && Boolean(_loc3_))
                     {
                        continue;
                     }
                  }
                  _loc6_.addItem({
                     "name":_loc7_.id + "_NO_CONFIG_PLAYFIELDITEMDTO",
                     "perm":_loc7_
                  });
               }
            }
            if(!_loc12_)
            {
               _loc6_.source.sortOn(["name"]);
               if(!_loc12_)
               {
                  §§push(this.settingsBar);
                  if(_loc13_)
                  {
                     §§pop().permissionsList.dataProvider = _loc6_;
                     if(_loc13_ || Boolean(param1))
                     {
                        addr0240:
                        if(_loc6_.length > 0)
                        {
                           if(!(_loc12_ && Boolean(_loc2_)))
                           {
                              addr025c:
                              this.settingsBar.permissionsList.selectedItem = _loc6_.getItemAt(0);
                              addr0258:
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr025c);
               }
               §§goto(addr0258);
            }
         }
         §§goto(addr0240);
      }
      
      private function handleShowUpsellMediumLayer(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            sendNotification(MiniLayerConstants.OPEN_MINI_CINEMA_REWARDS_LAYER);
         }
      }
      
      private function handleTownhallHarvest(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TEST,["townhall"]);
         }
      }
      
      private function handleIfiScreen(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:* = null;
         var _loc3_:Object = new Object();
         if(_loc6_)
         {
            _loc3_.quest = false;
         }
         var _loc4_:* = param1.currentTarget;
         if(_loc6_)
         {
            §§push(this.settingsBar);
            if(_loc6_ || Boolean(param1))
            {
               if(§§pop().screen1 === _loc4_)
               {
                  if(!_loc5_)
                  {
                     §§push(0);
                     if(_loc5_)
                     {
                     }
                  }
                  else
                  {
                     addr0493:
                     §§push(7);
                     if(_loc5_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(this.settingsBar);
                  if(_loc6_)
                  {
                     if(§§pop().screen2 === _loc4_)
                     {
                        if(_loc6_)
                        {
                           addr0365:
                           §§push(1);
                           if(_loc5_)
                           {
                           }
                        }
                        else
                        {
                           addr04ed:
                           §§push(9);
                           if(_loc5_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(this.settingsBar);
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           addr0383:
                           if(§§pop().screen3 === _loc4_)
                           {
                              if(!(_loc5_ && Boolean(this)))
                              {
                                 §§push(2);
                                 if(_loc6_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr03cf:
                                 §§push(3);
                                 if(_loc5_ && Boolean(_loc2_))
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(this.settingsBar);
                              if(_loc6_ || Boolean(_loc2_))
                              {
                                 if(§§pop().screen4 === _loc4_)
                                 {
                                    if(_loc6_ || Boolean(_loc3_))
                                    {
                                       §§goto(addr03cf);
                                    }
                                    else
                                    {
                                       addr051a:
                                       §§push(10);
                                       if(_loc6_ || Boolean(_loc3_))
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(this.settingsBar);
                                    if(!(_loc5_ && Boolean(this)))
                                    {
                                       addr03f5:
                                       if(§§pop().screen5 === _loc4_)
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(4);
                                             if(_loc5_ && Boolean(param1))
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr0431:
                                             §§push(5);
                                             if(_loc5_ && Boolean(this))
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(this.settingsBar);
                                          if(_loc6_)
                                          {
                                             addr0422:
                                             if(§§pop().screen6 === _loc4_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr0431);
                                                }
                                                else
                                                {
                                                   §§goto(addr0493);
                                                }
                                             }
                                             else
                                             {
                                                §§push(this.settingsBar);
                                                if(!(_loc5_ && Boolean(_loc3_)))
                                                {
                                                   addr0457:
                                                   if(§§pop().screen7 === _loc4_)
                                                   {
                                                      if(!(_loc5_ && Boolean(this)))
                                                      {
                                                         §§push(6);
                                                         if(_loc6_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr051a);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(this.settingsBar);
                                                      if(_loc6_)
                                                      {
                                                         addr0484:
                                                         if(§§pop().screen8 === _loc4_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               §§goto(addr0493);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr051a);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(this.settingsBar);
                                                            if(_loc6_ || Boolean(_loc2_))
                                                            {
                                                               addr04b1:
                                                               if(§§pop().screen9 === _loc4_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(8);
                                                                     if(_loc5_ && Boolean(_loc3_))
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr04ed);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.settingsBar);
                                                                  if(_loc6_)
                                                                  {
                                                                     if(§§pop().screen10 === _loc4_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§goto(addr04ed);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr051a);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this.settingsBar);
                                                                        if(_loc6_ || Boolean(_loc2_))
                                                                        {
                                                                           addr050b:
                                                                           if(§§pop().screen11 === _loc4_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§goto(addr051a);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr0548:
                                                                                 §§push(11);
                                                                                 if(_loc5_ && Boolean(_loc3_))
                                                                                 {
                                                                                 }
                                                                              }
                                                                              §§goto(addr0568);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr0532);
                                                                           }
                                                                        }
                                                                        addr0532:
                                                                        if(this.settingsBar.screen12 === _loc4_)
                                                                        {
                                                                           §§goto(addr0548);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(12);
                                                                        }
                                                                        §§goto(addr0568);
                                                                     }
                                                                     §§goto(addr0568);
                                                                  }
                                                                  §§goto(addr050b);
                                                               }
                                                               §§goto(addr0568);
                                                            }
                                                            §§goto(addr0532);
                                                         }
                                                         §§goto(addr0568);
                                                      }
                                                      §§goto(addr04b1);
                                                   }
                                                   §§goto(addr0568);
                                                }
                                                §§goto(addr0484);
                                             }
                                             §§goto(addr0568);
                                          }
                                          §§goto(addr0457);
                                       }
                                       §§goto(addr0568);
                                    }
                                    §§goto(addr0484);
                                 }
                                 §§goto(addr0568);
                              }
                              §§goto(addr0422);
                           }
                           §§goto(addr0568);
                        }
                        §§goto(addr0457);
                     }
                     §§goto(addr0568);
                  }
                  §§goto(addr0383);
               }
               addr0568:
               switch(§§pop())
               {
                  case 0:
                     §§push(ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN);
                     if(_loc6_)
                     {
                        §§push(§§pop());
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           _loc2_ = §§pop();
                           if(!(_loc5_ && Boolean(param1)))
                           {
                              _loc3_.screen = QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION;
                              if(_loc6_)
                              {
                              }
                           }
                           break;
                        }
                        addr00bf:
                        _loc2_ = §§pop();
                        if(_loc6_ || Boolean(param1))
                        {
                           _loc3_.screen = QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_KAIDEN_FRIENDS;
                           if(_loc6_ || Boolean(_loc2_))
                           {
                           }
                        }
                        break;
                     }
                     addr02eb:
                     _loc2_ = §§pop();
                     addr02ea:
                     if(_loc6_)
                     {
                        addr02f2:
                        _loc3_.feature = QuestGFXIDLayerConstants.BIG_FEATURE_SUBLEVEL;
                        if(_loc5_ && Boolean(this))
                        {
                        }
                     }
                     break;
                  case 1:
                     §§push(ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN);
                     if(_loc6_ || Boolean(param1))
                     {
                        §§push(§§pop());
                        if(_loc6_)
                        {
                           _loc2_ = §§pop();
                           if(!_loc5_)
                           {
                              _loc3_.screen = QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_KAIDEN;
                              if(!_loc5_)
                              {
                                 break;
                              }
                              addr0278:
                              _loc3_.screen = QuestGFXIDLayerConstants.CHARACTER_SARIKA_INTRODUCTION;
                              if(_loc5_)
                              {
                              }
                              break;
                           }
                           addr01ce:
                           _loc3_.feature = QuestGFXIDLayerConstants.INFRASTRUCTURE_FEATURE_SECURITY_DEVICES;
                           if(!(_loc5_ && Boolean(this)))
                           {
                              break;
                           }
                        }
                        else
                        {
                           addr022c:
                           §§push(§§pop());
                           if(!_loc5_)
                           {
                              addr0233:
                              _loc2_ = §§pop();
                              if(_loc6_)
                              {
                                 addr023a:
                                 _loc3_.screen = QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_POLICECHIEF;
                                 if(_loc5_ && Boolean(this))
                                 {
                                 }
                              }
                              break;
                           }
                           addr0262:
                           §§push(§§pop());
                           if(_loc6_ || Boolean(_loc3_))
                           {
                              addr0271:
                              _loc2_ = §§pop();
                              if(!_loc6_)
                              {
                                 break;
                              }
                              §§goto(addr0278);
                           }
                           else
                           {
                              §§goto(addr02eb);
                           }
                        }
                     }
                     else
                     {
                        addr02ac:
                        §§push(§§pop());
                        if(!_loc5_)
                        {
                           addr02b3:
                           _loc2_ = §§pop();
                           if(_loc6_ || Boolean(_loc2_))
                           {
                              _loc3_.feature = QuestGFXIDLayerConstants.BIG_FEATURE_PRODUCTION_POINTS;
                              if(_loc5_)
                              {
                              }
                              break;
                           }
                        }
                        else
                        {
                           §§goto(addr02ea);
                        }
                     }
                     §§goto(addr02f2);
                  case 2:
                     §§push(ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN);
                     if(_loc6_ || Boolean(_loc3_))
                     {
                        §§push(§§pop());
                        if(!_loc6_)
                        {
                           addr014b:
                           _loc2_ = §§pop();
                           if(_loc6_)
                           {
                              _loc3_.feature = QuestGFXIDLayerConstants.INFRASTRUCTURE_FEATURE_SECURITY_GRADES;
                              if(_loc5_ && Boolean(_loc3_))
                              {
                              }
                           }
                           break;
                        }
                        §§goto(addr00bf);
                     }
                     else
                     {
                        §§goto(addr02b3);
                     }
                     break;
                  case 3:
                     §§push(ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN);
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        §§push(§§pop());
                        if(!(_loc5_ && Boolean(param1)))
                        {
                           _loc2_ = §§pop();
                           if(_loc6_ || Boolean(this))
                           {
                              _loc3_.screen = QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_EDUCATION;
                              if(!_loc5_)
                              {
                                 break;
                              }
                           }
                        }
                        else
                        {
                           §§goto(addr0233);
                        }
                        §§goto(addr023a);
                     }
                     else
                     {
                        §§goto(addr014b);
                     }
                  case 4:
                     §§push(ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN);
                     if(!(_loc5_ && Boolean(_loc3_)))
                     {
                        §§push(§§pop());
                        if(!_loc5_)
                        {
                           §§goto(addr014b);
                        }
                        else
                        {
                           §§goto(addr0271);
                        }
                     }
                     else
                     {
                        addr01f6:
                        §§push(§§pop());
                        if(!_loc5_)
                        {
                           _loc2_ = §§pop();
                           if(_loc6_)
                           {
                              _loc3_.screen = QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_POLICE;
                              if(_loc6_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§goto(addr023a);
                           }
                        }
                        else
                        {
                           §§goto(addr02b3);
                        }
                        §§goto(addr02f2);
                     }
                     break;
                  case 5:
                     §§push(ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN);
                     if(_loc6_ || Boolean(this))
                     {
                        §§push(§§pop());
                        if(_loc6_)
                        {
                           _loc2_ = §§pop();
                           if(_loc6_ || Boolean(_loc2_))
                           {
                              _loc3_.feature = QuestGFXIDLayerConstants.INFRASTRUCTURE_FEATURE_SUCCESS_CHANCE;
                              if(_loc5_)
                              {
                              }
                           }
                           break;
                        }
                        §§goto(addr0233);
                     }
                     else
                     {
                        §§goto(addr01f6);
                     }
                     §§goto(addr023a);
                  case 6:
                     §§push(ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN);
                     if(_loc6_ || Boolean(this))
                     {
                        §§push(§§pop());
                        if(!_loc5_)
                        {
                           _loc2_ = §§pop();
                           if(!_loc6_)
                           {
                              break;
                           }
                           §§goto(addr01ce);
                        }
                        else
                        {
                           §§goto(addr0262);
                        }
                        §§goto(addr02f2);
                     }
                     else
                     {
                        §§goto(addr0233);
                     }
                  case 7:
                     §§push(ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN);
                     if(_loc6_)
                     {
                        §§goto(addr01f6);
                     }
                     else
                     {
                        §§goto(addr0233);
                     }
                  case 8:
                     §§push(ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN);
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        §§goto(addr022c);
                     }
                     else
                     {
                        §§goto(addr02b3);
                     }
                  case 9:
                     §§push(ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN);
                     if(!_loc5_)
                     {
                        §§goto(addr0262);
                     }
                     else
                     {
                        §§goto(addr02ac);
                     }
                  case 10:
                     §§push(ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN);
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        §§goto(addr02ac);
                     }
                     §§goto(addr02ea);
                  case 11:
                     §§push(ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN);
                     if(!(_loc5_ && Boolean(param1)))
                     {
                        §§goto(addr02ea);
                     }
                     §§goto(addr02eb);
               }
               sendNotification(_loc2_,_loc3_);
               return;
            }
            §§goto(addr03f5);
         }
         §§goto(addr0365);
      }
      
      private function handleShutdown(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TEST,["shutdown"]);
         }
      }
      
      private function handleTraceProfButton(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         var _loc3_:ProfessionalDTO = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:ProfessionalAttributeDTO = null;
         var _loc2_:ProfessionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
         for each(_loc3_ in _loc2_.allAvailableProfessionals)
         {
            if(_loc14_ && Boolean(param1))
            {
               continue;
            }
            §§push(_loc3_.gender);
            if(_loc13_ || Boolean(param1))
            {
               if(§§pop())
               {
                  if(_loc13_ || Boolean(this))
                  {
                     §§push("male");
                     if(_loc13_ || Boolean(param1))
                     {
                     }
                     addr00a5:
                     §§push(§§pop());
                     if(!(_loc14_ && Boolean(_loc2_)))
                     {
                        _loc4_ = §§pop();
                        if(!_loc14_)
                        {
                           §§push(ResourceManager.getInstance());
                           if(!_loc14_)
                           {
                              §§push("rcl.professions.nameconvention");
                              if(!(_loc14_ && Boolean(_loc2_)))
                              {
                                 §§push("");
                                 if(_loc13_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc14_)
                                    {
                                       §§push("rcl.professions.nameconvention.fistnamelastname");
                                       if(_loc13_)
                                       {
                                          §§push("");
                                          if(!(_loc14_ && Boolean(this)))
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!_loc14_)
                                             {
                                                §§push(§§pop().getString(§§pop(),§§pop()));
                                                if(_loc13_ || Boolean(_loc2_))
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc14_)
                                                   {
                                                      _loc5_ = §§pop();
                                                      if(_loc13_)
                                                      {
                                                         §§push(ResourceManager.getInstance());
                                                         if(_loc13_)
                                                         {
                                                            addr0144:
                                                            §§push("rcl.professions.firstnames.");
                                                            if(!_loc14_)
                                                            {
                                                               addr014d:
                                                               §§push(_loc4_);
                                                               if(_loc13_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc13_ || Boolean(param1))
                                                                  {
                                                                     addr0164:
                                                                     §§push("rcl.professions.firstnames.");
                                                                     if(_loc13_)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(_loc13_ || Boolean(_loc2_))
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc13_)
                                                                           {
                                                                              addr0184:
                                                                              §§push(".");
                                                                              if(!_loc14_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    addr0194:
                                                                                    §§push(_loc3_.name);
                                                                                    if(!(_loc14_ && Boolean(_loc2_)))
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc13_ || Boolean(_loc3_))
                                                                                       {
                                                                                          addr01b5:
                                                                                          §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                          if(!(_loc14_ && Boolean(_loc3_)))
                                                                                          {
                                                                                             addr01c7:
                                                                                             §§push(§§pop());
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                addr01ce:
                                                                                                _loc6_ = §§pop();
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   addr01e8:
                                                                                                   addr01dc:
                                                                                                   addr01d6:
                                                                                                   §§push(ResourceManager.getInstance());
                                                                                                   §§push("rcl.professions.surnames.");
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      addr01e7:
                                                                                                      addr01e5:
                                                                                                      §§push(§§pop() + _loc4_);
                                                                                                   }
                                                                                                   §§push("rcl.professions.surnames.");
                                                                                                   if(_loc13_ || Boolean(_loc2_))
                                                                                                   {
                                                                                                      addr01f9:
                                                                                                      addr01fb:
                                                                                                      §§push(§§pop() + _loc4_);
                                                                                                      if(!(_loc14_ && Boolean(this)))
                                                                                                      {
                                                                                                         addr020a:
                                                                                                         addr020d:
                                                                                                         §§push(§§pop() + ".");
                                                                                                         if(_loc13_ || Boolean(_loc2_))
                                                                                                         {
                                                                                                            addr0220:
                                                                                                            addr021c:
                                                                                                            §§push(§§pop() + _loc3_.surname);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      addr022b:
                                                                                                      §§push(§§pop());
                                                                                                   }
                                                                                                   _loc7_ = §§pop();
                                                                                                   if(_loc14_ && Boolean(_loc2_))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                }
                                                                                                addr024b:
                                                                                                var _loc11_:int = 0;
                                                                                                addr0249:
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   for each(_loc8_ in _loc3_.attributes)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr022b);
                                                                                          }
                                                                                          §§goto(addr01ce);
                                                                                       }
                                                                                       §§goto(addr020a);
                                                                                    }
                                                                                    §§goto(addr0220);
                                                                                 }
                                                                                 §§goto(addr01f9);
                                                                              }
                                                                              §§goto(addr020d);
                                                                           }
                                                                           §§goto(addr021c);
                                                                        }
                                                                        §§goto(addr01fb);
                                                                     }
                                                                     §§goto(addr0194);
                                                                  }
                                                                  §§goto(addr01e8);
                                                               }
                                                               §§goto(addr01e7);
                                                            }
                                                            §§goto(addr01e5);
                                                         }
                                                         §§goto(addr01dc);
                                                      }
                                                      §§goto(addr01d6);
                                                   }
                                                   §§goto(addr01ce);
                                                }
                                                §§goto(addr01c7);
                                             }
                                             §§goto(addr01b5);
                                          }
                                          §§goto(addr020d);
                                       }
                                       §§goto(addr0184);
                                    }
                                    §§goto(addr0164);
                                 }
                                 §§goto(addr020a);
                              }
                              §§goto(addr014d);
                           }
                           §§goto(addr0144);
                        }
                        §§goto(addr01d6);
                     }
                     §§goto(addr01c7);
                  }
                  §§goto(addr0249);
               }
               else
               {
                  §§push("female");
               }
               §§goto(addr00a5);
            }
            §§goto(addr024b);
         }
      }
      
      private function handleUpdateData(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TEST,["login"]);
         }
      }
      
      private function handleGetEmergency(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TEST,["emergency",this.settingsBar.emergencyInput.text]);
         }
      }
      
      private function kaxtest(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            sendNotification(ApplicationNotificationConstants.KAX_TEST,true);
         }
      }
      
      private function handleRemoveStreets(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc4_:IObject3D = null;
         var _loc5_:IPlaneObject = null;
         var _loc2_:int = 0;
         if(!(_loc8_ && Boolean(this)))
         {
            this.enableSpawnProxy(false);
            if(_loc9_)
            {
               sendNotification(ApplicationNotificationConstants.REMOVE_ALL_URBIES);
            }
         }
         var _loc3_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         if(_loc9_)
         {
            _loc3_.pathwalkManager.terrain.map.setAllTilesUnusable();
         }
         for each(_loc4_ in this._playfieldObjects.objectList)
         {
            if(!(_loc4_ is IPlaneObject))
            {
               continue;
            }
            _loc5_ = _loc4_ as IPlaneObject;
            §§push(Boolean(_loc5_));
            if(!(_loc8_ && Boolean(_loc2_)))
            {
               var _temp_6:* = §§pop();
               §§push(_temp_6);
               if(_temp_6)
               {
                  if(_loc9_ || Boolean(this))
                  {
                     addr00d6:
                     §§pop();
                     if(!_loc9_)
                     {
                        continue;
                     }
                     §§push(_loc5_.objectVo);
                     if(_loc9_)
                     {
                        addr00ef:
                        if(!Boolean(§§pop().configPlayfieldItemVo.destroyable))
                        {
                           continue;
                        }
                        if(_loc9_)
                        {
                           addr00fe:
                           (_loc5_.objectVo as IFloaterObjectVo).informationFloaterPhase = (_loc5_.objectVo as PlaneObjectVo).getDestructionPhase();
                           if(_loc9_ || Boolean(this))
                           {
                              addr0120:
                              _loc2_++;
                              if(!_loc9_)
                              {
                                 continue;
                              }
                           }
                           TweenMax.delayedCall(_loc2_ / 10,sendNotification,[ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_DESTROY_GROUND,_loc5_]);
                           continue;
                        }
                        §§goto(addr0120);
                     }
                     §§goto(addr00fe);
                  }
               }
               §§goto(addr00ef);
            }
            §§goto(addr00d6);
         }
         if(!(_loc8_ && Boolean(_loc2_)))
         {
            TweenMax.delayedCall(_loc2_ / 10,this.enableSpawnProxy,[true]);
         }
      }
      
      private function enableSpawnProxy(param1:Boolean) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:SpawnProxy = facade.retrieveProxy(SpawnProxy.NAME) as SpawnProxy;
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.enabled = param1;
         }
      }
      
      private function handleShowID(param1:MouseEvent) : void
      {
      }
      
      private function handleTutTest(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            (facade.retrieveProxy(QuestProxy.NAME) as QuestProxy).reset(QuestSystemTypeConstants.TUTORIAL);
            if(!(_loc2_ && _loc3_))
            {
               addr0049:
               facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TEST,["tutorial",this.settingsBar.textinput.text]);
            }
            return;
         }
         §§goto(addr0049);
      }
      
      private function handleEventTest(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            (facade.retrieveProxy(QuestProxy.NAME) as QuestProxy).reset(QuestSystemTypeConstants.EVENT);
            if(!_loc2_)
            {
               facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TEST,["event",this.settingsBar.textinput.text]);
            }
         }
      }
      
      private function handleKeyboardDown(param1:KeyboardEvent) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:uint = param1.keyCode;
         var _loc3_:uint = 77;
         var _loc4_:uint = 70;
         if(!_loc6_)
         {
            §§push(param1.ctrlKey);
            if(!(_loc6_ && Boolean(this)))
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               §§push(_temp_2);
               if(!(_loc6_ && Boolean(this)))
               {
                  if(§§pop())
                  {
                     if(_loc5_ || Boolean(param1))
                     {
                        §§pop();
                        if(_loc5_ || Boolean(param1))
                        {
                           §§push(_loc2_);
                           if(!(_loc6_ && Boolean(this)))
                           {
                              §§push(_loc3_);
                              if(_loc5_ || Boolean(this))
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc5_ || Boolean(this))
                                 {
                                    addr00a6:
                                    if(§§pop())
                                    {
                                       if(!(_loc6_ && Boolean(_loc2_)))
                                       {
                                          addr00b8:
                                          this.settingsBar.visible = !this.settingsBar.visible;
                                          if(_loc6_)
                                          {
                                             addr0153:
                                             facade.sendNotification(ApplicationNotificationConstants.FLYTO_POPUP_TOGGLE_COMMAND);
                                          }
                                       }
                                       else
                                       {
                                          addr0145:
                                          addr0149:
                                          addr0148:
                                          addr0146:
                                          if(_loc2_ == _loc4_)
                                          {
                                             if(_loc5_)
                                             {
                                                §§goto(addr0153);
                                             }
                                          }
                                       }
                                       §§goto(addr015e);
                                    }
                                    else
                                    {
                                       §§push(param1.ctrlKey);
                                       if(_loc5_ || Boolean(param1))
                                       {
                                          var _temp_11:* = §§pop();
                                          §§push(_temp_11);
                                          §§push(_temp_11);
                                          if(_loc5_ || Boolean(_loc2_))
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   addr00fc:
                                                   §§pop();
                                                   if(!(_loc6_ && Boolean(param1)))
                                                   {
                                                      §§push(param1.altKey);
                                                      if(!(_loc6_ && Boolean(_loc2_)))
                                                      {
                                                         addr012b:
                                                         var _temp_15:* = §§pop();
                                                         addr012c:
                                                         §§push(_temp_15);
                                                         if(_temp_15)
                                                         {
                                                            if(!(_loc6_ && Boolean(_loc3_)))
                                                            {
                                                               addr013e:
                                                               §§pop();
                                                               if(!_loc6_)
                                                               {
                                                                  §§goto(addr0145);
                                                               }
                                                               §§goto(addr0153);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr0149);
                                                   }
                                                   §§goto(addr0153);
                                                }
                                                §§goto(addr0149);
                                             }
                                             §§goto(addr012b);
                                          }
                                          §§goto(addr012c);
                                       }
                                       §§goto(addr00fc);
                                    }
                                 }
                                 §§goto(addr013e);
                              }
                              §§goto(addr0148);
                           }
                           §§goto(addr0146);
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr0149);
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr012c);
            }
            §§goto(addr013e);
         }
         addr015e:
      }
      
      private function enableFullLog(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:ServerCommunicationProxy = facade.retrieveProxy(ServerCommunicationProxy.NAME) as ServerCommunicationProxy;
         if(_loc3_)
         {
            _loc2_.fulllog = true;
         }
      }
      
      public function get settingsBar() : SettingsBarView
      {
         return viewComponent as SettingsBarView;
      }
      
      public function kill() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            this.settingsBar.visible = false;
         }
      }
      
      private function getBoulder(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TEST,["boulders"]);
         }
      }
      
      private function playfieldChangeRequestHandler(param1:IndexChangeEvent) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc5_:PlayfieldLightVo = null;
         var _loc6_:PlayfieldProxy = null;
         var _loc2_:Boolean = false;
         var _loc3_:Number = param1.newIndex + 1;
         var _loc4_:CityProxy = facade.retrieveProxy(CityProxy.NAME) as CityProxy;
         for each(_loc5_ in _loc4_.city.playfields)
         {
            if(_loc5_.configId == _loc3_)
            {
               if(_loc10_ || Boolean(_loc3_))
               {
                  _loc2_ = true;
               }
               break;
            }
         }
         if(_loc10_)
         {
            if(_loc2_)
            {
               if(!_loc9_)
               {
                  _loc6_ = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
                  §§push(_loc6_ == null);
                  if(_loc10_ || Boolean(_loc3_))
                  {
                     var _temp_6:* = §§pop();
                     §§push(_temp_6);
                     if(!_temp_6)
                     {
                        if(!(_loc9_ && Boolean(this)))
                        {
                           §§pop();
                           if(_loc10_ || _loc2_)
                           {
                              addr00ed:
                              if(_loc6_.playfieldDTO == null)
                              {
                                 if(_loc10_ || Boolean(_loc3_))
                                 {
                                    facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_LOAD,_loc3_);
                                    if(_loc9_ && _loc2_)
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_SWITCH_PLAYFIELD,_loc3_);
                              }
                           }
                           §§goto(addr015e);
                        }
                     }
                  }
                  §§goto(addr00ed);
               }
               else
               {
                  addr0159:
                  param1.stopPropagation();
               }
            }
            else
            {
               sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TEST,["createNewPlayfield",_loc3_]);
               if(!(_loc9_ && Boolean(param1)))
               {
                  §§goto(addr0159);
               }
            }
            addr015e:
            return;
         }
         §§goto(addr0159);
      }
   }
}

