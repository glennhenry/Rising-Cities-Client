package net.bigpoint.cityrama.controller.cityTreasury
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.cityTreasury.CityTreasuryMediator;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenCityTreasuryCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenCityTreasuryCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc4_:CityTreasuryMediator = null;
         var _loc5_:PopupSettingsVo = null;
         var _loc2_:Object = param1.getBody() as Object;
         if(_loc6_ || Boolean(this))
         {
            if(!_loc2_)
            {
               addr003c:
               _loc2_ = new Object();
            }
            var _loc3_:CityTreasuryProxy = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
            if(_loc6_ || Boolean(this))
            {
               _loc3_.isUpsellRunning();
               if(_loc6_)
               {
                  §§goto(addr007b);
               }
               §§goto(addr008a);
            }
            addr007b:
            if(facade.hasMediator(CityTreasuryMediator.NAME))
            {
               addr008a:
               _loc4_ = facade.retrieveMediator(CityTreasuryMediator.NAME) as CityTreasuryMediator;
               _loc4_.updateData(_loc2_);
            }
            else
            {
               _loc5_ = new PopupSettingsVo(PopupSettingsVo.FEATURE_POPUP);
               _loc5_.modal = true;
               if(!(_loc7_ && Boolean(_loc3_)))
               {
                  _loc5_.viewClass = CityTreasuryLayer;
                  if(!(_loc7_ && Boolean(param1)))
                  {
                     _loc5_.mediatorClass = CityTreasuryMediator;
                     if(!_loc7_)
                     {
                        §§goto(addr00f8);
                     }
                     §§goto(addr0108);
                  }
                  §§goto(addr0113);
               }
               addr00f8:
               _loc5_.mediatorName = CityTreasuryMediator.NAME;
               if(_loc6_)
               {
                  addr0108:
                  _loc5_.data = _loc2_;
                  if(!_loc7_)
                  {
                     addr0113:
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc5_);
                  }
               }
               §§goto(addr011f);
            }
            addr011f:
            return;
         }
         §§goto(addr003c);
      }
   }
}

