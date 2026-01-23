package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.detailViews.vo.CitySquareDetailViewVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.CitysquareDepositMinilayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.CitysquareDepositMinilayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenCitysquareDepositMinilayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenCitysquareDepositMinilayerCommand()
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
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:CitySquareDetailViewVo = CitySquareDetailViewVo(param1.getBody());
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         if(_loc4_)
         {
            _loc3_.modal = true;
            if(_loc4_)
            {
               _loc3_.viewClass = CitysquareDepositMinilayer;
               if(_loc4_ || Boolean(_loc3_))
               {
                  §§goto(addr0060);
               }
               §§goto(addr0084);
            }
            §§goto(addr009b);
         }
         addr0060:
         _loc3_.mediatorClass = CitysquareDepositMinilayerMediator;
         if(_loc4_ || Boolean(param1))
         {
            addr0084:
            _loc3_.mediatorName = CitysquareDepositMinilayerMediator.NAME;
            if(_loc4_ || Boolean(_loc3_))
            {
               addr009b:
               _loc3_.data = _loc2_;
               if(_loc4_)
               {
                  addr00a5:
                  facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
               }
               §§goto(addr00b0);
            }
            §§goto(addr00a5);
         }
         addr00b0:
      }
   }
}

