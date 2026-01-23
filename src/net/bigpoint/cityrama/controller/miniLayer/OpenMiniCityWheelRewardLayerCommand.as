package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.featuredEvent.FeaturedEventProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.CityWheelRewardLayerVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.CityWheelRewardMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.CityWheelRewardMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenMiniCityWheelRewardLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenMiniCityWheelRewardLayerCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:PopupSettingsVo = null;
         var _loc2_:FeaturedEventProxy = facade.retrieveProxy(FeaturedEventProxy.NAME) as FeaturedEventProxy;
         var _loc3_:CityWheelRewardLayerVo = _loc2_.cityWheelRewardLayerVo;
         if(_loc6_)
         {
            if(_loc3_)
            {
               addr0042:
               var _temp_2:* = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
               _loc4_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
               _loc4_.modal = true;
               if(!_loc5_)
               {
                  _loc4_.viewClass = CityWheelRewardMiniLayer;
                  if(_loc6_ || Boolean(_loc2_))
                  {
                     addr007d:
                     _loc4_.mediatorClass = CityWheelRewardMiniLayerMediator;
                     if(_loc6_ || Boolean(param1))
                     {
                        _loc4_.mediatorName = CityWheelRewardMiniLayerMediator.NAME;
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           _loc4_.data = _loc3_;
                           if(!_loc5_)
                           {
                              addr00c4:
                              facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc4_);
                           }
                           §§goto(addr00d0);
                        }
                     }
                  }
                  §§goto(addr00c4);
               }
               §§goto(addr007d);
            }
            addr00d0:
            return;
         }
         §§goto(addr0042);
      }
   }
}

