package net.bigpoint.cityrama.controller.field
{
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerFeatureConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.vo.BridgeFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.PlayfieldSwitchFieldObjectVo;
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class CreateClientFieldObjectsCommand extends SimpleCommand
   {
      
      private var playfieldProxy:PlayfieldProxy;
      
      private var questProxy:QuestProxy;
      
      private var featureProxy:FeatureProxy;
      
      public function CreateClientFieldObjectsCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param1))
         {
            this.playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
            if(_loc3_ || Boolean(this))
            {
               this.questProxy = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
               if(!_loc4_)
               {
                  addr0059:
                  this.featureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
               }
               addr00be:
               var _loc2_:* = this.playfieldProxy.config.id;
               if(!(_loc4_ && Boolean(param1)))
               {
                  §§push(HorizionSettingsVo.CITY_PLAYFIELD_ID);
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     §§push(_loc2_);
                     if(_loc3_ || _loc3_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!_loc4_)
                           {
                              addr010f:
                              §§push(0);
                              if(_loc3_ || _loc3_)
                              {
                              }
                           }
                           else
                           {
                              addr0190:
                              §§push(2);
                              if(_loc3_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(HorizionSettingsVo.COASTAL_PLAYFIELD_ID);
                           if(!(_loc4_ && Boolean(_loc2_)))
                           {
                              §§push(_loc2_);
                              if(_loc3_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc3_ || Boolean(param1))
                                    {
                                       §§push(1);
                                       if(_loc4_ && Boolean(param1))
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr01a6:
                                       §§push(3);
                                       if(_loc4_)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(HorizionSettingsVo.SUBURBAN_PLAYFIELD_ID);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr0175:
                                       §§push(_loc2_);
                                       if(_loc3_)
                                       {
                                          addr0186:
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                §§goto(addr0190);
                                             }
                                             else
                                             {
                                                §§goto(addr01a6);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr01a2);
                                          }
                                          §§goto(addr01a6);
                                       }
                                       addr01a2:
                                       §§goto(addr01a1);
                                    }
                                    addr01a1:
                                    if(HorizionSettingsVo.MOUNTAIN_PLAYFIELD_ID === _loc2_)
                                    {
                                       §§goto(addr01a6);
                                    }
                                    else
                                    {
                                       §§push(4);
                                    }
                                 }
                                 §§goto(addr01be);
                              }
                              §§goto(addr01a2);
                           }
                           §§goto(addr0175);
                        }
                        addr01be:
                        switch(§§pop())
                        {
                           case 0:
                              this.addBuildingsForCity();
                              if(_loc3_)
                              {
                              }
                              break;
                           case 1:
                              this.addBuildingsForCoastal();
                              if(_loc4_ && Boolean(_loc2_))
                              {
                              }
                              break;
                           case 2:
                              this.addBuildingsForSuburban();
                              if(_loc3_)
                              {
                              }
                              break;
                           case 3:
                              this.addBuildingsForMountain();
                              if(_loc3_)
                              {
                              }
                        }
                        return;
                     }
                     §§goto(addr0186);
                  }
                  §§goto(addr01a1);
               }
               §§goto(addr010f);
            }
            §§goto(addr0059);
         }
         §§goto(addr00be);
      }
      
      private function addBuildingsForCity() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:BridgeFieldObjectVo = new BridgeFieldObjectVo();
         if(!_loc4_)
         {
            _loc1_.currentPlayfieldId = HorizionSettingsVo.CITY_PLAYFIELD_ID;
            if(_loc5_ || Boolean(this))
            {
               _loc1_.targetPlayfieldId = HorizionSettingsVo.COASTAL_PLAYFIELD_ID;
               if(_loc5_)
               {
                  _loc1_.matrixCoordinates = new Rectangle(26,44,1,1);
                  if(_loc5_ || _loc3_)
                  {
                     addr006f:
                     _loc1_.questIdentifier = "1960";
                     if(!_loc4_)
                     {
                        _loc1_.enabledFeatureType = ServerFeatureConstants.COASTAL_PLAYFIELD_SWITCH;
                        if(_loc5_)
                        {
                           _loc1_.state = ConfigFactory.setPlayfieldSwitchFieldObjectVoState(_loc1_);
                           if(_loc5_)
                           {
                              addr009e:
                              sendNotification(ApplicationNotificationConstants.PLAYFIELD_ADD_ITEM,_loc1_);
                           }
                           §§goto(addr00a9);
                        }
                     }
                     §§goto(addr009e);
                  }
                  §§goto(addr00a9);
               }
               §§goto(addr009e);
            }
            §§goto(addr006f);
         }
         addr00a9:
         var _loc2_:PlayfieldSwitchFieldObjectVo = new PlayfieldSwitchFieldObjectVo();
         if(!(_loc4_ && Boolean(this)))
         {
            _loc2_.currentPlayfieldId = HorizionSettingsVo.CITY_PLAYFIELD_ID;
            if(_loc5_)
            {
               _loc2_.targetPlayfieldId = HorizionSettingsVo.SUBURBAN_PLAYFIELD_ID;
               if(_loc5_ || _loc3_)
               {
                  _loc2_.matrixCoordinates = new Rectangle(58,23,1,1);
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     _loc2_.questIdentifier = "2121";
                     if(_loc5_ || _loc3_)
                     {
                        §§goto(addr012d);
                     }
                     §§goto(addr013d);
                  }
                  addr012d:
                  _loc2_.enabledFeatureType = ServerFeatureConstants.SUBURBAN_PLAYFIELD_SWITCH;
                  if(!_loc4_)
                  {
                     addr013d:
                     _loc2_.state = ConfigFactory.setPlayfieldSwitchFieldObjectVoState(_loc2_);
                     if(_loc5_)
                     {
                        addr014f:
                        sendNotification(ApplicationNotificationConstants.PLAYFIELD_ADD_ITEM,_loc2_);
                     }
                  }
                  §§goto(addr015a);
               }
            }
            §§goto(addr014f);
         }
         addr015a:
         var _loc3_:PlayfieldSwitchFieldObjectVo = new PlayfieldSwitchFieldObjectVo();
         if(_loc5_)
         {
            _loc3_.currentPlayfieldId = HorizionSettingsVo.CITY_PLAYFIELD_ID;
            if(!_loc4_)
            {
               _loc3_.targetPlayfieldId = HorizionSettingsVo.MOUNTAIN_PLAYFIELD_ID;
               if(_loc5_ || Boolean(_loc1_))
               {
                  _loc3_.matrixCoordinates = new Rectangle(28,2,1,1);
                  if(!_loc4_)
                  {
                     _loc3_.questIdentifier = "2128";
                     if(_loc5_ || Boolean(this))
                     {
                        addr01d0:
                        _loc3_.enabledFeatureType = ServerFeatureConstants.MOUNTAIN_PLAYFIELD_SWITCH;
                        if(_loc5_)
                        {
                           _loc3_.state = ConfigFactory.setPlayfieldSwitchFieldObjectVoState(_loc3_);
                           if(!(_loc4_ && Boolean(_loc1_)))
                           {
                              addr01fa:
                              sendNotification(ApplicationNotificationConstants.PLAYFIELD_ADD_ITEM,_loc3_);
                           }
                           §§goto(addr0205);
                        }
                        §§goto(addr01fa);
                     }
                     §§goto(addr0205);
                  }
                  §§goto(addr01d0);
               }
               §§goto(addr0205);
            }
            §§goto(addr01d0);
         }
         addr0205:
      }
      
      private function addBuildingsForCoastal() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BridgeFieldObjectVo = new BridgeFieldObjectVo();
         if(!_loc2_)
         {
            _loc1_.currentPlayfieldId = HorizionSettingsVo.COASTAL_PLAYFIELD_ID;
            if(!_loc2_)
            {
               _loc1_.targetPlayfieldId = HorizionSettingsVo.CITY_PLAYFIELD_ID;
               if(_loc3_)
               {
                  _loc1_.matrixCoordinates = new Rectangle(4,1,1,1);
                  if(_loc3_)
                  {
                     _loc1_.state = ConfigFactory.setPlayfieldSwitchFieldObjectVoState(_loc1_);
                     if(!_loc2_)
                     {
                        sendNotification(ApplicationNotificationConstants.PLAYFIELD_ADD_ITEM,_loc1_);
                     }
                  }
               }
            }
         }
      }
      
      private function addBuildingsForSuburban() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PlayfieldSwitchFieldObjectVo = new PlayfieldSwitchFieldObjectVo();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.currentPlayfieldId = HorizionSettingsVo.SUBURBAN_PLAYFIELD_ID;
            if(_loc3_)
            {
               addr0046:
               _loc1_.targetPlayfieldId = HorizionSettingsVo.CITY_PLAYFIELD_ID;
               if(!_loc2_)
               {
                  _loc1_.matrixCoordinates = new Rectangle(0,18,1,1);
                  if(_loc3_)
                  {
                     _loc1_.state = ConfigFactory.setPlayfieldSwitchFieldObjectVoState(_loc1_);
                     if(_loc3_)
                     {
                        addr008a:
                        sendNotification(ApplicationNotificationConstants.PLAYFIELD_ADD_ITEM,_loc1_);
                     }
                     return;
                  }
               }
            }
            §§goto(addr008a);
         }
         §§goto(addr0046);
      }
      
      private function addBuildingsForMountain() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PlayfieldSwitchFieldObjectVo = new PlayfieldSwitchFieldObjectVo();
         if(!_loc2_)
         {
            _loc1_.currentPlayfieldId = HorizionSettingsVo.MOUNTAIN_PLAYFIELD_ID;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.targetPlayfieldId = HorizionSettingsVo.CITY_PLAYFIELD_ID;
               if(!_loc2_)
               {
                  _loc1_.matrixCoordinates = new Rectangle(36,31,1,1);
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.state = ConfigFactory.setPlayfieldSwitchFieldObjectVoState(_loc1_);
                     if(_loc3_)
                     {
                        addr0091:
                        sendNotification(ApplicationNotificationConstants.PLAYFIELD_ADD_ITEM,_loc1_);
                     }
                     §§goto(addr009c);
                  }
               }
               §§goto(addr0091);
            }
            addr009c:
            return;
         }
         §§goto(addr0091);
      }
   }
}

