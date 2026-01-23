package net.bigpoint.cityrama.controller.quest
{
   import net.bigpoint.cityrama.constants.*;
   import net.bigpoint.cityrama.model.ServerBalanceParameterConstants;
   import net.bigpoint.cityrama.model.detailViews.EventLayerProxy;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.events.vo.EventQuestVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.citysquare.CitySquareEventFailPopupMediator;
   import net.bigpoint.cityrama.view.citysquare.CitySquareEventPopupMediator;
   import net.bigpoint.cityrama.view.citysquare.ui.components.CitySquareEventFailPopup;
   import net.bigpoint.cityrama.view.citysquare.ui.components.CitySquareEventPopup;
   import net.bigpoint.cityrama.view.miniLayer.CitySquareFailureMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.CitySquareRewardMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.CitySquareRewardMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class CitySquareClickedCommand extends SimpleCommand implements ICommand
   {
      
      public function CitySquareClickedCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         if(_loc5_)
         {
            §§push(_loc2_.runningEventQuest == null);
            if(_loc5_ || Boolean(param1))
            {
               §§push(!§§pop());
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(_loc5_ || Boolean(this))
                     {
                        addr0062:
                        §§pop();
                        if(!_loc4_)
                        {
                           §§goto(addr006f);
                        }
                        §§goto(addr00a3);
                     }
                  }
                  §§goto(addr006f);
               }
               §§goto(addr0062);
            }
            addr006f:
            if(_loc2_.finishedEventQuest == null)
            {
               if(_loc5_ || Boolean(param1))
               {
                  this.openCitySquareEventView();
                  if(_loc4_ && Boolean(_loc2_))
                  {
                     §§goto(addr00a4);
                  }
               }
               §§goto(addr00a3);
            }
            addr00a4:
            var _loc3_:EventQuestVo = _loc2_.expiredEventQuest;
            if(_loc5_ || Boolean(param1))
            {
               if(_loc3_ != null)
               {
                  if(!(_loc4_ && Boolean(_loc3_)))
                  {
                     this.openCitySquareEventFailView(_loc3_);
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        return;
                     }
                  }
                  else
                  {
                     addr00ea:
                     if(_loc2_.finishedEventQuest != null)
                     {
                        if(_loc5_ || Boolean(_loc2_))
                        {
                           this.openCitySquareRewardEventView();
                           if(!(_loc5_ || Boolean(param1)))
                           {
                              §§goto(addr0130);
                           }
                        }
                        §§goto(addr0121);
                     }
                  }
                  addr0130:
                  this.openCitySquareSelectionView();
                  return;
               }
               §§goto(addr00ea);
            }
            addr0121:
            return;
         }
         addr00a3:
      }
      
      private function openCitySquareRewardEventView() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.modal = true;
            if(!_loc2_)
            {
               addr0037:
               _loc1_.viewClass = CitySquareRewardMiniLayer;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.mediatorClass = CitySquareRewardMiniLayerMediator;
                  if(_loc3_ || _loc2_)
                  {
                     addr006c:
                     _loc1_.mediatorName = CitySquareRewardMiniLayerMediator.NAME;
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.data = EventLayerProxy(facade.retrieveProxy(EventLayerProxy.NAME)).getCitySquareDetailViewVo(false,true);
                        if(_loc3_)
                        {
                           facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc1_);
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr006c);
         }
         §§goto(addr0037);
      }
      
      private function openCitySquareExpiredEventView() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         if(_loc3_ || Boolean(this))
         {
            _loc1_.modal = true;
            if(!_loc2_)
            {
               §§goto(addr0038);
            }
            §§goto(addr0059);
         }
         addr0038:
         _loc1_.viewClass = CitySquareRewardMiniLayer;
         if(_loc3_ || _loc3_)
         {
            addr0059:
            _loc1_.mediatorClass = CitySquareFailureMiniLayerMediator;
            if(_loc3_)
            {
               _loc1_.mediatorName = CitySquareFailureMiniLayerMediator.NAME;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.data = EventLayerProxy(facade.retrieveProxy(EventLayerProxy.NAME)).getCitySquareDetailViewVo(false,false,true);
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr00af:
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc1_);
                  }
                  §§goto(addr00ba);
               }
            }
            §§goto(addr00af);
         }
         addr00ba:
      }
      
      private function openCitySquareSelectionView() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.OPEN_CITYSQUARE_EVENT_SELECTION);
         }
      }
      
      private function openCitySquareEventView() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.modal = true;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.viewClass = CitySquareEventPopup;
               if(_loc4_ || _loc3_)
               {
                  §§goto(addr0063);
               }
               §§goto(addr0077);
            }
            addr0063:
            _loc1_.mediatorClass = CitySquareEventPopupMediator;
            if(!(_loc3_ && Boolean(this)))
            {
               addr0077:
               _loc1_.mediatorName = CitySquareEventPopupMediator.NAME;
            }
            var _loc2_:EventLayerProxy = facade.retrieveProxy(EventLayerProxy.NAME) as EventLayerProxy;
            §§goto(addr0080);
         }
         addr0080:
         if(_loc4_ || Boolean(_loc2_))
         {
            _loc1_.data = _loc2_.getCitySquareDetailViewVo(true);
            if(_loc4_)
            {
               facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc1_);
            }
         }
      }
      
      private function openCitySquareEventFailView(param1:EventQuestVo) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc5_:PopupSettingsVo = null;
         var _loc6_:EventLayerProxy = null;
         var _loc2_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc3_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         var _loc4_:Number = param1.quests[0].questDto.endTimeStamp + _loc2_.config.balanceParameters[ServerBalanceParameterConstants.UPSELLING_OVERTIME].value;
         if(_loc7_)
         {
            §§push(Boolean(param1));
            if(!(_loc8_ && Boolean(this)))
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(_temp_2)
               {
                  if(!(_loc8_ && Boolean(_loc3_)))
                  {
                     §§pop();
                     if(_loc7_)
                     {
                        §§goto(addr00ae);
                     }
                     §§goto(addr00b2);
                  }
               }
            }
            addr00ae:
            §§goto(addr00a7);
         }
         addr00a7:
         if(_loc3_.currentTimeStamp < _loc4_)
         {
            addr00b2:
            _loc5_ = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
            _loc5_.modal = true;
            if(!_loc8_)
            {
               _loc5_.viewClass = CitySquareEventFailPopup;
               if(_loc7_ || Boolean(_loc3_))
               {
                  addr00e1:
                  _loc5_.mediatorClass = CitySquareEventFailPopupMediator;
                  if(!_loc8_)
                  {
                     _loc5_.mediatorName = CitySquareEventFailPopupMediator.NAME;
                  }
               }
               _loc6_ = facade.retrieveProxy(EventLayerProxy.NAME) as EventLayerProxy;
               if(_loc7_)
               {
                  _loc5_.data = _loc6_.getCitySquareEventFailVo();
                  if(!_loc8_)
                  {
                     §§goto(addr0131);
                  }
                  §§goto(addr0148);
               }
               addr0131:
               if(_loc5_.data != null)
               {
                  if(!(_loc8_ && Boolean(param1)))
                  {
                     addr0148:
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc5_);
                  }
               }
               §§goto(addr0154);
            }
            §§goto(addr00e1);
         }
         addr0154:
      }
   }
}

