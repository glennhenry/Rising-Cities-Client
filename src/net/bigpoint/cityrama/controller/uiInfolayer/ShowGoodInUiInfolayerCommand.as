package net.bigpoint.cityrama.controller.uiInfolayer
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigUserLevelDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.GoodUiInfolayerContentVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowGoodInUiInfolayerCommand extends SimpleCommand
   {
      
      public function ShowGoodInUiInfolayerCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc15_:Boolean = true;
         var _loc16_:* = §§pop();
         var _loc9_:ConfigPlayfieldItemDTO = null;
         var _loc10_:ConfigPlayfieldItemDTO = null;
         var _loc11_:* = false;
         var _loc12_:PlayerResourceProxy = null;
         var _loc2_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc3_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         var _loc4_:Number = Number(param1.getBody().cid);
         var _loc5_:Point = Point(param1.getBody().pt);
         var _loc6_:uint = uint(param1.getBody().lineId);
         var _loc7_:ConfigGoodDTO = ConfigGoodDTO(param1.getBody().cpidto);
         if(!_loc7_)
         {
            _loc7_ = _loc2_.config.goods[_loc4_];
         }
         var _loc8_:GoodUiInfolayerContentVo = new GoodUiInfolayerContentVo(_loc6_,_loc5_,_loc7_,_loc3_.currentRunningEventQuestLocaleId);
         var _loc13_:int = 0;
         var _loc14_:* = ConfigFactory.getProducerOfGood(_loc7_.id);
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc14_,_loc13_));
            if(!_loc15_)
            {
               break;
            }
            if(§§pop())
            {
               _loc9_ = §§nextvalue(_loc13_,_loc14_);
               if(_loc15_ || Boolean(this))
               {
                  if(_loc8_.productionBuildingLocaleIds.indexOf(_loc9_.localeId) != -1)
                  {
                     continue;
                  }
                  if(!(_loc15_ || Boolean(_loc3_)))
                  {
                     continue;
                  }
               }
               _loc8_.productionBuildingLocaleIds.push(_loc9_.localeId);
               continue;
            }
            if(_loc15_)
            {
               if(_loc15_ || Boolean(_loc2_))
               {
                  if(!_loc16_)
                  {
                     _loc13_ = 0;
                     if(_loc15_)
                     {
                        addr015a:
                        _loc14_ = ConfigFactory.getConsumerOfGood(_loc7_.id);
                        while(true)
                        {
                           §§push(§§hasnext(_loc14_,_loc13_));
                           break loop0;
                        }
                        addr01b3:
                        addr01ac:
                     }
                     if(_loc15_)
                     {
                        §§push(Boolean(param1.getBody().showLocked));
                        if(!(_loc16_ && Boolean(param1)))
                        {
                           _loc11_ = §§pop();
                           §§push(_loc11_);
                        }
                        if(§§pop())
                        {
                           if(!(_loc16_ && Boolean(param1)))
                           {
                              addr01e9:
                              _loc12_ = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                              if(_loc15_ || Boolean(param1))
                              {
                                 if(ConfigUserLevelDTO(_loc2_.config.levels[_loc7_.levelId]).level > _loc12_.userLevel)
                                 {
                                    if(!(_loc16_ && Boolean(_loc3_)))
                                    {
                                       _loc8_.locked = true;
                                    }
                                 }
                              }
                              addr024e:
                              sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc8_,param1.getType());
                           }
                           return;
                        }
                        §§goto(addr024e);
                     }
                  }
                  §§goto(addr01e9);
               }
               §§goto(addr015a);
            }
            §§goto(addr01b3);
         }
         while(§§pop())
         {
            _loc10_ = §§nextvalue(_loc13_,_loc14_);
            if(_loc15_)
            {
               if(_loc8_.consumerBuildingLocaleIds.indexOf(_loc10_.localeId) == -1)
               {
                  if(!(_loc16_ && Boolean(param1)))
                  {
                     _loc8_.consumerBuildingLocaleIds.push(_loc10_.localeId);
                  }
               }
            }
            §§goto(addr01ac);
         }
         §§goto(addr01b3);
      }
   }
}

