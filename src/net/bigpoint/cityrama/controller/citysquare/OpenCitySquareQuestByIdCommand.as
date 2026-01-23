package net.bigpoint.cityrama.controller.citysquare
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.detailViews.EventLayerProxy;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.events.vo.EventQuestVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.citysquare.CitySquareEventPopupMediator;
   import net.bigpoint.cityrama.view.citysquare.CitySquarePopupMediator;
   import net.bigpoint.cityrama.view.citysquare.ui.components.CitySquareEventPopup;
   import net.bigpoint.cityrama.view.citysquare.ui.components.CitySquarePopup;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenCitySquareQuestByIdCommand extends SimpleCommand
   {
      
      public function OpenCitySquareQuestByIdCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:Number = param1.getBody() as Number;
         var _loc3_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         var _loc4_:EventQuestVo = _loc3_.eventById(_loc2_);
         if(_loc4_ == null)
         {
            if(!(_loc5_ && Boolean(_loc2_)))
            {
               §§push(§§findproperty(RamaCityError));
               §§push(this + " ups event not found.. ");
               if(!(_loc5_ && Boolean(this)))
               {
                  §§push(§§pop() + _loc2_);
               }
               throw new §§pop().RamaCityError(§§pop());
            }
            addr00a8:
            this.openRunningEventView();
            if(_loc6_ || Boolean(this))
            {
            }
         }
         else if(_loc4_.currentState == QuestSystemStateConst.VALID)
         {
            if(!(_loc5_ && Boolean(param1)))
            {
               §§goto(addr00a8);
            }
         }
         else
         {
            this.openAvailableEvent(_loc2_);
         }
      }
      
      private function openAvailableEvent(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            _loc2_.modal = true;
            if(_loc5_)
            {
               _loc2_.viewClass = CitySquarePopup;
               if(!(_loc4_ && Boolean(param1)))
               {
                  addr005c:
                  _loc2_.mediatorClass = CitySquarePopupMediator;
                  if(_loc5_ || Boolean(this))
                  {
                     addr0071:
                     _loc2_.mediatorName = CitySquarePopupMediator.NAME;
                  }
                  var _loc3_:EventLayerProxy = facade.retrieveProxy(EventLayerProxy.NAME) as EventLayerProxy;
                  if(!_loc4_)
                  {
                     _loc2_.data = _loc3_.getCitySquareDetailViewVoById(param1);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        addr00b7:
                        facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
                     }
                     return;
                  }
                  §§goto(addr00b7);
               }
               §§goto(addr0071);
            }
            §§goto(addr005c);
         }
         §§goto(addr0071);
      }
      
      private function openRunningEventView() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         if(!(_loc4_ && Boolean(this)))
         {
            _loc1_.modal = true;
            if(!(_loc4_ && _loc3_))
            {
               addr004e:
               _loc1_.viewClass = CitySquareEventPopup;
               if(_loc3_)
               {
                  _loc1_.mediatorClass = CitySquareEventPopupMediator;
                  if(_loc3_)
                  {
                     addr0066:
                     _loc1_.mediatorName = CitySquareEventPopupMediator.NAME;
                  }
                  var _loc2_:EventLayerProxy = facade.retrieveProxy(EventLayerProxy.NAME) as EventLayerProxy;
                  if(!_loc4_)
                  {
                     _loc1_.data = _loc2_.getCitySquareDetailViewVo(true);
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr00a9:
                        facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc1_);
                     }
                     return;
                  }
                  §§goto(addr00a9);
               }
            }
            §§goto(addr0066);
         }
         §§goto(addr004e);
      }
   }
}

